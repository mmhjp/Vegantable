package kr.co.jointree.edu1.site.main.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.com.cmm.paging.PagingAccess;
import kr.co.jointree.edu1.site.main.service.SiteMainService;

@Controller
public class SiteMainController {

    public static Logger log = LoggerFactory.getLogger(SiteMainController.class);

    @Autowired
    SiteMainService siteMainService;
    
    @Autowired
    PagingAccess pagingAccess;
    
    @GetMapping(value = {"/"})
    public String siteIndex(
            HttpServletRequest request
            ,Model model
    ) {
        log.debug("siteMain");

        return "redirect:/main.do";
    }
    
    @GetMapping(value = {"/main.do"})
    public String siteMain(
    		HttpServletRequest request
    		,Model model
    		,@RequestParam Map<String, Object> paramMap
    ) {
        log.debug("siteMain");
        
        return "/site/main/main.site";
    }

}
