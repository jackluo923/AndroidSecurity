package com.google.android.gms.common.api;

public class CommonStatusCodes {
    public static final int DATE_INVALID = 12;
    public static final int DEVELOPER_ERROR = 10;
    public static final int ERROR = 13;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 14;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int SUCCESS_CACHE = -1;
    public static final int TIMEOUT = 15;

    public static String getStatusCodeString(int i) {
        switch (i) {
            case SUCCESS_CACHE:
                return "SUCCESS_CACHE";
            case SUCCESS:
                return "SUCCESS";
            case SERVICE_MISSING:
                return "SERVICE_MISSING";
            case SERVICE_VERSION_UPDATE_REQUIRED:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case SERVICE_DISABLED:
                return "SERVICE_DISABLED";
            case SIGN_IN_REQUIRED:
                return "SIGN_IN_REQUIRED";
            case INVALID_ACCOUNT:
                return "INVALID_ACCOUNT";
            case RESOLUTION_REQUIRED:
                return "RESOLUTION_REQUIRED";
            case NETWORK_ERROR:
                return "NETWORK_ERROR";
            case INTERNAL_ERROR:
                return "INTERNAL_ERROR";
            case SERVICE_INVALID:
                return "SERVICE_INVALID";
            case DEVELOPER_ERROR:
                return "DEVELOPER_ERROR";
            case LICENSE_CHECK_FAILED:
                return "LICENSE_CHECK_FAILED";
            default:
                return "unknown status code: " + i;
        }
    }
}