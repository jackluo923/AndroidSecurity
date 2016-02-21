package com.inmobi.monetization;

public enum IMErrorCode {
    INVALID_REQUEST("Invalid ad request"),
    INTERNAL_ERROR("An error occurred while fetching the ad"),
    NO_FILL("The ad request was successful, but no ad was returned"),
    DO_MONETIZE("Please load a mediation network"),
    DO_NOTHING("No Ads"),
    NETWORK_ERROR("Ad network failed to retrieve ad");
    private String a;

    static {
        String str = "Invalid ad request";
        INVALID_REQUEST = new IMErrorCode("INVALID_REQUEST", 0, "Invalid ad request");
        str = "An error occurred while fetching the ad";
        INTERNAL_ERROR = new IMErrorCode("INTERNAL_ERROR", 1, "An error occurred while fetching the ad");
        str = "The ad request was successful, but no ad was returned";
        NO_FILL = new IMErrorCode("NO_FILL", 2, "The ad request was successful, but no ad was returned");
        str = "Please load a mediation network";
        DO_MONETIZE = new IMErrorCode("DO_MONETIZE", 3, "Please load a mediation network");
        str = "No Ads";
        DO_NOTHING = new IMErrorCode("DO_NOTHING", 4, "No Ads");
        String str2 = "Ad network failed to retrieve ad";
        NETWORK_ERROR = new IMErrorCode("NETWORK_ERROR", 5, "Ad network failed to retrieve ad");
        b = new IMErrorCode[]{INVALID_REQUEST, INTERNAL_ERROR, NO_FILL, DO_MONETIZE, DO_NOTHING, NETWORK_ERROR};
    }

    private IMErrorCode(String str) {
        this.a = str;
    }

    public void setMessage(String str) {
        this.a = str;
    }

    public String toString() {
        return this.a;
    }
}