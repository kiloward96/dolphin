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
	
	// insert, update

	@Override
	public int insert(Product dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public int update(Product dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int insertOption(Product dto) throws Exception {
		return dao.insertOption(dto);
	}

	@Override
	public int updateOption(Product dto) throws Exception {
		return dao.updateOption(dto);
	}
	
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
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy(j == 0 ? 1 : 0);
				dto.setSort(maxNumber + i + 1);
				dto.setPseq(dto.getPDseq());

				dao.insertUploaded(dto);
    		}
		}
	}
	

}
