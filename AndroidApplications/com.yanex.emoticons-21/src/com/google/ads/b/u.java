package com.google.ads.b;

public enum u {
    ONLINE_USING_BUFFERED_ADS("online_buffered"),
    ONLINE_SERVER_REQUEST("online_request"),
    OFFLINE_USING_BUFFERED_ADS("offline_buffered"),
    OFFLINE_EMPTY("offline_empty");
    public String e;

    static {
        String str = "online_buffered";
        a = new u("ONLINE_USING_BUFFERED_ADS", 0, "online_buffered");
        str = "online_request";
        b = new u("ONLINE_SERVER_REQUEST", 1, "online_request");
        str = "offline_buffered";
        c = new u("OFFLINE_USING_BUFFERED_ADS", 2, "offline_buffered");
        str = "offline_empty";
        d = new u("OFFLINE_EMPTY", 3, "offline_empty");
        f = new u[]{a, b, c, d};
    }

    private u(String str) {
        this.e = str;
    }
}