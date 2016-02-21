package com.inmobi.androidsdk.impl;

import com.inmobi.androidsdk.AdRequest.ErrorCode;

public final class AdException extends Exception {
    public static final int INTERNAL_ERROR = 200;
    public static final int INVALID_APP_ID = 400;
    public static final int INVALID_REQUEST = 300;
    public static final int NO_FILL = 100;
    private static final long serialVersionUID = -3924043691624251411L;
    private int a;
    private String b;
    private int c;

    public AdException(String str, int i, String str2, int i2) {
        super(str);
        this.a = 300;
        this.b = null;
        this.c = 599;
        this.a = i;
        this.b = str2;
        this.c = i2;
    }

    public AdException(String str, Exception exception, int i, String str2) {
        super(str, exception);
        this.a = 300;
        this.b = null;
        this.c = 599;
        this.a = i;
        this.b = str2;
    }

    public int getCode() {
        return this.a;
    }

    public ErrorCode getErrorCode() {
        switch (this.a) {
            case NO_FILL:
                return ErrorCode.NO_FILL;
            case INTERNAL_ERROR:
                return ErrorCode.INTERNAL_ERROR;
            case INVALID_REQUEST:
                return ErrorCode.INVALID_REQUEST;
            case INVALID_APP_ID:
                return ErrorCode.INVALID_APP_ID;
            default:
                return ErrorCode.INTERNAL_ERROR;
        }
    }

    public int getHttpCode() {
        return this.c;
    }

    public String getImpressionId() {
        return this.b;
    }

    public void setCode(int i) {
        this.a = i;
    }
}