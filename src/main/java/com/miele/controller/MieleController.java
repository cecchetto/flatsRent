package com.miele.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.LinkedMap;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;




import com.miele.dao.InfoFlatDao;
import com.miele.dao.LogInAdminDao;
import com.miele.dao.ProvinciaFlatDao;
import com.miele.dto.FormMailDTO;
import com.miele.dto.InfoFlatDTO;
import com.miele.dto.LogInAdminDTO;
import com.miele.model.FotoFlatBean;
import com.miele.model.InfoFlatBean;
import com.miele.model.ProvinciaFlatBean;

@Controller
public class MieleController {
	
	static Properties mailServerProperties;
	static Session getMailSession;
	static MimeMessage generateMailMessage;
	
	ApplicationContext context = 
			new ClassPathXmlApplicationContext(new String[] {"spring-context.xml"});

	LogInAdminDao logInAdminDao = (LogInAdminDao)context.getBean("logInAdminDao");
	InfoFlatDao infoFlatDao = (InfoFlatDao)context.getBean("infoFlatDao");
	ProvinciaFlatDao provinciaFlatDao = (ProvinciaFlatDao)context.getBean("provinciaFlatDao");


	private String idFlat;
	/****LOG IN ACTIONS MANAGEMENT*****/
	/*begin log in administrator action manage*/
	@RequestMapping("/preLoading")
	public ModelAndView preLoading() {

		List<InfoFlatBean> infoLastFlat = infoFlatDao.getLastThreeAds();

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("infoLastFlat", infoLastFlat);
		return mv;
	}

	@RequestMapping("/logInAdministrator")
	public ModelAndView logInAdministrator() {

		ModelAndView mv = new ModelAndView("logInAdmin");
		mv.addObject("logInDone", "false");
		return mv;
	}

	@RequestMapping("/checkLoginInAction")
	public ModelAndView checkLogInAction(@RequestParam("inputUser") String username,
			@RequestParam("inputPassword") String pwd, HttpSession session) {

		ModelAndView mv = new ModelAndView("insertAd");
		LogInAdminDTO logInDTO = new LogInAdminDTO();
		logInDTO = logInAdminDao.findByUsernameAndPwd(username, pwd); 

		if(logInDTO != null)
			mv.addObject("logInInformations", logInDTO);
		else
			mv.addObject("result","false");

		mv.addObject("disabilitaSfoglia", "false");

		session.setAttribute("inputUser",logInDTO.getUsername());
		session.setAttribute("inputPassword",logInDTO.getPwd());
		return mv;
	}
	/*end log in administrator action manage*/
	/****ADMINISTRATOR ACTIONS MANAGEMENT*****/
	/*@RequestMapping(value = "/searchSolutions")
	public ModelAndView cercaSoluzioni() throws Exception {

		ModelAndView mav = new ModelAndView("search");
		return mav;     
	}*/


	@RequestMapping("/insertAd")
	public ModelAndView insertAd(@RequestParam("catFLat") String categoria,
			@RequestParam("tipFLat") String tipologia,
			@RequestParam("provincia") String prov,
			@RequestParam("comune") String comune,
			@RequestParam("prezzoAffitto") String prezzoAffitto,
			@RequestParam("prezzoVendita") String prezzoVendita,
			@RequestParam("superficie") String superficie,
			@RequestParam("fittasi") String affitto,
			@RequestParam("vendesi") String vendesi,
			@RequestParam("locali") String numLocali,
			@RequestParam("bagni") String numBagni,
			@RequestParam("descrizioneFlat") String descrizioneFlat,
			@RequestParam("boxAuto") String boxAuto,
			@RequestParam("giardino") String giardino,
			@RequestParam("balcone") String balcone,
			@RequestParam("terrazzo") String terrazzo,
			@RequestParam("ascensore") String ascensore, HttpSession session) {

		/**SET BEAN**/
		InfoFlatBean infoFlatBean = new InfoFlatBean();
		infoFlatBean.setCategoria(categoria);
		infoFlatBean.setTipologia(tipologia);
		if(!prov.equals("Tutte"))
		{

			ProvinciaFlatBean provincia = provinciaFlatDao.findProvinciaFlatByNome(comune);
			infoFlatBean.setProvinciaFlatBean(provincia);
		}

		if(affitto.equals("true"))
			infoFlatBean.setPrezzo(Double.parseDouble(prezzoAffitto)-100.0);
		else if(vendesi.equals("true"))
			infoFlatBean.setPrezzo(Double.parseDouble(prezzoVendita));
		infoFlatBean.setSuperficie(Double.parseDouble(superficie));
		infoFlatBean.setAffittasi(Boolean.parseBoolean(affitto));
		infoFlatBean.setVendesi(Boolean.parseBoolean(vendesi));
		infoFlatBean.setLocali(Integer.parseInt(numLocali));
		infoFlatBean.setBagni(Integer.parseInt(numBagni));
		infoFlatBean.setDescrizione(descrizioneFlat);
		infoFlatBean.setBoxAuto(Boolean.parseBoolean(boxAuto));
		infoFlatBean.setGiardino(Boolean.parseBoolean(giardino));
		infoFlatBean.setBalcone(Boolean.parseBoolean(balcone));
		infoFlatBean.setTerrazzo(Boolean.parseBoolean(terrazzo));
		infoFlatBean.setAscensore(Boolean.parseBoolean(ascensore));
		infoFlatBean.setDataInserimento(new Date());
		infoFlatBean.setDataModifica(new Date());

		ModelAndView mv = new ModelAndView("insertAd");
		mv.addObject("disabilitaSfoglia", "true");

		/**put infoFlatBean into session**/
		session.setAttribute("infoFlatBean",infoFlatBean);
		return mv; 
	}

	@RequestMapping(value ="/searchProvince", method = RequestMethod.POST)
	public @ResponseBody List<ProvinciaFlatBean> getProvince(@RequestParam("idComune") String idComune) {
		int comunePK = Integer.parseInt(idComune);
		List<ProvinciaFlatBean>  province = new LinkedList<ProvinciaFlatBean>();

		province = provinciaFlatDao.getProvinceByComune(comunePK);
		return province; 
	}


	/****HOME ACTIONS MANAGEMENT*****/
	@RequestMapping("/getInfoFlat")
	public ModelAndView getInfoFlat(@RequestParam("idFlat") String idFlat) {

		int InfoFlatPK = Integer.parseInt(idFlat);
		InfoFlatBean infoFlatBean = infoFlatDao.findInfoFlatById(InfoFlatPK);
		Set<FotoFlatBean>fotoFloatBeans =  infoFlatBean.getFoto();
		ModelAndView mv = new ModelAndView("infoFlat");
		mv.addObject("infoFlatBean", infoFlatBean);
		mv.addObject("fotoFlatBeans", fotoFloatBeans);
		return mv;
	}

	@RequestMapping(value = "/modify")
	public ModelAndView modifyAd() throws Exception {

		List<InfoFlatBean> allFlats = infoFlatDao.getAllAds();

		ModelAndView mav = new ModelAndView("modify");
		mav.addObject("allFlats", allFlats);
		return mav;     
	}

	@RequestMapping(value = "/getInfoFlatByIdModify")
	public ModelAndView getInfoFlatByIdModify(@RequestParam("idFlat") String idFlat) {

		List<InfoFlatBean> allFlats = new ArrayList<InfoFlatBean>();
		int InfoFlatPK = Integer.parseInt(idFlat);
		InfoFlatBean infoFlatBean = infoFlatDao.findInfoFlatById(InfoFlatPK);
		allFlats.add(infoFlatBean);
		ModelAndView mv = new ModelAndView("modify");
		mv.addObject("allFlats", allFlats);

		return mv;
	}
	@RequestMapping(value ="/getInfoFlatModify",method = RequestMethod.POST)
	public @ResponseBody InfoFlatDTO getInfoFlatModify(@RequestParam("idFlat") String idFlat) {
		Map<String,Integer> inzializeTipologia = new HashMap<String, Integer>();
		Map<String,Integer> inzializeCategoria = new HashMap<String, Integer>();
		inzializeTipologia = inizializeMapTipologia();
		inzializeCategoria = inizializeMapCategoria();

		int InfoFlatPK = Integer.parseInt(idFlat);
		InfoFlatBean infoFlatBean = infoFlatDao.findInfoFlatById(InfoFlatPK);
		InfoFlatDTO infoFlatDTO = new InfoFlatDTO();
		infoFlatDTO.setId(infoFlatBean.getId());
		infoFlatDTO.setCategoria(infoFlatBean.getCategoria());
		infoFlatDTO.setTipologia(infoFlatBean.getTipologia());
		infoFlatDTO.setProvincia(infoFlatBean.getProvinciaFlatBean().getIdComuneFlat());
		infoFlatDTO.setComune(infoFlatBean.getProvinciaFlatBean().getNomeProvinciaFlat());
		infoFlatDTO.setPrezzo(infoFlatBean.getPrezzo());
		infoFlatDTO.setSuperficie(infoFlatBean.getSuperficie());
		infoFlatDTO.setAffittasi(infoFlatBean.getAffittasi());
		infoFlatDTO.setVendesi(infoFlatBean.getVendesi());
		infoFlatDTO.setLocali(infoFlatBean.getLocali());
		infoFlatDTO.setBagni(infoFlatBean.getBagni());
		infoFlatDTO.setBoxAuto(infoFlatBean.getBoxAuto());
		infoFlatDTO.setGiardino(infoFlatBean.getGiardino());
		infoFlatDTO.setAscensore(infoFlatBean.getAscensore());
		infoFlatDTO.setBalcone(infoFlatBean.getBalcone());
		infoFlatDTO.setTerrazzo(infoFlatBean.getTerrazzo());
		infoFlatDTO.setDescrizione(infoFlatBean.getDescrizione());

		/**FIND ALL COMUNI RELATED TO PROVINCIA**/
		List<ProvinciaFlatBean> comuni = provinciaFlatDao.findProvinciaFlatByProvinciaId(infoFlatBean.getProvinciaFlatBean().getIdComuneFlat());
		infoFlatDTO.setListaComuni(comuni);

		return infoFlatDTO;
	}

	@RequestMapping("/modifyAd")
	public ModelAndView modifyAd(@RequestParam("idFlat") String idFlat,
			@RequestParam("catFLat") String categoria,
			@RequestParam("tipFLat") String tipologia,
			@RequestParam("provincia") String prov,
			@RequestParam("comune") String comune,
			@RequestParam("prezzoAffitto") String prezzoAffitto,
			@RequestParam("prezzoVendita") String prezzoVendita,
			@RequestParam("superficie") String superficie,
			@RequestParam("fittasi") String affitto,
			@RequestParam("vendesi") String vendesi,
			@RequestParam("locali") String numLocali,
			@RequestParam("bagni") String numBagni,
			@RequestParam("descrizioneFlat") String descrizioneFlat,
			@RequestParam("boxAuto") String boxAuto,
			@RequestParam("giardino") String giardino,
			@RequestParam("balcone") String balcone,
			@RequestParam("terrazzo") String terrazzo,
			@RequestParam("ascensore") String ascensore, HttpSession session) {

		/**SET BEAN**/
		InfoFlatBean infoFlatBean = new InfoFlatBean();
		infoFlatBean.setId(Integer.parseInt(idFlat));
		infoFlatBean.setCategoria(categoria);
		infoFlatBean.setTipologia(tipologia);
		if(!prov.equals("Tutte"))
		{

			ProvinciaFlatBean provincia = provinciaFlatDao.findProvinciaFlatByNome(comune);
			infoFlatBean.setProvinciaFlatBean(provincia);
		}

		if(affitto.equals("true"))
			infoFlatBean.setPrezzo(Double.parseDouble(prezzoAffitto));
		else if(vendesi.equals("true"))
			infoFlatBean.setPrezzo(Double.parseDouble(prezzoVendita));
		infoFlatBean.setSuperficie(Double.parseDouble(superficie));
		infoFlatBean.setAffittasi(Boolean.parseBoolean(affitto));
		infoFlatBean.setVendesi(Boolean.parseBoolean(vendesi));
		infoFlatBean.setLocali(Integer.parseInt(numLocali));
		infoFlatBean.setBagni(Integer.parseInt(numBagni));
		infoFlatBean.setDescrizione(descrizioneFlat);
		infoFlatBean.setBoxAuto(Boolean.parseBoolean(boxAuto));
		infoFlatBean.setGiardino(Boolean.parseBoolean(giardino));
		infoFlatBean.setBalcone(Boolean.parseBoolean(balcone));
		infoFlatBean.setTerrazzo(Boolean.parseBoolean(terrazzo));
		infoFlatBean.setAscensore(Boolean.parseBoolean(ascensore));
		infoFlatBean.setDataModifica(new Date());
		
		ModelAndView mv = new ModelAndView("modifyAd");
		InfoFlatBean infoFlatBeanModifying = infoFlatDao.findInfoFlatById(Integer.parseInt(idFlat));
		if(infoFlatBeanModifying.getFoto().size() > 1)
		{
			infoFlatBean.setFoto(infoFlatBeanModifying.getFoto());
			mv.addObject("cancelOrAppend", "true");
		}
		/**put infoFlatBean into session**/
		session.setAttribute("infoFlatBean",infoFlatBean);
		return mv; 
	}
	
	@RequestMapping("/searchAd")
	public ModelAndView searchAd(@RequestParam("catFLat") String categoria,
			@RequestParam("tipFLat") String tipologia,
			@RequestParam("provincia") String prov,
			@RequestParam("comune") String comune,
			@RequestParam("prezzoAffitto") String prezzoAffitto,
			@RequestParam("prezzoVendita") String prezzoVendita,
			@RequestParam("superficie") String superficie,
			@RequestParam("fittasi") String affitto,
			@RequestParam("vendesi") String vendesi,
			@RequestParam("locali") String numLocali,
			@RequestParam("bagni") String numBagni,
			@RequestParam("boxAuto") String boxAuto,
			@RequestParam("giardino") String giardino,
			@RequestParam("balcone") String balcone,
			@RequestParam("terrazzo") String terrazzo,
			@RequestParam("ascensore") String ascensore, HttpSession session) {


		Map<String,Object> parValue = new HashMap<String,Object>();
		parValue.put("categoria", categoria);
		parValue.put("tipologia", tipologia);
		/**MANAGE PROVINCIA OBJECT LOGIC**/
		if(!prov.equals("0"))
		{

			ProvinciaFlatBean provincia = provinciaFlatDao.findProvinciaFlatByNome(comune);
			parValue.put("provinciaFlatBean", provincia);
		}
		/**MANAGE RANGE PREZZO LOGIC**/
		if(affitto.equals("true"))
			parValue.put("prezzo", prezzoAffitto);
		else if(vendesi.equals("true"))
			parValue.put("prezzo", prezzoVendita);
		parValue.put("superficie", Double.parseDouble(superficie));
		parValue.put("affittasi", Boolean.parseBoolean(affitto));
		parValue.put("vendesi", Boolean.parseBoolean(vendesi));
		parValue.put("locali", Integer.parseInt(numLocali));
		parValue.put("bagni", Integer.parseInt(numBagni));
		parValue.put("boxAuto", Boolean.parseBoolean(boxAuto));
		parValue.put("giardino", Boolean.parseBoolean(giardino));
		parValue.put("balcone", Boolean.parseBoolean(balcone));
		parValue.put("terrazzo", Boolean.parseBoolean(terrazzo));
		parValue.put("ascensore", Boolean.parseBoolean(ascensore));

		List<InfoFlatBean> infoFlats = infoFlatDao.search(parValue);

		ModelAndView mv = new ModelAndView("returnAds");
		mv.addObject("searchedFlat", infoFlats);


		parValue.clear();
		parValue = new HashMap<String,Object>();
		parValue.put("categoria", categoria);
		parValue.put("tipologia", tipologia);
		/**MANAGE PROVINCIA OBJECT LOGIC**/
		if(!prov.equals("0"))
		{

			ProvinciaFlatBean provincia = provinciaFlatDao.findProvinciaFlatByNome(comune);
			parValue.put("provinciaFlatBean", provincia);
		}
		/**MANAGE RANGE PREZZO LOGIC**/
		if(affitto.equals("true"))
			parValue.put("prezzo", prezzoAffitto);
		else if(vendesi.equals("true"))
			parValue.put("prezzo", prezzoVendita);
		parValue.put("affittasi", Boolean.parseBoolean(affitto));
		parValue.put("vendesi", Boolean.parseBoolean(vendesi));


		List<InfoFlatBean> interestedAtTheseFlats = infoFlatDao.searchReferingFlats(parValue);
		List<InfoFlatBean> flatsWhatchOut = new LinkedList<InfoFlatBean>();

		if(interestedAtTheseFlats.size() > 1)
		{
			for(InfoFlatBean infoFlatInt:interestedAtTheseFlats)
			{
				boolean addInterested = true;
				for(InfoFlatBean infoFlat:infoFlats)
				{
					if(infoFlatInt.getId() == infoFlat.getId())
					{
						addInterested =	false;
						break;
					}
				}
				if(addInterested)
					flatsWhatchOut.add(infoFlatInt);
			}
		}
		mv.addObject("interestedAtTheseFlats", flatsWhatchOut);

		return mv; 
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/sendMail")
	public @ResponseBody boolean sendMail(@RequestParam("inputUser") String form,@RequestParam("idFlat") String idFlat)
	{
		ObjectMapper mapper = new ObjectMapper();
		String jsonInString = form;

		//JSON from String to Object
		List<FormMailDTO>formValues = new LinkedList<FormMailDTO>();
		try {
			formValues =  Arrays.asList( mapper.readValue( jsonInString.toString(), FormMailDTO[].class ) );
					
					
					/*(List<FormMailDTO>) mapper.readValue(jsonInString, FormMailDTO.class);*/
			Iterator<FormMailDTO> valoriForm = formValues.iterator();
			Map<String,String> map = new LinkedMap();
			while(valoriForm.hasNext())
			{
				FormMailDTO formEleMail = valoriForm.next();
				map.put(formEleMail.getName(), formEleMail.getValue());
			}
			/**
			 * inputUser
			 * telefonoUser
			 * emailUser
			 * messaggi
			**/
			
			// Step1
		/*	System.out.println("\n 1st ===> setup Mail Server Properties..");
			mailServerProperties = System.getProperties();
			mailServerProperties.put("mail.smtp.port", "587");
			mailServerProperties.put("mail.smtp.auth", "true");
			mailServerProperties.put("mail.smtp.starttls.enable", "true");
			System.out.println("Mail Server Properties have been setup successfully..");
	 
			// Step2
			System.out.println("\n\n 2nd ===> get Mail Session..");
			getMailSession = Session.getDefaultInstance(mailServerProperties, null);
			generateMailMessage = new MimeMessage(getMailSession);
			generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("test1@crunchify.com"));
			generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("test2@crunchify.com"));
			generateMailMessage.setSubject("Greetings from Crunchify..");
			String emailBody = "Test email by Crunchify.com JavaMail API example. " + "<br><br> Regards, <br>Crunchify Admin";
			generateMailMessage.setContent(emailBody, "text/html");
			System.out.println("Mail Session has been created successfully..");
			System.setProperty("java.net.preferIPv4Stack" , "true");
			// Step3
			System.out.println("\n\n 3rd ===> Get Session and Send mail");
			Transport transport = getMailSession.getTransport("smtp");
	 
			// Enter your correct gmail UserID and Password
			// if you have 2FA enabled then provide App Specific Password
			transport.connect("smtp.gmail.com", "marco.rinaldi.1983@gmail.com", "cecchetto83");
			transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
			transport.close();*/
			
			
			// Recipient's email ID needs to be mentioned.
			String to = "marco.rinaldi.1983@gmail.com";

			// Sender's email ID needs to be mentioned
			String from = map.get("emailUser");

			// Assuming you are sending email from localhost
			String host = "localhost";

			// Get system properties
			Properties properties = System.getProperties();

			// Setup mail server
			properties.setProperty("mail.smtp.host", host);
			
			//properties.setProperty("mail.smtp.port", "8080");
			// Get the default Session object.
			Session session = Session.getDefaultInstance(properties);
			
			System.setProperty("java.net.preferIPv4Stack" , "true");

			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to,true));

			// Set Subject: header field
			message.setSubject("Richiesta informazione relativa annuncio n* "+idFlat);

			// Send the actual HTML message, as big as you like
			message.setContent(  "<h1>Cliente: "+map.get("inputUser") +"</h1><br>"
					+ "<h1>Email: "+map.get("emailUser") +"</h1><br> "
					+ "<h1>Telefono: "+map.get("telefonoUser") +"</h1><br>"
					+ "<h1>Messaggio: "+map.get("messaggi") +"</h1><br>", "text/html" );

			// Send message
			Transport.send(message);
		}catch (MessagingException mex) {
			System.out.print(mex.getLocalizedMessage());
			return false;
		} catch (JsonParseException e) {
			return false;
		} catch (JsonMappingException e) {
			return false;
		} catch (IOException e) {
			return false;
		}
			
		return true;

	}


	public String getIdFlat() {
		return idFlat;
	}

	public void setIdFlat(String idFlat) {
		this.idFlat = idFlat;
	}


	public Map<String,Integer> inizializeMapTipologia()
	{
		/**
		 *  <option id="0">Tutte</option>
			<option id="1">Appartamenti</option>
			<option id="2">Ville</option>
			<option id="3">Rustici/Cascine/Case</option>
			<option id="4">Box/posti auto</option>
			<option id="5">Terreno</option>
		 */
		Map<String,Integer> ritorna = new HashMap<String, Integer>();
		ritorna.put("Appartamenti", 1);
		ritorna.put("Ville", 2);
		ritorna.put("Rustici/Cascine/Case", 3);
		ritorna.put("Box/posti auto", 4);
		ritorna.put("Terreno", 5);

		return ritorna;
	}

	public Map<String,Integer> inizializeMapCategoria()
	{
		/**
		 * <option id="0">Tutte</option>
			<option id="1">Residenziale</option>
			<option id="2">Commerciale</option>
			<option id="3">Imperdibili</option>
		 */
		Map<String,Integer> ritorna = new HashMap<String, Integer>();
		ritorna.put("Residenziale", 1);
		ritorna.put("Commerciale", 2);
		ritorna.put("Imperdibili", 3);

		return ritorna;
	}
}
