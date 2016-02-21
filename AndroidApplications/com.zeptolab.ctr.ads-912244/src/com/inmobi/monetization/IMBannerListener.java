package com.inmobi.monetization;

import java.util.Map;

public interface IMBannerListener {
    void onBannerInteraction(IMBanner iMBanner, Map map);

    void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode);

    void onBannerRequestSucceeded(IMBanner iMBanner);

    void onDismissBannerScreen(IMBanner iMBanner);

    void onLeaveApplication(IMBanner iMBanner);

    void onShowBannerScreen(IMBanner iMBanner);
}