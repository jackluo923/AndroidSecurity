package com.chartboost.sdk.impl;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.util.SparseArray;
import com.admarvel.android.ads.Constants;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Model.CBError;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class i {
    public static com.chartboost.sdk.Libraries.f.a a;
    private static int b;
    private static List h;
    private String c;
    private String d;
    private SparseArray e;
    private int f;
    private Handler g;

    public static interface b {
        void a(j jVar, CBError cBError);

        void a(JSONObject jSONObject, j jVar);
    }

    public static abstract class c implements com.chartboost.sdk.impl.i.b {
        public void a(j jVar, CBError cBError) {
        }
    }

    private class a implements Serializable {
        private j b;
        private JSONObject c;
        private Integer d;
        private com.chartboost.sdk.impl.i.b e;

        public a(int i, j jVar, com.chartboost.sdk.impl.i.b bVar) {
            this.d = Integer.valueOf(i);
            this.b = jVar;
            this.e = bVar;
            this.c = null;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a_(com.chartboost.sdk.Model.CBError r7) {
            throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.impl.i.a.a(com.chartboost.sdk.Model.CBError):void");
            /*
            r6 = this;
            r0 = r6.b;
            r0 = r0.f();
            if (r0 == 0) goto L_0x0075;
        L_0x0008:
            r0 = com.chartboost.sdk.impl.i.this;
            r0 = r0.d;
            if (r0 == 0) goto L_0x0075;
        L_0x0010:
            r1 = com.chartboost.sdk.Libraries.CBUtility.a();
            r0 = new java.lang.StringBuilder;
            r0.<init>();
            r2 = "CBQueuedRequests-";
            r0 = r0.append(r2);
            r2 = com.chartboost.sdk.impl.i.this;
            r2 = r2.d;
            r0 = r0.append(r2);
            r2 = r0.toString();
            r0 = r6.b;	 Catch:{ Exception -> 0x0066 }
            r3 = r0.h();	 Catch:{ Exception -> 0x0066 }
            if (r3 == 0) goto L_0x0057;
        L_0x0035:
            r0 = 0;
            r0 = r1.getString(r2, r0);	 Catch:{ Exception -> 0x0066 }
            if (r0 == 0) goto L_0x006f;
        L_0x003c:
            r4 = new org.json.JSONTokener;	 Catch:{ Exception -> 0x0058 }
            r4.<init>(r0);	 Catch:{ Exception -> 0x0058 }
            r0 = new org.json.JSONArray;	 Catch:{ Exception -> 0x0058 }
            r0.<init>(r4);	 Catch:{ Exception -> 0x0058 }
        L_0x0046:
            r0.put(r3);	 Catch:{ Exception -> 0x0066 }
            r1 = r1.edit();	 Catch:{ Exception -> 0x0066 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x0066 }
            r1.putString(r2, r0);	 Catch:{ Exception -> 0x0066 }
            r1.commit();	 Catch:{ Exception -> 0x0066 }
        L_0x0057:
            return;
        L_0x0058:
            r0 = move-exception;
            r4 = "CBAPIConnection";
            r5 = "Failure reading saved request list";
            com.chartboost.sdk.Libraries.CBLogging.c(r4, r5, r0);	 Catch:{ Exception -> 0x0066 }
            r0 = new org.json.JSONArray;	 Catch:{ Exception -> 0x0066 }
            r0.<init>();	 Catch:{ Exception -> 0x0066 }
            goto L_0x0046;
        L_0x0066:
            r0 = move-exception;
            r1 = "CBAPIConnection";
            r2 = "Unable to save failed request";
            com.chartboost.sdk.Libraries.CBLogging.c(r1, r2, r0);
            goto L_0x0057;
        L_0x006f:
            r0 = new org.json.JSONArray;	 Catch:{ Exception -> 0x0066 }
            r0.<init>();	 Catch:{ Exception -> 0x0066 }
            goto L_0x0046;
        L_0x0075:
            r0 = r6.e;
            if (r0 == 0) goto L_0x0057;
        L_0x0079:
            r0 = r6.e;
            r1 = r6.b;
            r0.a(r1, r7);
            goto L_0x0057;
            */
        }
    }

    private class d implements Runnable {
        private a b;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ boolean a;
            final /* synthetic */ CBError b;

            AnonymousClass_1(boolean z, CBError cBError) {
                this.a = z;
                this.b = cBError;
            }

            public void run() {
                a a = d.this.b;
                if (!this.a || d.this == null) {
                    a.a(this.b);
                } else if (a.e != null) {
                    a.e.a(d.this, a.b);
                }
            }
        }

        public d(a aVar) {
            this.b = aVar;
        }

        private void a(boolean z, CBError cBError) {
            i.this.g.post(new AnonymousClass_1(z, cBError));
        }

        public void run() {
            CBError cBError;
            HttpResponse httpResponse = null;
            CBPreferences instance = CBPreferences.getInstance();
            j a = this.b.b;
            a.a();
            a.b(instance.getAppID(), instance.getAppSignature());
            HttpUriRequest httpPost = new HttpPost((i.this.c == null ? "https://live.chartboost.com" : i.this.c) + a.b());
            httpPost.setHeader("Content-Type", "application/json; charset=UTF-8");
            httpPost.setHeader("Accept", "application/json; charset=UTF-8");
            httpPost.setHeader("X-Chartboost-Client", com.chartboost.sdk.Libraries.a.a(instance));
            httpPost.setHeader("X-Chartboost-API", "3.4.0");
            httpPost.setHeader("X-Chartboost-Client", com.chartboost.sdk.Libraries.a.a(instance));
            Map e = a.e();
            if (e != null) {
                Iterator it = e.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    httpPost.setHeader((String) entry.getKey(), entry.getValue() != null ? entry.getValue().toString() : null);
                }
            }
            synchronized (i.this) {
                i.c();
            }
            try {
                if (a.d() != null) {
                    HttpEntity stringEntity = new StringEntity(a.d().toString());
                    stringEntity.setContentType(new BasicHeader("Content-Type", WebRequest.CONTENT_TYPE_JSON));
                    httpPost.setEntity(stringEntity);
                }
                HttpResponse execute = k.b().execute(httpPost);
                try {
                    int statusCode = execute.getStatusLine().getStatusCode();
                    HttpEntity entity = execute.getEntity();
                    try {
                        String readLine;
                        InputStream content = entity.getContent();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(content, HTMLEncoder.ENCODE_NAME_DEFAULT), 2048);
                        StringBuilder stringBuilder = new StringBuilder(content.available());
                        while (true) {
                            readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuilder.append(readLine).append(Constants.FORMATTER);
                        }
                        bufferedReader.close();
                        readLine = stringBuilder.toString();
                    } catch (Exception e2) {
                        readLine = execute.toString();
                    }
                    if (statusCode >= 300 || statusCode < 200) {
                        CBUtility.a(entity);
                        cBError = new CBError(com.chartboost.sdk.Model.CBError.a.e, "Request failed. Response code: " + statusCode + " is not valid (>=200 and <300)");
                    } else {
                        if (readLine != null) {
                            CBError cBError2;
                            JSONObject jSONObject = new JSONObject(new JSONTokener(readLine));
                            com.chartboost.sdk.Libraries.f.a g = this.b.b.g();
                            StringBuilder stringBuilder2 = new StringBuilder();
                            if (g == null || g.a(jSONObject, stringBuilder2)) {
                                this.b.c = jSONObject;
                            } else {
                                cBError2 = new CBError(com.chartboost.sdk.Model.CBError.a.d, "Json response failed validation: " + stringBuilder2.toString());
                            }
                            cBError = cBError2;
                        } else {
                            cBError = new CBError(com.chartboost.sdk.Model.CBError.a.c, "Response is not a valid json object");
                        }
                        CBUtility.a(entity);
                    }
                    i.this.e.remove(this.b.d.intValue());
                } catch (Exception e3) {
                    httpResponse = execute;
                    th = e3;
                    cBError = new CBError(com.chartboost.sdk.Model.CBError.a.a, "Exception on http request: " + th.getLocalizedMessage());
                    CBLogging.a("CBAPIConnection", cBError.a(), th);
                    CBUtility.a(httpResponse);
                    i.this.e.remove(this.b.d.intValue());
                    if (this.b.c != null) {
                    }
                    a(this.b.c != null, cBError);
                }
            } catch (Exception e4) {
                Throwable th2;
                th2 = e4;
                cBError = new CBError(com.chartboost.sdk.Model.CBError.a.a, "Exception on http request: " + th2.getLocalizedMessage());
                CBLogging.a("CBAPIConnection", cBError.a(), th2);
                CBUtility.a(httpResponse);
                i.this.e.remove(this.b.d.intValue());
                if (this.b.c != null) {
                }
                a(this.b.c != null, cBError);
            }
            a(this.b.c != null, cBError);
        }
    }

    static {
        a = f.a(new com.chartboost.sdk.Libraries.f.a[]{f.a(), new com.chartboost.sdk.Libraries.f.c() {
            public String a() {
                return "Must be a valid status code (>=200 && <300)";
            }

            public boolean a(Object obj) {
                int intValue = ((Number) obj).intValue();
                return intValue >= 200 && intValue < 300;
            }
        }});
        b = 0;
        h = new ArrayList();
    }

    public i(String str, String str2) {
        this.g = new Handler();
        this.c = str;
        this.d = str2;
        this.e = new SparseArray();
        this.f = 1;
    }

    public static void a() {
        List arrayList = new ArrayList();
        synchronized (com.chartboost.sdk.Libraries.c.class) {
            arrayList.addAll(h);
            h.clear();
        }
        int i = 0;
        while (i < arrayList.size()) {
            k.a().execute((Runnable) arrayList.get(i));
            i++;
        }
    }

    static /* synthetic */ int c() {
        int i = b + 1;
        b = i;
        return i;
    }

    public void a(j jVar) {
        a(jVar, null);
    }

    public void a(j jVar, b bVar) {
        int i = this.f;
        this.f = i + 1;
        a aVar = new a(i, jVar, bVar);
        if (l.a()) {
            this.e.put(i, aVar);
            a(new d(aVar));
        } else {
            aVar.a(new CBError(com.chartboost.sdk.Model.CBError.a.b, null));
        }
    }

    public void a(Runnable runnable) {
        boolean z = 0;
        synchronized (com.chartboost.sdk.Libraries.c.class) {
            com.chartboost.sdk.Libraries.c.a c = com.chartboost.sdk.Libraries.c.c();
            if (c == com.chartboost.sdk.Libraries.c.a.a || c == com.chartboost.sdk.Libraries.c.a.b) {
                h.add(runnable);
            } else {
                z = 1;
            }
        }
        if (i != 0) {
            k.a().execute(runnable);
        }
    }

    public void b() {
        if (l.a()) {
            SharedPreferences a = CBUtility.a();
            String str = "CBQueuedRequests-" + this.d;
            String string = a.getString(str, null);
            if (string != null) {
                Editor edit = a.edit();
                edit.putString(str, null);
                edit.commit();
                try {
                    JSONArray jSONArray = new JSONArray(new JSONTokener(string));
                    int i = 0;
                    while (i < jSONArray.length()) {
                        try {
                            j a2 = j.a(jSONArray.getJSONObject(i));
                            if (a2 != null) {
                                a(a2);
                            }
                        } catch (Exception e) {
                            CBLogging.c("CBAPIConnection", "Retrying request failed", e);
                        }
                        i++;
                    }
                } catch (Exception e2) {
                    CBLogging.c("CBAPIConnection", "Retrying request list failed", e2);
                }
            }
        }
    }
}