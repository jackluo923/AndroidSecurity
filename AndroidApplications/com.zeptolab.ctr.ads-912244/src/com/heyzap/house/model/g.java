package com.heyzap.house.model;

import com.heyzap.internal.GenericCallback;
import com.heyzap.internal.Logger;

class g implements GenericCallback {
    final /* synthetic */ VideoModel a;

    g(VideoModel videoModel) {
        this.a = videoModel;
    }

    public void onCallback(Object obj, Throwable th) {
        Logger.format("(HTML ASSETS CACHED) %s", new Object[]{this.a});
    }
}