package com.vungle.publisher.protocol.message;

import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.bf;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.protocol.message.RequestAd.a;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class ReportAd extends BaseJsonSerializable {
    protected Integer a;
    protected Long b;
    protected String c;
    protected String d;
    protected Integer e;
    protected String f;
    protected Boolean g;
    protected String h;
    protected Play[] i;
    protected RequestAd j;
    protected String k;
    protected String l;

    public static abstract class Factory extends MessageFactory {
        @Inject
        protected Factory a;

        protected Factory() {
        }

        public ReportAd a(AdReport adReport) {
            com.vungle.publisher.protocol.message.ReportAd.Play[] playArr = null;
            int i = 0;
            if (adReport == null) {
                return null;
            }
            Ad e = adReport.e();
            ReportAd reportAd = (ReportAd) a();
            reportAd.b = adReport.q();
            reportAd.c = e.e();
            reportAd.d = e.d();
            reportAd.e = Integer.valueOf(adReport.k());
            reportAd.f = adReport.h();
            reportAd.g = Boolean.valueOf(adReport.g());
            reportAd.h = adReport.i();
            com.vungle.publisher.protocol.message.ReportAd.Play.Factory b = b();
            AdPlay[] s = adReport.s();
            int length = s == null ? 0 : s.length;
            if (length > 0) {
                playArr = new com.vungle.publisher.protocol.message.ReportAd.Play[length];
                int length2 = s.length;
                length = 0;
                while (i < length2) {
                    int i2 = length + 1;
                    playArr[length] = b.a(s[i]);
                    i++;
                    length = i2;
                }
            }
            reportAd.i = playArr;
            reportAd.j = c().b();
            return reportAd;
        }

        protected abstract com.vungle.publisher.protocol.message.ReportAd.Play.Factory b();

        protected abstract a c();
    }

    public static class Play extends BaseJsonSerializable {
        protected Integer a;
        protected Integer b;
        protected Long c;
        protected UserAction[] d;

        public static abstract class Factory extends MessageFactory {
            protected Factory() {
            }

            final com.vungle.publisher.protocol.message.ReportAd.Play a(AdPlay adPlay) {
                com.vungle.publisher.protocol.message.ReportAd.Play play = null;
                if (adPlay != null) {
                    play = new com.vungle.publisher.protocol.message.ReportAd.Play();
                    b();
                    play.d = com.vungle.publisher.protocol.message.ReportAd.Play.UserAction.Factory.a(adPlay.d());
                    try {
                        play.a = adPlay.a.j();
                    } catch (NullPointerException e) {
                        Logger.w(Logger.PROTOCOL_TAG, "null play report parent");
                    }
                    play.c = adPlay.c;
                    play.b = adPlay.b;
                }
                return play;
            }

            protected final /* synthetic */ Object a() {
                return new com.vungle.publisher.protocol.message.ReportAd.Play();
            }

            protected abstract com.vungle.publisher.protocol.message.ReportAd.Play.UserAction.Factory b();
        }

        public static class UserAction extends BaseJsonSerializable {
            protected String a;
            protected Long b;
            protected String c;

            public static abstract class Factory extends MessageFactory {
                protected Factory() {
                }

                protected static com.vungle.publisher.protocol.message.ReportAd.Play.UserAction[] a(AdReportEvent[] adReportEventArr) {
                    int length = adReportEventArr == null ? 0 : adReportEventArr.length;
                    if (length <= 0) {
                        return null;
                    }
                    com.vungle.publisher.protocol.message.ReportAd.Play.UserAction[] userActionArr = new com.vungle.publisher.protocol.message.ReportAd.Play.UserAction[length];
                    int length2 = adReportEventArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length2) {
                        com.vungle.publisher.protocol.message.ReportAd.Play.UserAction userAction;
                        AdReportEvent adReportEvent = adReportEventArr[i];
                        int i3 = i2 + 1;
                        if (adReportEvent != null) {
                            userAction = new com.vungle.publisher.protocol.message.ReportAd.Play.UserAction();
                            userAction.a = String.valueOf(adReportEvent.b);
                            userAction.b = Long.valueOf(adReportEvent.c);
                            userAction.c = adReportEvent.d;
                        } else {
                            userAction = null;
                        }
                        userActionArr[i2] = userAction;
                        i++;
                        i2 = i3;
                    }
                    return userActionArr;
                }

                protected final /* synthetic */ Object a() {
                    return new com.vungle.publisher.protocol.message.ReportAd.Play.UserAction();
                }
            }

            protected UserAction() {
            }

            public final JSONObject b() {
                JSONObject b = super.b();
                b.putOpt(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY, this.a);
                b.putOpt("timestamp_millis", this.b);
                b.putOpt(Constants.NATIVE_AD_VALUE_ELEMENT, this.c);
                return b;
            }
        }

        Play() {
        }

        public final JSONObject b() {
            JSONObject b = super.b();
            b.putOpt("userActions", bf.a(this.d));
            b.putOpt("videoLength", this.a);
            b.putOpt("videoViewed", this.b);
            b.putOpt(Event.START_TIME, this.c);
            return b;
        }
    }

    protected ReportAd() {
    }

    private List c() {
        List arrayList = new ArrayList();
        if (this.i != null && this.i.length > 0) {
            String toString = AdReportEvent.a.l.toString();
            Play[] playArr = this.i;
            int length = playArr.length;
            int i = 0;
            while (i < length) {
                UserAction[] userActionArr = playArr[i].d;
                if (userActionArr != null) {
                    int length2 = userActionArr.length;
                    int i2 = 0;
                    while (i2 < length2) {
                        UserAction userAction = userActionArr[i2];
                        if (!toString.equals(userAction.a)) {
                            arrayList.add(userAction.a);
                        }
                        i2++;
                    }
                }
                i++;
            }
        }
        return arrayList;
    }

    public JSONObject b() {
        JSONObject b;
        Object valueOf;
        b = this.j == null ? super.b() : this.j.b();
        b.putOpt("ttDownload", this.a);
        b.putOpt("adStartTime", this.b);
        b.putOpt("app_id", this.c);
        b.putOpt("campaign", this.d);
        b.putOpt("adDuration", this.e);
        if (Boolean.TRUE.equals(this.g)) {
            b.putOpt(Fields.NAME, this.f);
        }
        String str = "incentivized";
        Boolean bool = this.g;
        if (bool != null) {
            valueOf = Integer.valueOf(bool.booleanValue() ? 1 : 0);
        } else {
            valueOf = null;
        }
        b.putOpt(str, valueOf);
        b.putOpt("placement", this.h);
        b.putOpt("plays", bf.a(this.i));
        b.putOpt(AnalyticsEvent.EVENT_ID, this.k);
        b.putOpt("clickedThrough", new JSONArray(c()));
        b.putOpt(PlusShare.KEY_CALL_TO_ACTION_URL, this.l);
        return b;
    }
}