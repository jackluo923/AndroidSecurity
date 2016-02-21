package com.inmobi.commons;

public enum IMIDType {
    ID_LOGIN,
    ID_SESSION;

    static {
        ID_LOGIN = new IMIDType("ID_LOGIN", 0);
        ID_SESSION = new IMIDType("ID_SESSION", 1);
        a = new IMIDType[]{ID_LOGIN, ID_SESSION};
    }
}