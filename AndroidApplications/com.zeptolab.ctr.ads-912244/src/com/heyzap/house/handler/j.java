package com.heyzap.house.handler;

import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import java.util.ArrayList;
import java.util.List;

class j implements ModelPostFetchCompleteListener {
    final /* synthetic */ InterstitialFetchHandler a;

    j(InterstitialFetchHandler interstitialFetchHandler) {
        this.a = interstitialFetchHandler;
    }

    public void onComplete(AdModel adModel, Throwable th) {
        if (th != null) {
            if (!(adModel == null || th.getMessage().equals("cancelled"))) {
                AdCache.getInstance().pop(adModel.getImpressionId());
            }
            this.a.onFailure(th);
        } else {
            List arrayList = new ArrayList();
            arrayList.add(adModel);
            this.a.onSuccess(arrayList);
        }
    }
}