package com.heyzap.sdk.ads;

import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.NativeModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.house.request.FetchRequest.OnFetchResponse;
import com.heyzap.sdk.ads.NativeAd.Ad;
import com.heyzap.sdk.ads.NativeAd.FetchResponse;
import com.heyzap.sdk.ads.NativeAd.OnFetchListener;
import java.util.ArrayList;
import java.util.List;

final class f implements OnFetchResponse {
    final /* synthetic */ OnFetchListener a;

    f(OnFetchListener onFetchListener) {
        this.a = onFetchListener;
    }

    public void onFetchResponse(List list, FetchRequest fetchRequest, Throwable th) {
        FetchResponse fetchResponse;
        if (th == null) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < list.size()) {
                NativeModel nativeModel = (NativeModel) AdCache.getInstance().pop(NativeAd.AD_UNIT, fetchRequest.getTag());
                if (nativeModel != null) {
                    arrayList.add(new Ad(null));
                }
                i++;
            }
            ArrayList arrayList2 = arrayList;
        } else {
            List list2 = null;
        }
        fetchResponse = list2 != null ? new FetchResponse(fetchRequest.getTag(), null) : null;
        NativeAd.lastResponse = fetchResponse;
        if (this.a != null) {
            this.a.onResponse(fetchResponse, fetchRequest.getTag(), th);
        }
    }
}