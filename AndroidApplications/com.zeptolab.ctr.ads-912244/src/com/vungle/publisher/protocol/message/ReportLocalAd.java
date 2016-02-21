package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bf;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalAdReport;
import com.vungle.publisher.db.model.LocalVideo;
import com.vungle.publisher.protocol.message.RequestAd.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class ReportLocalAd extends ReportAd {
    ExtraInfo m;

    @Singleton
    public static class Factory extends com.vungle.publisher.protocol.message.ReportAd.Factory {
        @Inject
        PlayFactory b;
        @Inject
        com.vungle.publisher.protocol.message.RequestLocalAd.Factory c;

        @Singleton
        static class PlayFactory extends com.vungle.publisher.protocol.message.ReportAd.Play.Factory {
            @Inject
            UserActionFactory a;

            @Singleton
            static class UserActionFactory extends com.vungle.publisher.protocol.message.ReportAd.Play.UserAction.Factory {
                @Inject
                UserActionFactory() {
                }
            }

            PlayFactory() {
            }

            protected final /* bridge */ /* synthetic */ com.vungle.publisher.protocol.message.ReportAd.Play.UserAction.Factory b() {
                return this.a;
            }
        }

        Factory() {
        }

        public final /* synthetic */ ReportAd a(AdReport adReport) {
            LocalAdReport localAdReport = (LocalAdReport) adReport;
            ReportLocalAd reportLocalAd = (ReportLocalAd) super.a(localAdReport);
            if (reportLocalAd != null) {
                reportLocalAd.a = Integer.valueOf(localAdReport.z());
                Factory factory = this.a;
                reportLocalAd.m = Factory.b(localAdReport.f());
                reportLocalAd.l = ((LocalVideo) ((LocalAd) localAdReport.e()).j()).f.c;
            }
            return reportLocalAd;
        }

        protected final /* synthetic */ Object a() {
            return new ReportLocalAd();
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.protocol.message.ReportAd.Play.Factory b() {
            return this.b;
        }

        protected final /* bridge */ /* synthetic */ a c() {
            return this.c;
        }
    }

    public final JSONObject b() {
        JSONObject b = super.b();
        if (b != null) {
            b.putOpt("extraInfo", bf.a(this.m));
        }
        return b;
    }
}