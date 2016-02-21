package com.heyzap.house.model;

import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;

class e implements GenericCallback {
    final /* synthetic */ ModelPostFetchCompleteListener a;
    final /* synthetic */ InterstitialModel b;

    e(InterstitialModel interstitialModel, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
        this.b = interstitialModel;
        this.a = modelPostFetchCompleteListener;
    }

    public void onCallback(Object obj, Throwable th) {
        Logger.format("(HTML ASSETS CACHED) %s", new Object[]{this.b});
        this.b.setIsReady(Boolean.valueOf(true));
        if (this.a != null) {
            this.a.onComplete(this.b, null);
        }
    }
}