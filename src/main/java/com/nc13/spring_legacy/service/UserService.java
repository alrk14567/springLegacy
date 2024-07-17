package com.nc13.spring_legacy.service;

import com.nc13.spring_legacy.model.UserDTO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    private final SqlSession SESSION;
    private final String NAMESPACE="mappers.UserMapper";


    public UserDTO selectOne(String username) {
        return SESSION.selectOne(NAMESPACE+".selectOne",username);
    }




}
