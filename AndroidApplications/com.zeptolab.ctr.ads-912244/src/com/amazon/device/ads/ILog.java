package com.amazon.device.ads;

interface ILog {
    void d(String str, String str2);

    void d(String str, String str2, Object... objArr);

    void e(String str, String str2);

    void e(String str, String str2, Object... objArr);

    void i(String str, String str2);

    void i(String str, String str2, Object... objArr);

    void v(String str, String str2);

    void v(String str, String str2, Object... objArr);

    void w(String str, String str2);

    void w(String str, String str2, Object... objArr);
}