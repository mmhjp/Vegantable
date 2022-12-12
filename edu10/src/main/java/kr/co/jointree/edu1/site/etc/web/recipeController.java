package kr.co.jointree.edu1.site.etc.web;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.cmm.model.JtFileDetail;
import egovframework.com.cmm.paging.PaginationInfo;
import egovframework.com.cmm.paging.PagingAccess;
import egovframework.com.cmm.service.ComCmmFileService;
import egovframework.com.cmm.util.EgovClntInfo;
import egovframework.com.cmm.util.EgovStringUtil;
import kr.co.jointree.edu1.site.etc.service.EtcService;
import kr.co.jointree.edu1.site.etc.service.impl.EtcDAO;
import kr.co.jointree.edu1.site.sample1.service.SiteSample1Service;

@Controller
public class recipeController {

	public static Logger log = LoggerFactory.getLogger(EtcController.class);

	@Autowired
	EtcService etcService;

	@Autowired
	ComCmmFileService comCmmFileService;

	@Autowired
	PagingAccess pagingAccess;

	/**
	 * 회원가입 페이지이동 
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@GetMapping(value = { "/recipe/recipe.do" })
	public String recipe(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("recipe");

		return "/site/recipe/recipe.site";
	}
	@GetMapping(value = {"/recipe/recipepoll.do" })
	public String recipepoll(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("recipepoll");

		return "/site/recipe/recipepoll.site";
	}
	
	

}