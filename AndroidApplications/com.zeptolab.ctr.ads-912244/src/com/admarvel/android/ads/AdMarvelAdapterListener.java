package com.admarvel.android.ads;

import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;

public interface AdMarvelAdapterListener {
    void onClickAd(String str);

    void onClose();

    void onExpand();

    void onFailedToReceiveAd(int i, ErrorReason errorReason);

    void onReceiveAd();

    void onReceiveNativeAd(Object obj);
}