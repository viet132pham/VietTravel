package com.example.be.model;

import java.io.Serializable;

/*
This is class is required for creating a response containing the JWT to be returned to the user.
 */
public class JwtResponse implements Serializable {

    private static final long serialVersionUID = -8091879091924046844L;
    private final String jwttoken;
    private final long userId;

    public JwtResponse(String jwttoken, long userId) {
        this.jwttoken = jwttoken;
        this.userId = userId;
    }

    public String getToken() {
        return this.jwttoken;
    }
    public long getUserId() {
        return this.userId;
    }
}

