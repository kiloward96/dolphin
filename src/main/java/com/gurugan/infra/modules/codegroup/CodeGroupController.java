package com.gurugan.infra.modules.codegroup;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gurugan.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/codeGroup")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPagin(CodeGroupVo vo) throws Exception {
		vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
	}
	
	public void setSearch(CodeGroupVo vo) throws Exception {
			
			vo.setShDelYn(vo.getShDelYn() == null ? 0 : vo.getShDelYn());
			vo.setShDate(vo.getShDate() == null ? null : vo.getShDate());
			vo.setShStartDate(vo.getShStartDate() == null || vo.getShStartDate() == "" ? null : UtilDateTime.add00TimeString(vo.getShStartDate()));
			vo.setShEndDate(vo.getShEndDate() == null || vo.getShEndDate() == "" ? null : UtilDateTime.add59TimeString(vo.getShEndDate()));
	
	//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
	//		vo.setShDateStart(vo.getShDateStart() == null
	//		    ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
	//		    : UtilDateTime.add00TimeString(vo.getShDateStart()));
	//		vo.setShDateEnd(vo.getShDateEnd() == null
	//		    ? UtilDateTime.nowString()
	//		    : UtilDateTime.addNowTimeString(vo.getShDateEnd())); 
		}
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, Model model) throws Exception {
		setSearchAndPagin(vo);
		vo.setParamsPaging(service.selectOneCount(vo));
		System.out.println("controller Result: " + vo);
		
		System.out.println("sh vo value: " + vo.getShValue() + "| sh vo value2: " + vo.getShValue2());
		
		
		List<CodeGroup> list = service.selectList(vo);
		//List<CodeGroup> list = service.selectListOra(dto);
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupAjaxList")
	public String codeGroupAjaxList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		setSearchAndPagin(vo);

		return "infra/codegroup/xdmin/codeGroupAjaxList";
	}
	
	@RequestMapping(value = "codeGroupAjaxLita")
	public String codeGroupAjaxLita(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupAjaxLita";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller Result: " + result);
		
		vo.setCCGseq(dto.getCCGseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.update(dto);
		System.out.println("controller Result: " + result);
		
		vo.setCCGseq(dto.getCCGseq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupForm";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(CodeGroupVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"No", "코드 그룹 코드", "코드 그룹 이름(한글)", "코드 그룹 이름(영문)", "코드 수량", "등록일", "수정일", "삭제유무"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getCCGseq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCCGseqChar());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCCGgroupName());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCCGgroupNameEng());
	            //if(list.get(i).getIfmmGenderCd() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmGenderCd()));
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getxCCcount());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getCCGregDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCCGregDate()));
	            //cell.setCellValue(list.get(i).getIfmeEmailFull());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getCCGmodDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCCGmodDate()));
//	            cell.setCellValue(list.get(i).getIfmpNumber());    
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getCCGdelYn());
	            
	            
//	            cell = row.createCell(7);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getCCGregDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCCGregDate()));
//	            
//	            cell = row.createCell(8);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getCCGmodDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getCCGmodDate()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	
}
