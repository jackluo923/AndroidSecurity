package com.vungle.publisher.protocol.message;

import android.util.Log;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.protocol.message.RequestAd.a;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class RequestLocalAd extends RequestAd {
    String g;

    @Singleton
    public static class Factory extends a {
        @Inject
        Provider e;

        protected final /* synthetic */ Object a() {
            return new RequestLocalAd();
        }

        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestLocalAd[i];
        }

        public final /* synthetic */ RequestAd b() {
            return c();
        }

        public final RequestLocalAd c() {
            String str;
            RequestLocalAd requestLocalAd = (RequestLocalAd) super.b();
            Throwable[] thArr = (Throwable[]) ((SdkState) this.e.get()).h.a.a();
            int length = thArr.length;
            if (length > 0) {
                String[] strArr = new String[length];
                int i = 0;
                while (i < length / 2) {
                    String stackTraceString = Log.getStackTraceString(thArr[i]);
                    strArr[i] = Log.getStackTraceString(thArr[length - 1 - i]);
                    strArr[length - 1 - i] = stackTraceString;
                    i++;
                }
                String[] strArr2 = strArr;
            } else {
                ?[] Arr = null;
            }
            str = (Arr == null || Arr.length <= 0) ? null : Arr[0];
            requestLocalAd.g = str;
            return requestLocalAd;
        }
    }

    RequestLocalAd() {
    }

    public final JSONObject b() {
        JSONObject b = super.b();
        b.putOpt("lastError", this.g);
        return b;
    }
}