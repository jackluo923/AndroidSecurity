package com.google.ads;

import com.google.ads.AdRequest.ErrorCode;

public interface AdListener {
    void a(Ad ad);

    void a(Ad ad, ErrorCode errorCode);

    void b(Ad ad);

    void c(Ad ad);

    void d(Ad ad);
}