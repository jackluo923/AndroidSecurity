package com.flurry.sdk;

import android.widget.Toast;
import com.flurry.sdk.dn.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class da extends db implements a {
    static String a;
    static String b;
    static String c;
    private static final String h;
    private boolean i;

    class AnonymousClass_1 implements ei.a {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ int a;

            AnonymousClass_1(int i) {
                this.a = i;
            }

            public void run() {
                Toast.makeText(dl.a().b(), "SD HTTP Response Code: " + this.a, 0).show();
            }
        }

        AnonymousClass_1(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public void a(ei eiVar, Void voidR) {
            int e = eiVar.e();
            if (e > 0) {
                el.d(h, "FlurryDataSender: report " + this.a + " sent. HTTP response: " + e);
                if (el.c() <= 3 && el.d()) {
                    dl.a().a(new AnonymousClass_1(e));
                }
                da.this.a(this.a, this.b, e);
                da.this.d();
            } else {
                da.this.b(this.a, this.b);
            }
        }
    }

    class AnonymousClass_2 extends fc {
        final /* synthetic */ int a;

        AnonymousClass_2(int i) {
            this.a = i;
        }

        public void a() {
            if (this.a == 200) {
                dg c = di.a().c();
                if (c != null) {
                    c.b();
                }
            }
        }
    }

    static {
        h = da.class.getSimpleName();
        b = "http://data.flurry.com/aap.do";
        c = "https://data.flurry.com/aap.do";
    }

    public da() {
        this(null);
    }

    da(db.a aVar) {
        super("Analytics", da.class.getSimpleName());
        this.g = "AnalyticsData_";
        g();
        a(aVar);
    }

    private void b(String str) {
        if (!(str == null || str.endsWith(".do"))) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, h, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        a = str;
    }

    private void g() {
        dn a = dm.a();
        this.i = ((Boolean) a.a("UseHttps")).booleanValue();
        a.a("UseHttps", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, h, "initSettings, UseHttps = " + this.i);
        String str = (String) a.a("ReportUrl");
        a.a("ReportUrl", this);
        b(str);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, h, "initSettings, ReportUrl = " + str);
    }

    String a() {
        if (a != null) {
            return a;
        }
        return this.i ? c : b;
    }

    public void a(String str, Object obj) {
        if (str.equals("UseHttps")) {
            this.i = ((Boolean) obj).booleanValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, h, "onSettingUpdate, UseHttps = " + this.i);
        } else if (str.equals("ReportUrl")) {
            String str2 = (String) obj;
            b(str2);
            el.a((int)GoogleScorer.CLIENT_APPSTATE, h, "onSettingUpdate, ReportUrl = " + str2);
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, h, "onSettingUpdate internal error!");
        }
    }

    protected void a(String str, String str2, int i) {
        a(new AnonymousClass_2(i));
        super.a(str, str2, i);
    }

    protected void a(Object obj, String str, String str2) {
        String a = a();
        el.a((int)GoogleScorer.CLIENT_APPSTATE, h, "FlurryDataSender: start upload data " + obj + " with id = " + str + " to " + a);
        fd eiVar = new ei();
        eiVar.a(a);
        eiVar.a(ek.a.c);
        eiVar.a("Content-Type", "application/octet-stream");
        eiVar.a(new et());
        eiVar.a(obj);
        eiVar.a(new AnonymousClass_1(str, str2));
        ej.a().a(this, eiVar);
    }
}