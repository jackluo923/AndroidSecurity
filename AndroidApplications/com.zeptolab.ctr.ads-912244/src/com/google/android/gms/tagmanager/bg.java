package com.google.android.gms.tagmanager;

interface bg {

    public enum a {
        NOT_AVAILABLE,
        IO_ERROR,
        SERVER_ERROR;

        static {
            VA = new com.google.android.gms.tagmanager.bg.a("NOT_AVAILABLE", 0);
            VB = new com.google.android.gms.tagmanager.bg.a("IO_ERROR", 1);
            VC = new com.google.android.gms.tagmanager.bg.a("SERVER_ERROR", 2);
            VD = new com.google.android.gms.tagmanager.bg.a[]{VA, VB, VC};
        }
    }

    void a(a aVar);

    void i(Object obj);

    void iM();
}