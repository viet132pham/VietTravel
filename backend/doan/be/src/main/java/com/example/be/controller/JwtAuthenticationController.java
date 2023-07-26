package com.example.be.controller;

import com.example.be.config.JwtTokenUtil;
import com.example.be.dto.UserRegisterDTO;
import com.example.be.entity.User;
import com.example.be.model.JwtRequest;
import com.example.be.model.JwtResponse;
import com.example.be.repository.JwtUserRepository;
import com.example.be.repository.RoleRepository;
import com.example.be.service.Impl.JwtUserDetailsService;

import java.util.HashMap;
import java.util.Map;
import lombok.var;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Set;

/*
Expose a POST API /authenticate using the JwtAuthenticationController. The POST API gets username and password in the
body- Using Spring Authentication Manager we authenticate the username and password.If the credentials are valid,
a JWT token is created using the JWTTokenUtil and provided to the client.
 */
@RestController
@CrossOrigin("*")
public class JwtAuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private JwtUserDetailsService jwtUserDetailsService;

    @Autowired
    private ModelMapper mapper;

    @Autowired
    private JwtUserRepository jwtUserRepository;

    @Autowired
    private RoleRepository roleRepository;

    @RequestMapping(value = "/api/register", method = RequestMethod.POST)
    public ResponseEntity<?> saveUser(@RequestBody UserRegisterDTO userRegisterDTO) {
        Map<String, String> result = new HashMap<>();
        if (jwtUserRepository.findUserByUsername(userRegisterDTO.getUsername()) != null) {
            result.put("error", "Tài khoản đã tồn tại.");
            return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
        };
        if (jwtUserRepository.findUserByEmail(userRegisterDTO.getEmail()) != null) {
            result.put("error", "Email đã tồn tại.");
            return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
        };

        User user = new User();
        mapper.map(userRegisterDTO, user);

        user.setRoles(Collections.singleton(roleRepository.findRoleByRoleCode("USER")));
        user.setPassword(userRegisterDTO.getPassword());
        var newUser = jwtUserDetailsService.save(user);
        if (newUser != null) {
            result.put("error", "");
            result.put("data", "Đăng ký tài khoản thành công");
            return new ResponseEntity<>(result, HttpStatus.OK);
        }
        result.put("error", "Tạo tài khoản thất bại, vui lòng thử lại sau!");
        return new ResponseEntity<>(result, HttpStatus.REQUEST_TIMEOUT);
    }

    @RequestMapping(value = "/api/login", method = RequestMethod.POST)
    public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtRequest authenticationRequest) throws Exception {
        Map<String, String> result = new HashMap<>();
        try {
            authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());
        } catch (Exception e) {
            result.put("error", "Sai tên đăng nhập hoặc mật khẩu.");
            return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
        }

        final UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(authenticationRequest.getUsername());
        if (userDetails == null) {
            result.put("error", "Tài khoản không tồn tại.");
            return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
        }

        final String token = jwtTokenUtil.generateToken(userDetails, jwtUserDetailsService.getUserIdByUsername(authenticationRequest.getUsername()), jwtUserDetailsService.getRoleNameByUsername(authenticationRequest.getUsername()));

        JwtResponse jwtResponse = new JwtResponse(token);
        result.put("token", jwtResponse.getToken());
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @RequestMapping(value="/auth", method = RequestMethod.GET)
    public String getUsername(@RequestHeader("Authorization") String token) throws Exception {
        System.out.println("check1");
        System.out.println(token);
        final String user = jwtTokenUtil.getUsernameFromToken(token);
        return user;
    }

    @GetMapping("/hello")
    @PreAuthorize("hasAnyAuthority('ADMIN')")
//    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity hello(){
        return ResponseEntity.ok("hello");
    }
    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
}

