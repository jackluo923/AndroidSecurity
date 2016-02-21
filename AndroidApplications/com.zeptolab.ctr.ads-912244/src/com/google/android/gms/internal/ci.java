package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.ch.a;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ci extends a {
    private static final Object op;
    private static ci oq;
    private final Context mContext;
    private final au or;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Context os;
        final /* synthetic */ cd ot;
        final /* synthetic */ ck ou;
        final /* synthetic */ String ov;

        AnonymousClass_1(Context context, cd cdVar, ck ckVar, String str) {
            this.os = context;
            this.ot = cdVar;
            this.ou = ckVar;
            this.ov = str;
        }

        public void run() {
            dd a = dd.a(this.os, new ab(), false, false, null, this.ot.kN);
            a.setWillNotDraw(true);
            this.ou.b(a);
            de bb = a.bb();
            bb.a("/invalidRequest", this.ou.oz);
            bb.a("/loadAdURL", this.ou.oA);
            bb.a("/log", aq.mb);
            da.s("Getting the ad request URL.");
            a.loadDataWithBaseURL("http://googleads.g.doubleclick.net", "<!DOCTYPE html><html><head><script src=\"http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.js\"></script><script>AFMA_buildAdURL(" + this.ov + ");</script></head><body></body></html>", WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
        }
    }

    static {
        op = new Object();
    }

    private ci(Context context, au auVar) {
        this.mContext = context;
        this.or = auVar;
    }

    private static cf a(Context context, au auVar, cd cdVar) {
        da.s("Starting ad request from service.");
        auVar.init();
        cm cmVar = new cm(context);
        if (cmVar.oX == -1) {
            da.s("Device is offline.");
            return new cf(2);
        } else {
            ck ckVar = new ck(cdVar.applicationInfo.packageName);
            if (cdVar.oc.extras != null) {
                String string = cdVar.oc.extras.getString("_ad");
                if (string != null) {
                    return cj.a(context, cdVar, string);
                }
            }
            String a = cj.a(cdVar, cmVar, auVar.a(250));
            if (a == null) {
                return new cf(0);
            }
            cz.pT.post(new AnonymousClass_1(context, cdVar, ckVar, a));
            a = ckVar.aI();
            return TextUtils.isEmpty(a) ? new cf(ckVar.getErrorCode()) : a(context, cdVar.kN.pU, a);
        }
    }

    public static cf a(Context context, String str, String str2) {
        try {
            cl clVar = new cl();
            URL url = new URL(str2);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            URL url2 = url;
            int i = 0;
            while (true) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
                cv.a(context, str, false, httpURLConnection);
                int responseCode = httpURLConnection.getResponseCode();
                Map headerFields = httpURLConnection.getHeaderFields();
                cf cfVar;
                if (responseCode < 200 || responseCode >= 300) {
                    a(url2.toString(), headerFields, null, responseCode);
                    if (responseCode < 300 || responseCode >= 400) {
                        da.w("Received error HTTP response code: " + responseCode);
                        cfVar = new cf(0);
                        httpURLConnection.disconnect();
                        return cfVar;
                    } else {
                        Object headerField = httpURLConnection.getHeaderField("Location");
                        if (TextUtils.isEmpty(headerField)) {
                            da.w("No location header to follow redirect.");
                            cfVar = new cf(0);
                            httpURLConnection.disconnect();
                            return cfVar;
                        } else {
                            url2 = new URL(headerField);
                            i++;
                            if (i > 5) {
                                da.w("Too many redirects.");
                                cfVar = new cf(0);
                                httpURLConnection.disconnect();
                                return cfVar;
                            } else {
                                clVar.d(headerFields);
                                httpURLConnection.disconnect();
                            }
                        }
                    }
                } else {
                    String toString = url2.toString();
                    String a = cv.a(new InputStreamReader(httpURLConnection.getInputStream()));
                    a(toString, headerFields, a, responseCode);
                    clVar.a(toString, headerFields, a);
                    cfVar = clVar.f(elapsedRealtime);
                    httpURLConnection.disconnect();
                    return cfVar;
                }
            }
        } catch (IOException e) {
            da.w("Error while connecting to ad server: " + e.getMessage());
            return new cf(2);
        }
    }

    public static ci a(Context context, au auVar) {
        ci ciVar;
        synchronized (op) {
            if (oq == null) {
                oq = new ci(context.getApplicationContext(), auVar);
            }
            ciVar = oq;
        }
        return ciVar;
    }

    private static void a(String str, Map map, String str2, int i) {
        if (da.n(GoogleScorer.CLIENT_PLUS)) {
            da.v("Http Response: {\n  URL:\n    " + str + "\n  Headers:");
            if (map != null) {
                Iterator it = map.keySet().iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    da.v("    " + str3 + ":");
                    Iterator it2 = ((List) map.get(str3)).iterator();
                    while (it2.hasNext()) {
                        da.v("      " + ((String) it2.next()));
                    }
                }
            }
            da.v("  Body:");
            if (str2 != null) {
                int i2 = 0;
                while (i2 < Math.min(str2.length(), 100000)) {
                    da.v(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                    i2 += 1000;
                }
            } else {
                da.v("    null");
            }
            da.v("  Response Code:\n    " + i + "\n}");
        }
    }

    public cf b(cd cdVar) {
        return a(this.mContext, this.or, cdVar);
    }
}