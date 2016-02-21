package com.vungle.publisher.net.http;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.inject.annotations.WrapperFrameworkVersion;
import java.util.regex.Pattern;
import javax.inject.Inject;

public abstract class HttpRequest implements Parcelable {
    public static final Pattern a;
    public String b;
    public Bundle c;
    public String d;

    public static abstract class Factory {
        @Inject
        protected WrapperFramework a;
        @WrapperFrameworkVersion
        @Inject
        protected String b;
        private String c;

        public abstract HttpRequest b();

        public HttpRequest c() {
            HttpRequest b = b();
            Bundle bundle = new Bundle();
            String str = "User-Agent";
            String str2 = this.c;
            if (str2 == null) {
                int i;
                int i2;
                StringBuilder stringBuilder = new StringBuilder(VunglePubBase.VERSION);
                WrapperFramework wrapperFramework = this.a;
                String str3 = this.b;
                i = wrapperFramework != null;
                i2 = str3 != null;
                if (!(i == 0 && i2 == 0)) {
                    stringBuilder.append(';');
                    if (i != 0) {
                        stringBuilder.append(wrapperFramework);
                    }
                    if (i2 != 0) {
                        stringBuilder.append('/');
                        stringBuilder.append(str3);
                    }
                }
                str2 = stringBuilder.toString();
                this.c = str2;
            }
            bundle.putString(str, str2);
            b.c = bundle;
            return b;
        }
    }

    public enum a {
        GET,
        HEAD,
        POST;

        static {
            a = new com.vungle.publisher.net.http.HttpRequest.a("GET", 0);
            b = new com.vungle.publisher.net.http.HttpRequest.a("HEAD", 1);
            c = new com.vungle.publisher.net.http.HttpRequest.a("POST", 2);
            d = new com.vungle.publisher.net.http.HttpRequest.a[]{a, b, c};
        }
    }

    public enum b {
        download,
        reportAd,
        requestConfig,
        requestLocalAd,
        requestStreamingAd,
        sessionEnd,
        sessionStart,
        trackEvent,
        trackInstall,
        unfilledAd;

        static {
            a = new com.vungle.publisher.net.http.HttpRequest.b(AdTrackerConstants.GOAL_DOWNLOAD, 0);
            b = new com.vungle.publisher.net.http.HttpRequest.b("reportAd", 1);
            c = new com.vungle.publisher.net.http.HttpRequest.b("requestConfig", 2);
            d = new com.vungle.publisher.net.http.HttpRequest.b("requestLocalAd", 3);
            e = new com.vungle.publisher.net.http.HttpRequest.b("requestStreamingAd", 4);
            f = new com.vungle.publisher.net.http.HttpRequest.b("sessionEnd", 5);
            g = new com.vungle.publisher.net.http.HttpRequest.b("sessionStart", 6);
            h = new com.vungle.publisher.net.http.HttpRequest.b("trackEvent", 7);
            i = new com.vungle.publisher.net.http.HttpRequest.b("trackInstall", 8);
            j = new com.vungle.publisher.net.http.HttpRequest.b("unfilledAd", 9);
            k = new com.vungle.publisher.net.http.HttpRequest.b[]{a, b, c, d, e, f, g, h, i, j};
        }
    }

    static {
        a = Pattern.compile("^https://");
    }

    public abstract a a();

    public HttpRequest a(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readBundle();
        this.d = parcel.readString();
        return this;
    }

    public abstract b b();

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return new StringBuilder("{").append(b()).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeBundle(this.c);
        parcel.writeString(this.d);
    }
}