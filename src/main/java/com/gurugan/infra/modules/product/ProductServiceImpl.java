package com.gurugan.infra.modules.product;


import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gurugan.infra.common.constants.Constants;
import com.gurugan.infra.common.util.UtilDateTime;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;
	
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception {

		System.out.println(" dto.getUploadImgMaxNumber() : " + dto.getUploadImgMaxNumber());
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				System.out.println(i + ": multipartFiles[i].getOriginalFilename() : " + multipartFiles[i].getOriginalFilename());
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String product =dto.getPDseq() + "_" + dto.getPDcategory();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String osPath;
				// String path = "D:\\factory\\ws_sts_4151\\dolphin\\src\\main\\webapp\\resources\\uploaded" + "\\" + pathModule + "\\" + pathDate + "\\" + product + "\\";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/" + product + "/";
				
				String os = System.getProperty("os.name").toLowerCase();
				
				if (os.contains("win")) {
					osPath = Constants.UPLOAD_PATH_PREFIX_WINDOW;
				}
				else {
					osPath = Constants.UPLOAD_PATH_PREFIX_LINUX;
				}
				String path = osPath + "/" + pathModule + "/" + pathDate + "/" + product + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass 
				}
				
				System.out.println(uploadPath);
				System.out.println(path);
				System.out.println(path + uuidFileName);
				try {
					multipartFiles[i].transferTo(new File(path + uuidFileName));
				} catch(IllegalStateException e) {
					e.printStackTrace();
				}
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//.				dto.setDefaultNy(j == 0 ? 1 : 0);
				dto.setSort(maxNumber + i + 1);
				dto.setPseq(dto.getPDseq());

				dao.insertUploaded(dto);
    		}
		}
	}
	
	
	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Product dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
            boolean result = file.delete();
            
            if(result) {
            	dto.setSeq(deleteSeq[i]);
            	dto.setTableName(tableName);
            	dao.deleteUploaded(dto);
            }
		}
	}
	
	
	@Override
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Product dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
//			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
//			boolean result = file.delete();
			
//			if(result) {
				dto.setSeq(deleteSeq[i]);
				dto.setTableName(tableName);
				dao.ueleteUploaded(dto);
//			}
		}
	}
	
	// select
	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Product selectOne(ProductVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Product> selectProductOption(ProductVo vo) throws Exception {
		return dao.selectProductOption(vo);
	}
	
	@Override
	public List<Product> selectListUploaded(ProductVo vo) throws Exception {
		return dao.selectListUploaded(vo);
	}
	
	
	// insert, update



	@Override
	public int insert(Product dto) throws Exception {
		dao.insert(dto);
		dao.insertOption(dto);
		uploadFiles(dto.getUploadImg(), dto, "productUploaded", 2, dto.getUploadImgMaxNumber());
		return 1;
	}

	@Override
	public int update(Product dto) throws Exception {
		ueleteFiles(dto.getUploadImgDeleteSeq(), dto.getUploadImgDeletePathFile(), dto, "productUploaded");
		uploadFiles(dto.getUploadImg(), dto, "productUploaded", 2, dto.getUploadImgMaxNumber());
		dao.update(dto);
		dao.updateOption(dto);
		return 1;
	}
	

}
