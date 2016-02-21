package com.chartboost.sdk;

import com.chartboost.sdk.Chartboost.CBAPIResponseCallback;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.i;
import com.chartboost.sdk.impl.i.b;
import com.chartboost.sdk.impl.j;
import org.json.JSONObject;

final class d {
    private static d a;
    private i b;

    class AnonymousClass_1 implements b {
        final /* synthetic */ CBAPIResponseCallback a;

        AnonymousClass_1(CBAPIResponseCallback cBAPIResponseCallback) {
            this.a = cBAPIResponseCallback;
        }

        public void a(j jVar, CBError cBError) {
            if (this.a != null) {
                this.a.onFailure(cBError.b());
            }
        }

        public void a(JSONObject jSONObject, j jVar) {
            if (this.a != null) {
                this.a.onSuccess(jSONObject);
            }
        }
    }

    static {
        a = null;
    }

    private d() {
        this.b = new i("https://www.chartboost.com", null);
    }

    private static d a() {
        if (a == null) {
            a = new d();
        }
        return a;
    }

    protected static void a(CBAPIResponseCallback cBAPIResponseCallback) {
        j jVar = new j("api/more");
        jVar.a("format", i.a);
        a().a(jVar, cBAPIResponseCallback);
    }

    private void a(j jVar, CBAPIResponseCallback cBAPIResponseCallback) {
        jVar.a(Chartboost.sharedChartboost().e());
        this.b.a(jVar, new AnonymousClass_1(cBAPIResponseCallback));
    }

    protected static void a(Object obj, int i, CBAPIResponseCallback cBAPIResponseCallback) {
        j jVar = new j("api/get_batch");
        jVar.a("raw", Integer.valueOf(1));
        jVar.a("cache", Integer.valueOf(1));
        if (obj != null) {
            jVar.a("location", obj);
        }
        if (i > 10) {
            i = 10;
        }
        jVar.a("amount", Integer.valueOf(i));
        a().a(jVar, cBAPIResponseCallback);
    }

    protected static void a(Object obj, CBAPIResponseCallback cBAPIResponseCallback) {
        j jVar = new j("api/get");
        jVar.a("raw", Integer.valueOf(1));
        jVar.a("cache", Integer.valueOf(1));
        if (obj != null) {
            jVar.a("location", obj);
        }
        a().a(jVar, cBAPIResponseCallback);
    }

    protected static void b(Object obj, CBAPIResponseCallback cBAPIResponseCallback) {
        j jVar = new j("api/show");
        jVar.a("ad_id", obj);
        a().a(jVar, cBAPIResponseCallback);
    }
}