package com.millennialmedia.android;

import android.content.Context;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public final class MMInterstitial implements MMAd {
    private static final String c = "MMInterstitial";
    MMAdImpl a;
    int b;

    class MMInterstitialAdImpl extends MMAdImpl {
        public MMInterstitialAdImpl(Context context) {
            super(context);
        }

        /* synthetic */ MMAd d() {
            return s();
        }

        MMInterstitial s() {
            return MMInterstitial.this;
        }
    }

    public MMInterstitial(Context context) {
        this.a = new MMInterstitialAdImpl(context.getApplicationContext());
        this.a.h = "i";
    }

    private void b() {
        if (isAdAvailable()) {
            MMLog.b(c, "Ad already fetched and ready for display...");
            Event.a(this.a, new MMException(17));
        } else {
            MMLog.b(c, "Fetching new ad...");
            this.a.f();
        }
    }

    int a() {
        try {
            MMAdImplController.b(this.a);
            if (this.a.n != null) {
                return this.a.n.g(this.a);
            }
        } catch (Exception e) {
            Throwable th = e;
            MMLog.e(c, "There was an exception displaying a cached ad. ", th);
            th.printStackTrace();
        }
        return MMException.UNKNOWN_ERROR;
    }

    public boolean display() {
        return display(false);
    }

    public boolean display(boolean z) {
        if (MMSDK.a()) {
            try {
                int a = a();
                if (a != 0 && z) {
                    throw new MMException(a);
                } else if (a == 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (Exception e) {
                Exception exception = e;
                if (!z) {
                    return false;
                }
                throw new MMException(exception);
            }
        } else {
            MMLog.e(c, MMException.a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            return false;
        }
    }

    public void fetch() {
        if (this.a == null || this.a.e == null) {
            b();
        } else {
            fetch(this.a.d, this.a.e);
        }
    }

    public void fetch(MMRequest mMRequest) {
        if (this.a == null || this.a.e == null) {
            b();
        } else {
            fetch(mMRequest, this.a.e);
        }
    }

    public void fetch(MMRequest mMRequest, RequestListener requestListener) {
        if (this.a != null) {
            this.a.d = mMRequest;
            this.a.e = requestListener;
        }
        b();
    }

    public String getApid() {
        return this.a.getApid();
    }

    public boolean getIgnoresDensityScaling() {
        return this.a.getIgnoresDensityScaling();
    }

    public RequestListener getListener() {
        return this.a.getListener();
    }

    public MMRequest getMMRequest() {
        return this.a.getMMRequest();
    }

    public boolean isAdAvailable() {
        if (MMSDK.a()) {
            try {
                MMAdImplController.b(this.a);
                return this.a.n != null && this.a.n.f(this.a) == 0;
            } catch (Exception e) {
                Throwable th = e;
                MMLog.e(c, "There was an exception checking for a cached ad. ", th);
                th.printStackTrace();
                return false;
            }
        } else {
            MMLog.e(c, MMException.a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            return false;
        }
    }

    public void setApid(String str) {
        this.a.setApid(str);
    }

    public void setIgnoresDensityScaling(boolean z) {
        this.a.setIgnoresDensityScaling(z);
    }

    public void setListener(RequestListener requestListener) {
        this.a.setListener(requestListener);
    }

    public void setMMRequest(MMRequest mMRequest) {
        this.a.setMMRequest(mMRequest);
    }
}