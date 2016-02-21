package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

public interface MediationBannerListener {
    void a(MediationBannerAdapter mediationBannerAdapter);

    void a(MediationBannerAdapter mediationBannerAdapter, ErrorCode errorCode);

    void b(MediationBannerAdapter mediationBannerAdapter);

    void c(MediationBannerAdapter mediationBannerAdapter);

    void d(MediationBannerAdapter mediationBannerAdapter);

    void e(MediationBannerAdapter mediationBannerAdapter);
}