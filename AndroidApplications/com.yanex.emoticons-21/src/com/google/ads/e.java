package com.google.ads;

public enum e {
    INVALID_REQUEST("Invalid Ad request."),
    NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
    NETWORK_ERROR("A network error occurred."),
    INTERNAL_ERROR("There was an internal error.");
    private final String e;

    static {
        String str = "Invalid Ad request.";
        a = new e("INVALID_REQUEST", 0, "Invalid Ad request.");
        str = "Ad request successful, but no ad returned due to lack of ad inventory.";
        b = new e("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
        str = "A network error occurred.";
        c = new e("NETWORK_ERROR", 2, "A network error occurred.");
        str = "There was an internal error.";
        d = new e("INTERNAL_ERROR", 3, "There was an internal error.");
        f = new e[]{a, b, c, d};
    }

    private e(String str) {
        this.e = str;
    }

    public final String toString() {
        return this.e;
    }
}