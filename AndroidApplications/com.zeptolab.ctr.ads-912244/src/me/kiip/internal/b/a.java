package me.kiip.internal.b;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import me.kiip.internal.a.f;
import me.kiip.internal.a.l;
import me.kiip.internal.a.p;
import me.kiip.internal.a.q;
import me.kiip.internal.a.s;
import me.kiip.internal.a.t;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class a implements f {
    protected static final boolean a;
    private static int d;
    private static int e;
    protected final f b;
    protected final b c;

    static {
        a = t.b;
        d = 3000;
        e = 4096;
    }

    public a(f fVar) {
        this(fVar, new b(e));
    }

    public a(f fVar, b bVar) {
        this.b = fVar;
        this.c = bVar;
    }

    private static Map a_(Header[] headerArr) {
        Map hashMap = new HashMap();
        int i = 0;
        while (i < headerArr.length) {
            hashMap.put(headerArr[i].getName(), headerArr[i].getValue());
            i++;
        }
        return hashMap;
    }

    private void a_(long j, l lVar, byte[] bArr, StatusLine statusLine) {
        if (a || j > ((long) d)) {
            String str = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
            Object[] objArr = new Object[5];
            objArr[0] = lVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(lVar.s().b());
            t.b(str, objArr);
        }
    }

    private static void a_(String str, l lVar, s sVar) {
        int i = GoogleScorer.CLIENT_PLUS;
        int i2 = 1;
        int i3 = 0;
        p s = lVar.s();
        int r = lVar.r();
        try {
            s.a(sVar);
            String str2 = "%s-retry [timeout=%s]";
            Object[] objArr = new Object[i];
            objArr[i3] = str;
            objArr[i2] = Integer.valueOf(r);
            lVar.a(String.format(str2, objArr));
        } catch (s e) {
            s sVar2 = e;
            String str3 = "%s-timeout-giveup [timeout=%s]";
            Object[] objArr2 = new Object[i];
            objArr2[i3] = str;
            objArr2[i2] = Integer.valueOf(r);
            lVar.a(String.format(str3, objArr2));
            throw sVar2;
        }
    }

    private void a_(Map map, me.kiip.internal.a.b.a aVar) {
        if (aVar != null) {
            if (aVar.b != null) {
                map.put("If-None-Match", aVar.b);
            }
            if (aVar.c > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(aVar.c)));
            }
        }
    }

    private byte[] a_(HttpEntity httpEntity) {
        int i = 0;
        k kVar = new k(this.c, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new q();
            }
            bArr = this.c.a((int)AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    break;
                }
                kVar.write(bArr, 0, read);
            }
            byte[] toByteArray = kVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e) {
                t.a("Error occured when calling consumingContent", new Object[i]);
            }
            this.c.a(bArr);
            kVar.close();
            return toByteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                t.a("Error occured when calling consumingContent", new Object[i]);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public me.kiip.internal.a.i a_(me.kiip.internal.a.l r12) {
        throw new UnsupportedOperationException("Method not decompiled: me.kiip.internal.b.a.a(me.kiip.internal.a.l):me.kiip.internal.a.i");
        /*
        r11 = this;
        r8 = android.os.SystemClock.elapsedRealtime();
    L_0x0004:
        r2 = 0;
        r4 = 0;
        r1 = new java.util.HashMap;
        r1.<init>();
        r0 = new java.util.HashMap;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r0.<init>();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r3 = r12.e();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r11.a(r0, r3);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r3 = r11.b;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r7 = r3.a(r12, r0);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x009e }
        r5 = r7.getStatusLine();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00ee }
        r10 = r5.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00ee }
        r0 = r7.getAllHeaders();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00ee }
        r6 = a(r0);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00ee }
        r0 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r10 != r0) goto L_0x0040;
    L_0x0031:
        r0 = new me.kiip.internal.a.i;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r1 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r2 = r12.e();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r2 = r2.a;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r3 = 1;
        r0.<init>(r1, r2, r6, r3);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
    L_0x003f:
        return r0;
    L_0x0040:
        r0 = r7.getEntity();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r4 = r11.a(r0);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r0 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r1 = r0 - r8;
        r0 = r11;
        r3 = r12;
        r0.a(r1, r3, r4, r5);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r10 == r0) goto L_0x006d;
    L_0x0057:
        r0 = 204; // 0xcc float:2.86E-43 double:1.01E-321;
        if (r10 == r0) goto L_0x006d;
    L_0x005b:
        r0 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r0.<init>();	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        throw r0;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
    L_0x0061:
        r0 = move-exception;
        r0 = "socket";
        r1 = new me.kiip.internal.a.r;
        r1.<init>();
        a(r0, r12, r1);
        goto L_0x0004;
    L_0x006d:
        r0 = new me.kiip.internal.a.i;	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        r1 = 0;
        r0.<init>(r10, r4, r6, r1);	 Catch:{ SocketTimeoutException -> 0x0061, ConnectTimeoutException -> 0x0074, MalformedURLException -> 0x0080, IOException -> 0x00f1 }
        goto L_0x003f;
    L_0x0074:
        r0 = move-exception;
        r0 = "connection";
        r1 = new me.kiip.internal.a.r;
        r1.<init>();
        a(r0, r12, r1);
        goto L_0x0004;
    L_0x0080:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Bad URL ";
        r2 = r2.append(r3);
        r3 = r12.c();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x009e:
        r0 = move-exception;
    L_0x009f:
        r3 = 0;
        if (r2 == 0) goto L_0x00dc;
    L_0x00a2:
        r0 = r2.getStatusLine();
        r0 = r0.getStatusCode();
        r2 = "Unexpected response code %d for %s";
        r5 = 2;
        r5 = new java.lang.Object[r5];
        r6 = 0;
        r7 = java.lang.Integer.valueOf(r0);
        r5[r6] = r7;
        r6 = 1;
        r7 = r12.c();
        r5[r6] = r7;
        me.kiip.internal.a.t.c(r2, r5);
        if (r4 == 0) goto L_0x00e8;
    L_0x00c2:
        r2 = new me.kiip.internal.a.i;
        r3 = 0;
        r2.<init>(r0, r4, r1, r3);
        r1 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r0 == r1) goto L_0x00d0;
    L_0x00cc:
        r1 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r0 != r1) goto L_0x00e2;
    L_0x00d0:
        r0 = "auth";
        r1 = new me.kiip.internal.a.a;
        r1.<init>(r2);
        a(r0, r12, r1);
        goto L_0x0004;
    L_0x00dc:
        r1 = new me.kiip.internal.a.j;
        r1.<init>(r0);
        throw r1;
    L_0x00e2:
        r0 = new me.kiip.internal.a.q;
        r0.<init>(r2);
        throw r0;
    L_0x00e8:
        r0 = new me.kiip.internal.a.h;
        r0.<init>(r3);
        throw r0;
    L_0x00ee:
        r0 = move-exception;
        r2 = r7;
        goto L_0x009f;
    L_0x00f1:
        r0 = move-exception;
        r1 = r6;
        r2 = r7;
        goto L_0x009f;
        */
    }
}