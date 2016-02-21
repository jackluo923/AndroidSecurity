package com.heyzap.sdk.ads;

import android.app.Activity;
import com.heyzap.house.Manager;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.house.request.FetchRequest.OnFetchResponse;
import java.util.List;

final class d implements OnFetchResponse {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;

    d(Activity activity, String str) {
        this.a = activity;
        this.b = str;
    }

    public void onFetchResponse(List list, FetchRequest fetchRequest, Throwable th) {
        if (th != null) {
            Manager.getInstance().getOnStatusListener(Integer.valueOf(InterstitialAd.access$000())).onFailedToShow(fetchRequest.getTag());
        } else {
            InterstitialAd.access$102(0);
            InterstitialAd.display(this.a, this.b);
        }
    }
}