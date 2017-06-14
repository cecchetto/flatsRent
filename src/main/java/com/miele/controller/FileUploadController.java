package com.miele.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.miele.dao.InfoFlatDao;
import com.miele.model.FotoFlatBean;
import com.miele.model.InfoFlatBean;
import com.miele.utility.UplodedFile;

@Controller
public class FileUploadController {
	
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-context.xml");
	UplodedFile ufile = new UplodedFile();
	InfoFlatDao infoFlatDao = context.getBean(InfoFlatDao.class);
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public ModelAndView handleFileUpload(MultipartHttpServletRequest request, HttpServletResponse response,HttpSession session) throws InterruptedException{

		String path = System.getProperty("archivio");
		List<MultipartFile>fotosFLat = request.getMultiFileMap().get("fotoFlat");
		//1. get the files from the request object
		Iterator<MultipartFile> itr =  fotosFLat.iterator();
		Set<FotoFlatBean>fotosFlatBean = new HashSet<FotoFlatBean>();
		
		InfoFlatBean infoFlatBean = (InfoFlatBean) session.getAttribute("infoFlatBean");
		infoFlatBean.setDataInserimento(infoFlatBean.getDataInserimento());
		infoFlatBean.setDataModifica(infoFlatBean.getDataInserimento());
		int idFlat = infoFlatDao.save(infoFlatBean);
		
		int i = 0;
		while(itr.hasNext())
		{
			FotoFlatBean fotoFlatBean = new FotoFlatBean();
			MultipartFile foto = itr.next();
			File file = convert(foto);
			String name = idFlat+"-"+i+".jpg";
			file.renameTo(new File(path+"/"+name));
			fotoFlatBean.setInfoFlat(infoFlatBean);
			fotoFlatBean.setPathFoto(name);
			fotosFlatBean.add(fotoFlatBean);
			i++;
		}
		infoFlatBean.setFoto(fotosFlatBean);
		infoFlatBean.setId(idFlat);
		infoFlatDao.update(infoFlatBean);
		
		session.removeAttribute("infoFlatBean");
		
		ModelAndView mv = new ModelAndView("insertAd");
		mv.addObject("disabilitaSfoglia", "false");
		mv.addObject("insResult", "true");
		
		return mv;
	}
	
	@RequestMapping(value="/uploadModify", method=RequestMethod.POST)
	public ModelAndView handleFileUploadModify(MultipartHttpServletRequest request, HttpServletResponse response,HttpSession session) throws InterruptedException{

		String path = System.getProperty("archivio");
		List<MultipartFile>fotosFLat = request.getMultiFileMap().get("fotoFlat");
		String actionFoto = request.getParameter("actionFoto");
		//1. get the files from the request object
		Iterator<MultipartFile> itr =  fotosFLat.iterator();
		Set<FotoFlatBean>fotosFlatBean = new HashSet<FotoFlatBean>();
		
		if(actionFoto.equals("A"))
		{
			InfoFlatBean infoFlatBean = (InfoFlatBean) session.getAttribute("infoFlatBean");
			fotosFlatBean = infoFlatBean.getFoto();
			int i = infoFlatBean.getFoto().size();
			while(itr.hasNext())
			{
				FotoFlatBean fotoFlatBean = new FotoFlatBean();
				MultipartFile foto = itr.next();
				File file = convert(foto);
				String nomeFile = infoFlatBean.getId()+"-"+i;
				file.renameTo(new File(path+"/"+nomeFile));
				fotoFlatBean.setInfoFlat(infoFlatBean);
				fotoFlatBean.setPathFoto(file.getName());
				fotosFlatBean.add(fotoFlatBean);
				i++;
			}
			infoFlatBean.setFoto(fotosFlatBean);
			infoFlatBean.setDataModifica(new Date());
			infoFlatDao.update(infoFlatBean);
			
		}
		else if(actionFoto.equals("D"))
		{
			InfoFlatBean infoFlatBean = (InfoFlatBean) session.getAttribute("infoFlatBean");
			//fotosFlatBean = infoFlatBean.getFoto();
			int i = 0;
			while(itr.hasNext())
			{
				FotoFlatBean fotoFlatBean = new FotoFlatBean();
				MultipartFile foto = itr.next();
				File file = convert(foto);
				String nomeFile = infoFlatBean.getId()+"-"+i;
				file.renameTo(new File(path+"/"+nomeFile));
				fotoFlatBean.setInfoFlat(infoFlatBean);
				fotoFlatBean.setPathFoto(file.getName());
				fotosFlatBean.add(fotoFlatBean);
				i++;
			}
			infoFlatBean.setFoto(fotosFlatBean);
			infoFlatBean.setDataModifica(new Date());
			infoFlatDao.update(infoFlatBean);
		}
		else
		{
			InfoFlatBean infoFlatBean = (InfoFlatBean) session.getAttribute("infoFlatBean");
			infoFlatBean.setDataModifica(new Date());
			infoFlatDao.update(infoFlatBean);
		}
		
		session.removeAttribute("infoFlatBean");
		ModelAndView mv = new ModelAndView("modifyAd");
		mv.addObject("insResult", "true");
		return mv;
	}
	
	private File convert(MultipartFile file)
	{    
		File convFile = new File(file.getOriginalFilename());
		try {
			convFile.createNewFile();
			FileOutputStream fos = new FileOutputStream(convFile); 
			fos.write(file.getBytes());
			fos.close(); 
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return convFile;
	}
}