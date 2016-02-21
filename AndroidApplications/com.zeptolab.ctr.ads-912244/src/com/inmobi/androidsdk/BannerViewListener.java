package com.inmobi.androidsdk;

import com.inmobi.androidsdk.AdRequest.ErrorCode;
import java.util.Map;

public interface BannerViewListener {
    void onAdRequestCompleted(BannerView bannerView);

    void onAdRequestFailed(BannerView bannerView, ErrorCode errorCode);

    void onBannerInteraction(BannerView bannerView, Map map);

    void onDismissAdScreen(BannerView bannerView);

    void onLeaveApplication(BannerView bannerView);

    void onShowAdScreen(BannerView bannerView);
}