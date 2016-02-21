package com.facebook.ads;

public class AdError {
    public static final AdError INTERNAL_ERROR;
    public static final int INVALID_ERROR_CODE = -1;
    public static final AdError LOAD_TOO_FREQUENTLY;
    public static final AdError MISSING_PROPERTIES;
    public static final AdError NO_FILL;
    private final int errorCode;
    private final String errorMessage;

    static {
        NO_FILL = new AdError(1001, "No Fill");
        LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
        INTERNAL_ERROR = new AdError(2001, "Internal Error");
        MISSING_PROPERTIES = new AdError(2002, "Native ad failed to load due to missing properties");
    }

    public AdError(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}