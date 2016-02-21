package com.inmobi.monetization;

import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;

class a implements INativeAdListener {
    final /* synthetic */ IMNative a;

    class a implements Runnable {
        final /* synthetic */ IMErrorCode a;

        a(IMErrorCode iMErrorCode) {
            this.a = iMErrorCode;
        }

        public void run() {
            if (IMNative.d(a.this.a) != null) {
                IMNative.d(a.this.a).onNativeRequestFailed(this.a);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            try {
                if (IMNative.d(a.this) != null) {
                    IMNative.d(a.this).onNativeRequestSucceeded(a.this);
                }
            } catch (Exception e) {
                e.printStackTrace();
                Log.debug(Constants.LOG_TAG, "Failed to give callback");
            }
        }
    }

    a(IMNative iMNative) {
        this.a = iMNative;
    }

    public void onNativeRequestFailed(IMErrorCode iMErrorCode) {
        try {
            IMNative.a(this.a, a.f);
            IMNative.e(this.a).post(new a(iMErrorCode));
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Failed to give callback");
        }
    }

    public void onNativeRequestSucceeded(IMNative iMNative) {
        try {
            IMNative.a(this.a, a.c);
            IMNative.a(this.a, IMNative.c(iMNative));
            IMNative.b(this.a, IMNative.a(iMNative));
            IMNative.c(this.a, IMNative.b(iMNative));
            IMNative.a(this.a, true);
            IMNative.e(this.a).post(new b());
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Failed to give callback");
        }
    }
}