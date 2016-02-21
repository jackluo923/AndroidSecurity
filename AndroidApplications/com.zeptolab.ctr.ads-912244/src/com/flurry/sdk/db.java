package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class db implements er {
    protected final String d;
    Set e;
    dd f;
    protected String g;

    class AnonymousClass_1 extends fc {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public void a() {
            db.this.f = new dd(this.a);
        }
    }

    class AnonymousClass_2 extends fc {
        final /* synthetic */ byte[] a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        AnonymousClass_2(byte[] bArr, String str, String str2) {
            this.a = bArr;
            this.b = str;
            this.c = str2;
        }

        public void a() {
            db.this.d(this.a, this.b, this.c);
        }
    }

    class AnonymousClass_3 extends fc {
        final /* synthetic */ com.flurry.sdk.db.a a;

        AnonymousClass_3(com.flurry.sdk.db.a aVar) {
            this.a = aVar;
        }

        public void a() {
            db.this.f();
            if (this.a != null) {
                this.a.a();
            }
        }
    }

    class AnonymousClass_4 extends fc {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        AnonymousClass_4(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public void a() {
            if (!db.this.f.a(this.a, this.b)) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, db.this.d, "Internal error. Block wasn't deleted with id = " + this.a);
            }
            if (!db.this.e.remove(this.a)) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, db.this.d, "Internal error. Block with id = " + this.a + " was not in progress state");
            }
        }
    }

    class AnonymousClass_5 extends fc {
        final /* synthetic */ String a;

        AnonymousClass_5(String str) {
            this.a = str;
        }

        public void a() {
            if (!db.this.e.remove(this.a)) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, db.this.d, "Internal error. Block with id = " + this.a + " was not in progress state");
            }
        }
    }

    public static interface a {
        void a_();
    }

    public db(String str, String str2) {
        this.e = new HashSet();
        this.g = "defaultDataKey_";
        this.d = str2;
        es.a().a(this);
        a(str);
    }

    protected String a(String str, String str2) {
        return this.g + str + "_" + str2;
    }

    protected void a(a aVar) {
        a(new AnonymousClass_3(aVar));
    }

    protected void a(fc fcVar) {
        dl.a().c(fcVar);
    }

    protected void a(String str) {
        a(new AnonymousClass_1(str));
    }

    protected void a(String str, String str2, int i) {
        a(new AnonymousClass_4(str, str2));
    }

    public void a(boolean z) {
        el.a((int)GoogleScorer.CLIENT_APPSTATE, this.d, "onNetworkStateChanged : isNetworkEnable = " + z);
        if (z) {
            d();
        }
    }

    protected abstract void a(byte[] bArr, String str, String str2);

    protected void a(byte[] bArr, String str, String str2, a aVar) {
        if (bArr == null || bArr.length == 0) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.d, "Report that has to be sent is EMPTY or NULL");
        } else {
            c(bArr, str, str2);
            a(aVar);
        }
    }

    protected void b(String str, String str2) {
        a(new AnonymousClass_5(str));
    }

    public void b(byte[] bArr, String str, String str2) {
        a(bArr, str, str2, null);
    }

    protected int c() {
        return this.e.size();
    }

    protected void c(String str, String str2) {
        if (!this.f.a(str, str2)) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.d, "Internal error. Block wasn't deleted with id = " + str);
        }
        if (!this.e.remove(str)) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.d, "Internal error. Block with id = " + str + " was not in progress state");
        }
    }

    protected void c(byte[] bArr, String str, String str2) {
        a(new AnonymousClass_2(bArr, str, str2));
    }

    protected String d(byte[] bArr, String str, String str2) {
        String a = a(str, str2);
        dc dcVar = new dc();
        dcVar.a(bArr);
        String a2 = dcVar.a();
        this.f.a(dcVar, a);
        return a2;
    }

    protected void d() {
        a(null);
    }

    protected boolean e() {
        return c() <= 5;
    }

    protected void f() {
        if (es.a().c()) {
            List a = this.f.a();
            if (a == null || a.isEmpty()) {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, this.d, "No more reports to send.");
            } else {
                Iterator it = a.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (e()) {
                        List c = this.f.c(str);
                        el.a((int)GoogleScorer.CLIENT_APPSTATE, this.d, "Number of not sent blocks = " + c.size());
                        int i = 0;
                        while (i < c.size()) {
                            String str2 = (String) c.get(i);
                            if (this.e.contains(str2) || e()) {
                                byte[] b = new dc(str2).b();
                                if (b == null || b.length == 0) {
                                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, this.d, "Internal ERROR! Report is empty!");
                                    this.f.a(str2, str);
                                } else {
                                    this.e.add(str2);
                                    a(b, str2, str);
                                }
                                i++;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, this.d, "Reports were not sent! No Internet connection!");
        }
    }
}