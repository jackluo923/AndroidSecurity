package com.vungle.publisher;

public enum bi {
    mobile,
    wifi;

    static {
        a = new bi("mobile", 0);
        b = new bi("wifi", 1);
        c = new bi[]{a, b};
    }
}