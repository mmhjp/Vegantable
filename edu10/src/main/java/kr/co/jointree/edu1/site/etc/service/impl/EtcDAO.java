package kr.co.jointree.edu1.site.etc.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.validation.annotation.Validated;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import kr.co.jointree.edu1.site.etc.service.EtcService;

@Validated
@Repository("EtcDAO")
public class EtcDAO extends EgovComAbstractDAO {

	EtcService etcservice;
	
	//목록 정보 갯수
	int getSample1Count(Map<String, Object> paramMap){
		return selectCount("EtcDAO.getSample1Count", paramMap);
	}
	
    //목록 정보 조회
    List<Map<String, Object>> getSample1List(Map<String, Object> paramMap){
        return selectList("EtcDAO.getSample1List", paramMap);
    }

    //단건 정보 조회
    Map<String, Object> getSample1Info(Map<String, Object> paramMap){
        return selectOne("EtcDAO.getSample1Info", paramMap);
    }
    
    //정보 등록
    int setEtcInsert(Map<String, Object> paramMap) {
    	return insert("EtcDAO.setEtcInsert", paramMap);
    }
    
    //정보 수정
    int setSample1Update(Map<String, Object> paramMap) {
    	return update("EtcDAO.setSample1Update", paramMap);
    }
    
    //정보 삭제
    int setSample1Delete(Map<String, Object> paramMap) {
    	return update("EtcDAO.setSample1Delete", paramMap);
    }

    //아이디 중복확인
	int idCheck(String id) {
		return selectOne("EtcDAO.idCheck",id);
	}
    
	 //로그인
    Map<String, Object> memberLogin(Map<String, Object> paramMap){
        return selectOne("EtcDAO.memberLogin", paramMap);
    }
}
