package com.vungle.publisher.protocol.message;

import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.db.model.StreamingAdReport;
import com.vungle.publisher.db.model.StreamingVideo;
import com.vungle.publisher.protocol.message.RequestAd.a;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class ReportStreamingAd extends ReportAd {

    @Singleton
    public static class Factory extends com.vungle.publisher.protocol.message.ReportAd.Factory {
        @Inject
        PlayFactory b;
        @Inject
        com.vungle.publisher.protocol.message.RequestStreamingAd.Factory c;

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
            StreamingAdReport streamingAdReport = (StreamingAdReport) adReport;
            ReportStreamingAd reportStreamingAd = (ReportStreamingAd) super.a(streamingAdReport);
            if (reportStreamingAd != null) {
                reportStreamingAd.l = ((StreamingVideo) ((StreamingAd) streamingAdReport.e()).j()).g;
            }
            return reportStreamingAd;
        }

        protected final /* synthetic */ Object a() {
            return new ReportStreamingAd();
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.protocol.message.ReportAd.Play.Factory b() {
            return this.b;
        }

        protected final /* bridge */ /* synthetic */ a c() {
            return this.c;
        }
    }
}