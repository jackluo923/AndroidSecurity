package com.amazon.device.ads;

public final class AdError {
    private final ErrorCode a;
    private final String b;

    public enum ErrorCode {
        NETWORK_ERROR,
        NETWORK_TIMEOUT,
        NO_FILL,
        INTERNAL_ERROR,
        REQUEST_ERROR;

        static {
            NETWORK_ERROR = new com.amazon.device.ads.AdError.ErrorCode("NETWORK_ERROR", 0);
            NETWORK_TIMEOUT = new com.amazon.device.ads.AdError.ErrorCode("NETWORK_TIMEOUT", 1);
            NO_FILL = new com.amazon.device.ads.AdError.ErrorCode("NO_FILL", 2);
            INTERNAL_ERROR = new com.amazon.device.ads.AdError.ErrorCode("INTERNAL_ERROR", 3);
            REQUEST_ERROR = new com.amazon.device.ads.AdError.ErrorCode("REQUEST_ERROR", 4);
            a = new com.amazon.device.ads.AdError.ErrorCode[]{NETWORK_ERROR, NETWORK_TIMEOUT, NO_FILL, INTERNAL_ERROR, REQUEST_ERROR};
        }
    }

    AdError(ErrorCode errorCode, String str) {
        this.a = errorCode;
        this.b = str;
    }

    public ErrorCode getCode() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }
}