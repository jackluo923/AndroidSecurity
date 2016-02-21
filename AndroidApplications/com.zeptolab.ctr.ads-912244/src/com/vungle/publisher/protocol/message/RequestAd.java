package com.vungle.publisher.protocol.message;

import android.util.DisplayMetrics;
import com.millennialmedia.android.MMRequest;
import com.vungle.log.Logger;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.Demographic.Gender;
import com.vungle.publisher.as;
import com.vungle.publisher.at;
import com.vungle.publisher.bf;
import com.vungle.publisher.bh;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.vungle.publisher.protocol.message.RequestAd.Demographic.Factory;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public abstract class RequestAd extends BaseJsonSerializable {
    protected String a;
    protected String b;
    protected Demographic c;
    protected DeviceInfo d;
    protected Boolean e;
    protected String f;

    public static class Demographic extends BaseJsonSerializable {
        protected Integer a;
        protected Gender b;
        protected Location c;

        @Singleton
        public static class Factory extends MessageFactory {
            @Inject
            protected com.vungle.publisher.Demographic a;
            @Inject
            protected com.vungle.publisher.protocol.message.RequestAd.Demographic.Location.Factory b;

            protected Factory() {
            }

            protected final /* synthetic */ Object a() {
                return new com.vungle.publisher.protocol.message.RequestAd.Demographic();
            }

            protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                return new com.vungle.publisher.protocol.message.RequestAd.Demographic[i];
            }

            protected final com.vungle.publisher.protocol.message.RequestAd.Demographic b() {
                com.vungle.publisher.Demographic demographic = this.a;
                com.vungle.publisher.protocol.message.RequestAd.Demographic demographic2 = new com.vungle.publisher.protocol.message.RequestAd.Demographic();
                demographic2.a = demographic.getAge();
                demographic2.b = demographic.getGender();
                demographic2.c = this.b.b();
                return demographic2;
            }
        }

        public static class Location extends BaseJsonSerializable {
            protected Float a;
            protected Double b;
            protected Double c;
            protected Float d;
            protected Long e;

            @Singleton
            public static class Factory extends MessageFactory {
                @Inject
                bh a;

                protected Factory() {
                }

                protected final /* synthetic */ Object a() {
                    return new com.vungle.publisher.protocol.message.RequestAd.Demographic.Location();
                }

                protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                    return new com.vungle.publisher.protocol.message.RequestAd.Demographic.Location[i];
                }

                protected final com.vungle.publisher.protocol.message.RequestAd.Demographic.Location b() {
                    android.location.Location b = this.a.b();
                    if (b == null) {
                        Logger.d(Logger.PROTOCOL_TAG, "detailed location not available");
                        return null;
                    } else {
                        com.vungle.publisher.protocol.message.RequestAd.Demographic.Location location = new com.vungle.publisher.protocol.message.RequestAd.Demographic.Location();
                        location.a = Float.valueOf(b.getAccuracy());
                        location.b = Double.valueOf(b.getLatitude());
                        location.c = Double.valueOf(b.getLongitude());
                        location.d = Float.valueOf(b.getSpeed());
                        location.e = Long.valueOf(b.getTime());
                        return location;
                    }
                }
            }

            protected Location() {
            }

            public final JSONObject b() {
                JSONObject b = super.b();
                b.putOpt("accuracyMeters", this.a);
                b.putOpt("lat", this.b);
                b.putOpt("long", this.c);
                b.putOpt("speedMetersPerSecond", this.d);
                b.putOpt("timestampMillis", this.e);
                return b;
            }
        }

        protected Demographic() {
        }

        public final JSONObject b() {
            JSONObject b = super.b();
            b.putOpt(MMRequest.KEY_AGE, this.a);
            b.putOpt(MMRequest.KEY_GENDER, this.b);
            b.putOpt("location", bf.a(this.c));
            return b;
        }
    }

    public static class DeviceInfo extends BaseJsonSerializable {
        protected bi a;
        protected DisplayDimension b;
        protected Boolean c;
        protected Boolean d;
        protected String e;
        protected String f;
        protected String g;
        protected a h;
        protected Float i;
        protected String j;

        public static class DisplayDimension extends BaseJsonSerializable {
            protected Integer a;
            protected Integer b;

            @Singleton
            public static class Factory extends MessageFactory {
                @Inject
                protected as a;

                protected Factory() {
                }

                protected final /* synthetic */ Object a() {
                    return new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension();
                }

                protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                    return new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension[i];
                }

                protected final com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension b() {
                    DisplayMetrics d = this.a.d();
                    if (d.heightPixels <= 0 && d.widthPixels <= 0) {
                        return null;
                    }
                    com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension displayDimension = new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension();
                    displayDimension.a = Integer.valueOf(d.heightPixels);
                    displayDimension.b = Integer.valueOf(d.widthPixels);
                    return displayDimension;
                }
            }

            protected DisplayDimension() {
            }

            public final JSONObject b() {
                JSONObject b = super.b();
                b.putOpt(MMLayout.KEY_HEIGHT, this.a);
                b.putOpt(MMLayout.KEY_WIDTH, this.b);
                return b;
            }
        }

        @Singleton
        public static class Factory extends MessageFactory {
            @Inject
            protected AdConfig a;
            @Inject
            protected as b;
            @Inject
            protected com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.DisplayDimension.Factory c;
            @Inject
            protected bj d;
            @Inject
            protected at e;

            protected Factory() {
            }

            protected final /* synthetic */ Object a() {
                return new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo();
            }

            protected final /* bridge */ /* synthetic */ Object[] a(int i) {
                return new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo[i];
            }

            protected final com.vungle.publisher.protocol.message.RequestAd.DeviceInfo b() {
                com.vungle.publisher.protocol.message.RequestAd.DeviceInfo deviceInfo = new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo();
                deviceInfo.a = this.d.a();
                deviceInfo.b = this.c.b();
                deviceInfo.c = Boolean.valueOf(this.b.i());
                deviceInfo.d = Boolean.valueOf(this.a.isSoundEnabled());
                deviceInfo.e = this.b.f();
                deviceInfo.f = this.d.b();
                deviceInfo.g = this.b.c();
                deviceInfo.h = com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.a.a;
                deviceInfo.i = this.b.g();
                deviceInfo.j = this.b.l();
                return deviceInfo;
            }
        }

        public enum a {
            ;

            static {
                a = new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.a("android");
                b = new com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.a[]{a};
            }

            private a(String str) {
            }
        }

        protected DeviceInfo() {
        }

        public final JSONObject b() {
            Object obj;
            JSONObject b = super.b();
            b.putOpt("connection", this.a);
            b.putOpt("dim", bf.a(this.b));
            String str = "isSdCardAvailable";
            Boolean bool = this.c;
            if (bool == null) {
                obj = null;
            } else {
                obj = Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            b.putOpt(str, obj);
            b.putOpt("soundEnabled", this.d);
            b.putOpt("model", this.e);
            b.putOpt("networkOperator", this.f);
            b.putOpt("osVersion", this.g);
            b.putOpt("platform", this.h);
            b.putOpt("volume", this.i);
            b.putOpt("userAgent", this.j);
            return b;
        }
    }

    public static abstract class a extends MessageFactory {
        @Inject
        protected Factory a;
        @Inject
        as b;
        @Inject
        protected com.vungle.publisher.protocol.message.RequestAd.DeviceInfo.Factory c;
        @Inject
        protected at d;

        protected a() {
        }

        protected RequestAd b() {
            RequestAd requestAd = (RequestAd) a();
            requestAd.a = this.b.a();
            requestAd.b = this.b.b();
            requestAd.c = this.a.b();
            requestAd.d = this.c.b();
            requestAd.e = Boolean.valueOf(this.b.e());
            requestAd.f = this.d.b();
            return requestAd;
        }
    }

    public JSONObject b() {
        JSONObject b = super.b();
        b.putOpt("isu", this.b);
        b.putOpt("ifa", this.a);
        b.putOpt("demo", bf.a(this.c));
        b.putOpt("deviceInfo", bf.a(this.d));
        if (Boolean.TRUE.equals(this.e)) {
            b.putOpt("isAdTrackingDisabled", this.e);
        }
        b.putOpt("pubAppId", this.f);
        return b;
    }
}