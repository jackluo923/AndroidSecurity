package com.IQzone.postitial.obfuscated;

import android.content.res.Resources;
import android.util.TypedValue;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class fh {
    public String a;
    private final String b;
    private String c;

    public fh(String str, String str2, int i, String str3, String str4) {
        this.b = str;
        this.c = String.format("<r xmlns=\"http://svc.picdial.com/WebServices/%sInput\" k=\"%s\" pi=\"%d\" cv=\"%s\" i=\"%s\"", new Object[]{str, str2, Integer.valueOf(i), str3, str4});
        this.a = AdTrackerConstants.BLANK;
    }

    public fh(String str, String str2, int i, String str3, String str4, String str5) {
        this.b = str;
        this.c = String.format("<r xmlns=\"http://svc.picdial.com/WebServices/%sInput\" k=\"%s\" pcfv=\"%s\" pi=\"%d\" cv=\"%s\" i=\"%s\"", new Object[]{str, str2, str5, Integer.valueOf(i), str3, str4});
        this.a = AdTrackerConstants.BLANK;
    }

    public fh(String str, String str2, String str3, int i, String str4, String str5, String str6, int i2, String str7) {
        this.b = str2;
        this.c = String.format("<r xmlns=\"http://svc.picdial.com/WebServices/%sInput\" k=\"%s\" pcfv=\"%s\" pi=\"%d\" cv=\"%s\" i=\"%s\"", new Object[]{str2, str3, str, Integer.valueOf(i), str4, str5, str6, Integer.valueOf(i2), str7});
        this.a = AdTrackerConstants.BLANK;
    }

    public static int a(Resources resources, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, resources.getDisplayMetrics());
    }

    public static ou a(File file, oo ooVar, oo ooVar2) {
        return new pl(new pm(new pm(new pi(new pc(new File(file, i.a), new File(file, "temp"))), ooVar), ooVar2));
    }

    public static ou a(File file, oo ooVar, oo ooVar2, oo ooVar3) {
        return new pl(new ph(new pm(new pm(new pc(new File(file, i.a), new File(file, "temp")), ooVar), ooVar3), ooVar2));
    }

    public static void a(InputStream inputStream, OutputStream outputStream) {
        Set hashSet = new HashSet();
        hashSet.add(outputStream);
        a(inputStream, hashSet, (int)AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
    }

    public static void a(InputStream inputStream, Set set, int i) {
        if (inputStream == null) {
            throw new NullPointerException("<StreamUtil><1>In cannot be null");
        } else if (set == null) {
            throw new NullPointerException("<StreamUtil><2>Out cannot be null");
        } else if (set.contains(null)) {
            throw new NullPointerException("<StreamUtil><3>outs cannot contain null");
        } else {
            byte[] bArr = new byte[i];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((OutputStream) it.next()).write(bArr, 0, read);
                }
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                ((OutputStream) it2.next()).flush();
            }
        }
    }

    public final String a() {
        try {
            if (this.a != AdTrackerConstants.BLANK) {
                return new StringBuilder("<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">").append(String.format("<soap:Body><%s xmlns=\"http://svc.picdial.com/WebServices/\">", new Object[]{this.b})).append(this.c).append(this.a).append("</r>").append(String.format("</%s></soap:Body></soap:Envelope>", new Object[]{this.b})).toString();
            } else {
                return new StringBuilder("<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\">").append(String.format("<soap:Body><%s xmlns=\"http://svc.picdial.com/WebServices/\">", new Object[]{this.b})).append(this.c).append("/>").append(String.format("</%s></soap:Body></soap:Envelope>", new Object[]{this.b})).toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
    }
}