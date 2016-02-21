package com.vungle.publisher.protocol.message;

import com.brightcove.player.event.EventType;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.publisher.bf;
import com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay.Factory;
import java.util.Comparator;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public abstract class RequestAdResponse {
    protected Integer a;
    protected Integer b;
    protected Integer c;
    protected String d;
    protected String e;
    protected CallToActionOverlay f;
    protected String g;
    protected String h;
    protected String i;
    protected String j;
    protected Integer k;
    protected Integer l;
    protected Integer m;
    protected ThirdPartyAdTracking n;
    protected Integer o;
    protected String p;
    protected Integer q;

    public static class CallToActionOverlay extends BaseJsonSerializable {
        protected Float a;
        protected Integer b;
        protected Boolean c;
        protected Boolean d;
        protected Integer e;

        @Singleton
        public static class Factory extends JsonDeserializationFactory {
            @Inject
            protected Factory() {
            }

            protected static com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay b(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return null;
                }
                com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay callToActionOverlay = new com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay();
                callToActionOverlay.a = bf.b(jSONObject, "click_area");
                callToActionOverlay.c = bf.a(jSONObject, "enabled");
                callToActionOverlay.d = bf.a(jSONObject, "show_onclick");
                callToActionOverlay.e = bf.c(jSONObject, "time_show");
                callToActionOverlay.b = bf.c(jSONObject, "time_enabled");
                return callToActionOverlay;
            }

            protected final /* synthetic */ Object a() {
                return new com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay();
            }

            protected final /* synthetic */ Object a(JSONObject jSONObject) {
                return b(jSONObject);
            }
        }

        protected CallToActionOverlay() {
        }

        public final JSONObject b() {
            JSONObject b = super.b();
            b.putOpt("click_area", this.a);
            b.putOpt("enabled", this.c);
            b.putOpt("show_onclick", this.d);
            b.putOpt("time_show", this.e);
            b.putOpt("time_enabled", this.b);
            return b;
        }

        public final Float c() {
            return this.a;
        }

        public final Boolean d() {
            return this.c;
        }

        public final Boolean e() {
            return this.d;
        }

        public final Integer f() {
            return this.e;
        }

        public final Integer g() {
            return this.b;
        }
    }

    public static class ThirdPartyAdTracking extends BaseJsonSerializable {
        protected String[] a;
        protected String[] b;
        protected String[] c;
        protected String[] d;
        protected String[] e;
        protected String[] f;
        protected PlayCheckpoint[] g;
        protected String[] h;
        protected String[] i;
        protected String[] j;

        @Singleton
        public static class Factory extends JsonDeserializationFactory {
            @Inject
            protected com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint.Factory a;

            protected Factory() {
            }

            protected final /* synthetic */ Object a() {
                return new com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking();
            }

            protected final /* synthetic */ Object a(JSONObject jSONObject) {
                return b(jSONObject);
            }

            protected final com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking b(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return null;
                }
                com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking thirdPartyAdTracking = new com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking();
                thirdPartyAdTracking.a = bf.e(jSONObject, "postroll_click");
                thirdPartyAdTracking.b = bf.e(jSONObject, "video_click");
                thirdPartyAdTracking.c = bf.e(jSONObject, "video_close");
                thirdPartyAdTracking.d = bf.e(jSONObject, ErrorUtil.ERROR);
                thirdPartyAdTracking.e = bf.e(jSONObject, "mute");
                thirdPartyAdTracking.f = bf.e(jSONObject, EventType.PAUSE);
                thirdPartyAdTracking.g = (com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint[]) this.a.a(jSONObject.optJSONArray("play_percentage"));
                thirdPartyAdTracking.h = bf.e(jSONObject, "postroll_view");
                thirdPartyAdTracking.i = bf.e(jSONObject, "resume");
                thirdPartyAdTracking.j = bf.e(jSONObject, "unmute");
                return thirdPartyAdTracking;
            }
        }

        public static class PlayCheckpoint extends BaseJsonSerializable {
            public Float a;
            public String[] b;

            @Singleton
            public static class Factory extends JsonDeserializationFactory {
                @Inject
                protected Factory() {
                }

                protected final /* synthetic */ Object a() {
                    return new com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint();
                }

                protected final /* synthetic */ Object a(JSONObject jSONObject) {
                    if (jSONObject == null) {
                        return null;
                    }
                    com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint playCheckpoint = new com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint();
                    playCheckpoint.a = bf.b(jSONObject, "checkpoint");
                    a(jSONObject, "checkpoint", playCheckpoint.a);
                    playCheckpoint.b = bf.e(jSONObject, "urls");
                    a(jSONObject, "urls", playCheckpoint.b);
                    return playCheckpoint;
                }
            }

            @Singleton
            public static class PlayPercentAscendingComparator implements Comparator {
                @Inject
                protected PlayPercentAscendingComparator() {
                }

                public /* synthetic */ int compare(Object obj, Object obj2) {
                    float floatValue;
                    float f = 2.0f;
                    com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint playCheckpoint = (com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint) obj2;
                    Float f2 = ((com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint) obj).a;
                    Float f3 = playCheckpoint.a;
                    floatValue = f2 == null ? 2.0f : f2.floatValue();
                    if (f3 != null) {
                        f = f3.floatValue();
                    }
                    f = floatValue - f;
                    if (f < 0.0f) {
                        return -1;
                    }
                    return f == 0.0f ? 0 : 1;
                }
            }

            protected PlayCheckpoint() {
            }

            public final JSONObject b() {
                JSONObject b = super.b();
                b.putOpt("checkpoint", this.a);
                b.putOpt("urls", this.b);
                return b;
            }
        }

        protected ThirdPartyAdTracking() {
        }

        public final JSONObject b() {
            JSONObject b = super.b();
            b.putOpt("postroll_click", this.a);
            b.putOpt("video_click", this.b);
            b.putOpt("video_close", this.c);
            b.putOpt(ErrorUtil.ERROR, this.d);
            b.putOpt("mute", this.e);
            b.putOpt(EventType.PAUSE, this.f);
            b.putOpt("play_percentage", bf.a(this.g));
            b.putOpt("postroll_view", this.h);
            b.putOpt("resume", this.i);
            b.putOpt("unmute", this.j);
            return b;
        }

        public final String[] c() {
            return this.a;
        }

        public final String[] d() {
            return this.b;
        }

        public final String[] e() {
            return this.c;
        }

        public final String[] f() {
            return this.d;
        }

        public final String[] g() {
            return this.e;
        }

        public final String[] h() {
            return this.f;
        }

        public final PlayCheckpoint[] i() {
            return this.g;
        }

        public final String[] j() {
            return this.h;
        }

        public final String[] k() {
            return this.i;
        }

        public final String[] l() {
            return this.j;
        }
    }

    public static abstract class a extends JsonDeserializationFactory {
        @Inject
        protected Factory a;
        @Inject
        protected com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.Factory b;

        protected a() {
        }

        public /* synthetic */ Object a_(JSONObject jSONObject) {
            return b(jSONObject);
        }

        public RequestAdResponse b(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            RequestAdResponse requestAdResponse = (RequestAdResponse) a();
            requestAdResponse.a = bf.c(jSONObject, "delay");
            requestAdResponse.c = bf.c(jSONObject, "asyncThreshold");
            requestAdResponse.b = bf.c(jSONObject, "retryCount");
            requestAdResponse.d = bf.d(jSONObject, "app_id");
            requestAdResponse.e = bf.d(jSONObject, "callToActionDest");
            Factory factory = this.a;
            requestAdResponse.f = Factory.b(jSONObject.optJSONObject("cta_overlay"));
            requestAdResponse.g = bf.d(jSONObject, "callToActionUrl");
            requestAdResponse.h = bf.d(jSONObject, "campaign");
            a(jSONObject, "campaign", requestAdResponse.h);
            requestAdResponse.i = bf.d(jSONObject, "chk");
            requestAdResponse.j = bf.d(jSONObject, AnalyticsEvent.EVENT_ID);
            requestAdResponse.k = bf.c(jSONObject, "showCloseIncentivized");
            requestAdResponse.l = bf.c(jSONObject, "showClose");
            requestAdResponse.m = bf.c(jSONObject, "countdown");
            requestAdResponse.n = this.b.b(jSONObject.optJSONObject("tpat"));
            requestAdResponse.o = bf.c(jSONObject, "videoHeight");
            a(jSONObject, "videoHeight", requestAdResponse.o);
            requestAdResponse.p = bf.d(jSONObject, PlusShare.KEY_CALL_TO_ACTION_URL);
            a(jSONObject, PlusShare.KEY_CALL_TO_ACTION_URL, requestAdResponse.p);
            requestAdResponse.q = bf.c(jSONObject, "videoWidth");
            a(jSONObject, "videoWidth", requestAdResponse.q);
            return requestAdResponse;
        }
    }

    protected RequestAdResponse() {
    }

    public final Integer a() {
        return this.a;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.e;
    }

    public final CallToActionOverlay d() {
        return this.f;
    }

    public final String e() {
        return this.g;
    }

    public final String f() {
        return this.h;
    }

    public final Integer g() {
        return this.k;
    }

    public final Integer h() {
        return this.l;
    }

    public final Integer i() {
        return this.m;
    }

    public final ThirdPartyAdTracking j() {
        return this.n;
    }

    public final Integer k() {
        return this.o;
    }

    public final String l() {
        return this.p;
    }

    public final Integer m() {
        return this.q;
    }
}