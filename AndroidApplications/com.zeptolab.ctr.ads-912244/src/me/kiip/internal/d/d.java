package me.kiip.internal.d;

import java.net.InetAddress;

public interface d {
    public static final d a;

    static {
        a = new d() {
            public InetAddress[] a(String str) {
                return InetAddress.getAllByName(str);
            }
        };
    }

    InetAddress[] a(String str);
}