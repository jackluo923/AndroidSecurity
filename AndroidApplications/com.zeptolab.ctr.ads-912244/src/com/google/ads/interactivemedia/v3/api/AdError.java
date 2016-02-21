package com.google.ads.interactivemedia.v3.api;

public class AdError extends Exception {
    private final AdErrorCode a;
    private final AdErrorType b;

    public enum AdErrorCode {
        INTERNAL_ERROR(-1),
        VAST_MALFORMED_RESPONSE(100),
        UNKNOWN_AD_RESPONSE(200),
        VAST_LOAD_TIMEOUT(301),
        VAST_TOO_MANY_REDIRECTS(302),
        VAST_INVALID_URL(303),
        VIDEO_PLAY_ERROR(400),
        VAST_LINEAR_ASSET_MISMATCH(403),
        OVERLAY_AD_PLAYING_FAILED(500),
        OVERLAY_AD_LOADING_FAILED(502),
        VAST_NONLINEAR_ASSET_MISMATCH(503),
        COMPANION_AD_LOADING_FAILED(603),
        UNKNOWN_ERROR(900),
        PLAYLIST_MALFORMED_RESPONSE(1004),
        FAILED_TO_REQUEST_ADS(1005),
        REQUIRED_LISTENERS_NOT_ADDED(1006),
        VAST_ASSET_NOT_FOUND(1007),
        INVALID_ARGUMENTS(1101),
        API_ERROR(1102);
        private final int a;

        static {
            INTERNAL_ERROR = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("INTERNAL_ERROR", 0, -1);
            VAST_MALFORMED_RESPONSE = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_MALFORMED_RESPONSE", 1, 100);
            UNKNOWN_AD_RESPONSE = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("UNKNOWN_AD_RESPONSE", 2, 200);
            VAST_LOAD_TIMEOUT = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_LOAD_TIMEOUT", 3, 301);
            VAST_TOO_MANY_REDIRECTS = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_TOO_MANY_REDIRECTS", 4, 302);
            VAST_INVALID_URL = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_INVALID_URL", 5, 303);
            VIDEO_PLAY_ERROR = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VIDEO_PLAY_ERROR", 6, 400);
            VAST_LINEAR_ASSET_MISMATCH = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_LINEAR_ASSET_MISMATCH", 7, 403);
            OVERLAY_AD_PLAYING_FAILED = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("OVERLAY_AD_PLAYING_FAILED", 8, 500);
            OVERLAY_AD_LOADING_FAILED = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("OVERLAY_AD_LOADING_FAILED", 9, 502);
            VAST_NONLINEAR_ASSET_MISMATCH = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_NONLINEAR_ASSET_MISMATCH", 10, 503);
            COMPANION_AD_LOADING_FAILED = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("COMPANION_AD_LOADING_FAILED", 11, 603);
            UNKNOWN_ERROR = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("UNKNOWN_ERROR", 12, 900);
            PLAYLIST_MALFORMED_RESPONSE = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("PLAYLIST_MALFORMED_RESPONSE", 13, 1004);
            FAILED_TO_REQUEST_ADS = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("FAILED_TO_REQUEST_ADS", 14, 1005);
            REQUIRED_LISTENERS_NOT_ADDED = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("REQUIRED_LISTENERS_NOT_ADDED", 15, 1006);
            VAST_ASSET_NOT_FOUND = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("VAST_ASSET_NOT_FOUND", 16, 1007);
            INVALID_ARGUMENTS = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("INVALID_ARGUMENTS", 17, 1101);
            API_ERROR = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode("API_ERROR", 18, 1102);
            b = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode[]{INTERNAL_ERROR, VAST_MALFORMED_RESPONSE, UNKNOWN_AD_RESPONSE, VAST_LOAD_TIMEOUT, VAST_TOO_MANY_REDIRECTS, VAST_INVALID_URL, VIDEO_PLAY_ERROR, VAST_LINEAR_ASSET_MISMATCH, OVERLAY_AD_PLAYING_FAILED, OVERLAY_AD_LOADING_FAILED, VAST_NONLINEAR_ASSET_MISMATCH, COMPANION_AD_LOADING_FAILED, UNKNOWN_ERROR, PLAYLIST_MALFORMED_RESPONSE, FAILED_TO_REQUEST_ADS, REQUIRED_LISTENERS_NOT_ADDED, VAST_ASSET_NOT_FOUND, INVALID_ARGUMENTS, API_ERROR};
        }

        private AdErrorCode(int i) {
            this.a = i;
        }

        static com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode a(int i) {
            com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode[] values = values();
            int length = values.length;
            int i2 = 0;
            while (i2 < length) {
                com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode adErrorCode = values[i2];
                if (adErrorCode.a == i) {
                    return adErrorCode;
                }
                i2++;
            }
            return 1204 == i ? INTERNAL_ERROR : UNKNOWN_ERROR;
        }

        public final boolean equals(int i) {
            return this.a == i;
        }
    }

    public enum AdErrorType {
        LOAD,
        PLAY;

        static {
            LOAD = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorType("LOAD", 0);
            PLAY = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorType("PLAY", 1);
            a = new com.google.ads.interactivemedia.v3.api.AdError.AdErrorType[]{LOAD, PLAY};
        }
    }

    public AdError(AdErrorType adErrorType, int i, String str) {
        this(adErrorType, AdErrorCode.a(i), str);
    }

    public AdError(AdErrorType adErrorType, AdErrorCode adErrorCode, String str) {
        super(str);
        this.b = adErrorType;
        this.a = adErrorCode;
    }

    public AdErrorCode getErrorCode() {
        return this.a;
    }

    public AdErrorType getErrorType() {
        return this.b;
    }

    public String getMessage() {
        return super.getMessage();
    }
}