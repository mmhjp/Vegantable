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
public class EtcController {

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
	@GetMapping(value = { "/join/join.do" })
	public String siteList(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("join");

		return "/site/join/join.site";
	}

	/**
	 * 회원가입완료페이지 이동 @param request @param model @return @throws
	 */
	@PostMapping(value = { "/etc/regist.do" }) 
	public String siteView(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {

		log.debug("regist");
		etcService.setEtcInsert(paramMap);
		return "redirect:/main.do";
	}

	/**
	 * 등록/수정 화면
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@GetMapping(value = { "/etc/form.do" })
	public String siteForm(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("siteForm");

		return "/site/etc/form.site";
	}

	/**
	 * 등록/수정 하기
	 * 
	 * @param request
	 * @param model
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@PostMapping(value = { "/etc/form-save.do" })
	public String siteFormSave(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap,
			List<MultipartFile> fileData) throws IllegalStateException, IOException {
		log.debug("siteForm");
		log.debug("paramMap : {}", paramMap);

		return "redirect:/etc/list.do";
	}

	/**
	 * 삭제 하기
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@PostMapping(value = { "/etc/form-delete.do" })
	public String siteFormDelete(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("siteForm");
		log.debug("paramMap : {}", paramMap);

		return "redirect:/etc/list.do";
	}

	// 아이디 중복체크
	@PostMapping({ "/join/idCheck.do" })
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {

		int cnt = etcService.idCheck(id);
		return cnt;

	}

	// 메인이동
	@GetMapping(value = { "/goMain.do" })
	public String goMain(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("goMain");

		return "redirect:/main.do";
	}

	// 로그인화면 이동
	@GetMapping(value = { "/login/login.do" })
	public String loginSite(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("loginSite");

		return "/site/login/login.site";
	}

	// 로그인

	 @PostMapping(value = {"/login/goLogin.do"})
	    public String goLogin(
	    		HttpServletRequest request
	    		,Model model
	    		,@RequestParam Map<String, Object> paramMap,
	    		HttpSession session
	    	   ) {
	    	 
	        log.debug("siteLogin");
	        request.getSession();
	        Map<String, Object> memberLogin = etcService.memberLogin(paramMap);
	        
	        String id = (String) memberLogin.get("id");
	        String nick = (String) memberLogin.get("nick");
	        
	        System.err.println("id" + id);
	        System.err.println("nick" + nick);
	        session.setAttribute("id", id);      
	        session.setAttribute("nick", nick);
	        
	        
	        return "redirect:/main.do";
	    }
	//로그아웃 
	@RequestMapping("/etc/logout.do")
	public String logout(HttpSession session) {
		log.debug("logout");
		session.invalidate();
		return "redirect:/main.do";
	}
	
	//아이디 찾기 이동
	@GetMapping(value = { "/login/idfind.do" })
	public String idfindSite(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
		log.debug("idfindSite");

		return "/site/login/idfind.site";
	}
	
	//비밀번호 찾기 이동
		@GetMapping(value = { "/login/pwfind.do" })
		public String pwfindSite(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
			log.debug("pwfindSite");

			return "/site/login/pwfind.site";
		}
	
	//비밀번호 재설정 이동
	@GetMapping(value = { "/login/pwreset.do" })
	public String pwresetSite(HttpServletRequest request, Model model, @RequestParam Map<String, Object> paramMap) {
	log.debug("pwresetSite");
	return "/site/login/pwreset.site";
	}	
}
