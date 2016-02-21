package com.millennialmedia.android;

import android.util.Log;

public interface RequestListener {

    public static class RequestListenerImpl implements RequestListener {
        public void MMAdOverlayClosed(MMAd mMAd) {
            Log.i(MMSDK.SDKLOG, "Millennial Media Ad View overlay closed");
        }

        public void MMAdOverlayLaunched(MMAd mMAd) {
            Log.i(MMSDK.SDKLOG, "Millennial Media Ad View overlay launched");
        }

        public void MMAdRequestIsCaching(MMAd mMAd) {
            Log.i(MMSDK.SDKLOG, "Millennial Media Ad View caching request");
        }

        public void onSingleTap(MMAd mMAd) {
            Log.i(MMSDK.SDKLOG, "Ad tapped");
        }

        public void requestCompleted(MMAd mMAd) {
            Log.i(MMSDK.SDKLOG, "Ad request succeeded");
        }

        public void requestFailed(MMAd mMAd, MMException mMException) {
            Log.i(MMSDK.SDKLOG, String.format("Ad request failed with error: %d %s.", new Object[]{Integer.valueOf(mMException.getCode()), mMException.getMessage()}));
        }
    }

    void MMAdOverlayClosed(MMAd mMAd);

    void MMAdOverlayLaunched(MMAd mMAd);

    void MMAdRequestIsCaching(MMAd mMAd);

    void onSingleTap(MMAd mMAd);

    void requestCompleted(MMAd mMAd);

    void requestFailed(MMAd mMAd, MMException mMException);
}