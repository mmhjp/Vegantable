package kr.co.jointree.edu1.site.etc.service.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import egovframework.com.cmm.util.FileUtil;
import kr.co.jointree.edu1.site.etc.service.EtcService;


@Service("EtcService")
public class EtcServiceImpl implements EtcService {

    public static Logger log = LoggerFactory.getLogger(EtcServiceImpl.class);

    @Autowired
    private EtcDAO etcDAO;

    /**
     * 목록 정보 갯수
     * @param paramMap
     * @return
     */
    public int getSample1Count(Map<String, Object> paramMap){
  		int selectData = etcDAO.getSample1Count(paramMap);
  		return selectData;
  	}
    
    /**
     * 목록 정보 조회
     * @return
     */
    public List<Map<String, Object>> getSample1List(Map<String, Object> paramMap) {
        List<Map<String, Object>> selectData = etcDAO.getSample1List(paramMap);
        return selectData;
    }
    
    /**
     * 단건 정보 조회
     * @return
     */
    public Map<String, Object> getSample1Info(Map<String, Object> paramMap) {
        Map<String, Object> selectData = etcDAO.getSample1Info(paramMap);
        return selectData;
    }

    /**
     * 정보 등록
     * @return
     * @throws IOException 
     * @throws IllegalStateException 
     */
    public int setEtcInsert(Map<String, Object> paramMap){
        
    	int selectData = etcDAO.setEtcInsert(paramMap);
    	
        return selectData;
    }

    /**
     * 정보 수정
     * @return
     */
    public int setSample1Update(Map<String, Object> paramMap){
    	
    	int selectData = etcDAO.setSample1Update(paramMap);
    	
        return selectData;
    }
    
    /**
     * 정보 삭제
     * @return
     */
    public int setSample1Delete(Map<String, Object> paramMap) {
    	int selectData = etcDAO.setSample1Delete(paramMap);
        return selectData;
    }

	//중복 확인
	public int idCheck(String id) {
		int cnt = etcDAO.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}	

	/**
     * 로그인
     * @return
     */
    public Map<String, Object> memberLogin(Map<String, Object> paramMap) {
        Map<String, Object> selectData = etcDAO.memberLogin(paramMap);
        return selectData;
    }


    
}
