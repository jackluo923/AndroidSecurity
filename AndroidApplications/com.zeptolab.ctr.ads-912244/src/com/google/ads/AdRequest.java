package com.google.ads;

@Deprecated
public final class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR;
    public static final String VERSION = "0.0.0";

    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        private final String description;

        static {
            String str = "Invalid Ad request.";
            INVALID_REQUEST = new com.google.ads.AdRequest.ErrorCode("INVALID_REQUEST", 0, "Invalid Ad request.");
            str = "Ad request successful, but no ad returned due to lack of ad inventory.";
            NO_FILL = new com.google.ads.AdRequest.ErrorCode("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
            str = "A network error occurred.";
            NETWORK_ERROR = new com.google.ads.AdRequest.ErrorCode("NETWORK_ERROR", 2, "A network error occurred.");
            str = "There was an internal error.";
            INTERNAL_ERROR = new com.google.ads.AdRequest.ErrorCode("INTERNAL_ERROR", 3, "There was an internal error.");
            a = new com.google.ads.AdRequest.ErrorCode[]{INVALID_REQUEST, NO_FILL, NETWORK_ERROR, INTERNAL_ERROR};
        }

        private ErrorCode(String str) {
            this.description = str;
        }

        public String toString() {
            return this.description;
        }
    }

    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;

        static {
            UNKNOWN = new com.google.ads.AdRequest.Gender("UNKNOWN", 0);
            MALE = new com.google.ads.AdRequest.Gender("MALE", 1);
            FEMALE = new com.google.ads.AdRequest.Gender("FEMALE", 2);
            b = new com.google.ads.AdRequest.Gender[]{UNKNOWN, MALE, FEMALE};
        }
    }

    static {
        TEST_EMULATOR = com.google.android.gms.ads.AdRequest.DEVICE_ID_EMULATOR;
    }

    private AdRequest() {
    }
}