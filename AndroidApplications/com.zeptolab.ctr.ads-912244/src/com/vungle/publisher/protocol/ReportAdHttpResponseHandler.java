package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.log.Logger;
import com.vungle.publisher.bn;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.reporting.AdReportManager;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class ReportAdHttpResponseHandler extends InfiniteRetryHttpResponseHandler {
    public static final Creator CREATOR;
    @Inject
    Provider a;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        ReportAdHttpResponseHandler a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return (ReportAdHttpResponseHandler) this.a.b(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new ReportAdHttpResponseHandler[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        AdReportManager adReportManager = (AdReportManager) this.a.get();
        Logger.i(Logger.REPORT_TAG, new StringBuilder("deleting report ").append(((ReportAdHttpRequest) httpTransaction.a).e).toString());
        adReportManager.c.a(new Integer[]{num});
    }
}