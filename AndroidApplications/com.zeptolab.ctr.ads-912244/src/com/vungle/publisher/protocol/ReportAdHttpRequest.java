package com.vungle.publisher.protocol;

import android.os.Parcel;
import com.vungle.publisher.be;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.net.http.HttpRequest;
import com.vungle.publisher.net.http.HttpRequest.b;
import com.vungle.publisher.protocol.ProtocolHttpRequest.a;
import com.vungle.publisher.protocol.message.ReportAd;
import org.json.JSONException;

public abstract class ReportAdHttpRequest extends ProtocolHttpRequest {
    Integer e;

    public static abstract class Factory extends a {
        protected Factory() {
        }

        public final ReportAdHttpRequest a(AdReport adReport) {
            try {
                ReportAdHttpRequest reportAdHttpRequest = (ReportAdHttpRequest) a();
                reportAdHttpRequest.e = adReport == null ? null : (Integer) adReport.p();
                reportAdHttpRequest.b = this.e + "reportAd";
                reportAdHttpRequest.c.putString("Content-Type", WebRequest.CONTENT_TYPE_JSON);
                ReportAd a = d().a(adReport);
                if (a != null) {
                    reportAdHttpRequest.d = a.a();
                }
                return reportAdHttpRequest;
            } catch (JSONException e) {
                throw new be(e);
            }
        }

        protected /* synthetic */ HttpRequest b() {
            return e();
        }

        protected abstract com.vungle.publisher.protocol.message.ReportAd.Factory d();

        protected abstract ReportAdHttpRequest e();
    }

    protected ReportAdHttpRequest() {
    }

    protected final HttpRequest.a a() {
        return HttpRequest.a.c;
    }

    protected final HttpRequest a(Parcel parcel) {
        super.a(parcel);
        this.e = (Integer) parcel.readValue(ReportAdHttpRequest.class.getClassLoader());
        return this;
    }

    protected final b b() {
        return b.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(this.e);
    }
}