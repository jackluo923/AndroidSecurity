package com.mopub.mobileads;

public enum MoPubErrorCode {
    NO_FILL("No inventory."),
    SERVER_ERROR("Unable to connect to MoPub adserver."),
    INTERNAL_ERROR("Unable to serve ad due to invalid internal state."),
    CANCELLED("Ad request was cancelled."),
    ADAPTER_NOT_FOUND("Unable to find Native Network or Custom Event adapter."),
    ADAPTER_CONFIGURATION_ERROR("Native Network or Custom Event adapter was configured incorrectly."),
    NETWORK_TIMEOUT("Third-party network failed to respond in a timely manner."),
    NETWORK_NO_FILL("Third-party network failed to provide inventory."),
    NETWORK_INVALID_STATE("Third-party network failed due to invalid internal state."),
    MRAID_LOAD_ERROR("Error loading MRAID ad."),
    UNSPECIFIED("Unspecified error.");
    private final String l;

    static {
        String str = "No inventory.";
        a = new MoPubErrorCode("NO_FILL", 0, "No inventory.");
        str = "Unable to connect to MoPub adserver.";
        b = new MoPubErrorCode("SERVER_ERROR", 1, "Unable to connect to MoPub adserver.");
        str = "Unable to serve ad due to invalid internal state.";
        c = new MoPubErrorCode("INTERNAL_ERROR", 2, "Unable to serve ad due to invalid internal state.");
        str = "Ad request was cancelled.";
        d = new MoPubErrorCode("CANCELLED", 3, "Ad request was cancelled.");
        str = "Unable to find Native Network or Custom Event adapter.";
        e = new MoPubErrorCode("ADAPTER_NOT_FOUND", 4, "Unable to find Native Network or Custom Event adapter.");
        String str2 = "Native Network or Custom Event adapter was configured incorrectly.";
        f = new MoPubErrorCode("ADAPTER_CONFIGURATION_ERROR", 5, "Native Network or Custom Event adapter was configured incorrectly.");
        str2 = "Third-party network failed to respond in a timely manner.";
        g = new MoPubErrorCode("NETWORK_TIMEOUT", 6, "Third-party network failed to respond in a timely manner.");
        str2 = "Third-party network failed to provide inventory.";
        h = new MoPubErrorCode("NETWORK_NO_FILL", 7, "Third-party network failed to provide inventory.");
        str2 = "Third-party network failed due to invalid internal state.";
        i = new MoPubErrorCode("NETWORK_INVALID_STATE", 8, "Third-party network failed due to invalid internal state.");
        str2 = "Error loading MRAID ad.";
        j = new MoPubErrorCode("MRAID_LOAD_ERROR", 9, "Error loading MRAID ad.");
        str2 = "Unspecified error.";
        k = new MoPubErrorCode("UNSPECIFIED", 10, "Unspecified error.");
        m = new MoPubErrorCode[]{a, b, c, d, e, f, g, h, i, j, k};
    }

    private MoPubErrorCode(String str) {
        this.l = str;
    }

    public String toString() {
        return this.l;
    }
}