package com.wopnersoft.unitconverter.plus.util;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.webkit.WebView;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.xmlpull.v1.XmlPullParser;

// compiled from: ProGuard
public final class am {
    public static Dialog a(Context context) {
        String e = e(context);
        View webView = new WebView(context);
        webView.loadData(e, "text/html", "utf-8");
        return new Builder(context).setTitle(2131362785).setIcon(2130837677).setCancelable(true).setView(webView).setPositiveButton(2131361856, new an(context)).setNegativeButton(2131361855, new ao()).create();
    }

    public static Dialog a(CurrencyConverter currencyConverter) {
        View webView = new WebView(currencyConverter);
        webView.loadDataWithBaseURL("file:///android_asset/images/", f(currencyConverter), "text/html", "UTF-8", null);
        return new Builder(currencyConverter).setTitle(2131362339).setIcon(2130837659).setView(webView).setPositiveButton(2131361862, new as(currencyConverter)).setNegativeButton(2131361855, new at()).create();
    }

    private static String a(XmlPullParser xmlPullParser) {
        String str = new StringBuilder("<h1>").append(xmlPullParser.getAttributeValue(null, "versionhdr")).append(xmlPullParser.getAttributeValue(null, "version")).append("</h1><ul>").toString();
        int i = xmlPullParser.getEventType();
        while (true) {
            if (i == 3 && !xmlPullParser.getName().equals("change")) {
                Object toString;
                return new StringBuilder(String.valueOf(toString)).append("</ul>").toString();
            }
            if (i == 2 && xmlPullParser.getName().equals("change")) {
                xmlPullParser.next();
                toString = new StringBuilder(String.valueOf(toString)).append("<li>").append(xmlPullParser.getText()).append("</li>").toString();
            }
            i = xmlPullParser.next();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(org.xmlpull.v1.XmlPullParser r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.wopnersoft.unitconverter.plus.util.am.a(org.xmlpull.v1.XmlPullParser, java.lang.String):java.lang.String");
        /*
        r0 = "<style type=\"text/css\">h1 { margin-left: 0px; font-size: 14pt; }li { margin-left: 0px; font-size: 11pt;}ul { padding-left: 30px;}img{ vertical-align:middle;}</style>";
        r1 = "<html><head><style type=\"text/css\">h1 { margin-left: 0px; font-size: 14pt; }li { margin-left: 0px; font-size: 11pt;}ul { padding-left: 30px;}img{ vertical-align:middle;}</style></head><body>";
        r0 = r5.getEventType();	 Catch:{ XmlPullParserException -> 0x006a, IOException -> 0x0078 }
        r4 = r0;
        r0 = r1;
        r1 = r4;
    L_0x000b:
        r2 = 1;
        if (r1 != r2) goto L_0x003d;
    L_0x000e:
        r1 = r6.trim();
        r1 = r1.length();
        if (r1 <= 0) goto L_0x0029;
    L_0x0018:
        r1 = new java.lang.StringBuilder;
        r0 = java.lang.String.valueOf(r0);
        r1.<init>(r0);
        r0 = r1.append(r6);
        r0 = r0.toString();
    L_0x0029:
        r1 = new java.lang.StringBuilder;
        r0 = java.lang.String.valueOf(r0);
        r1.<init>(r0);
        r0 = "</body></html>";
        r0 = r1.append(r0);
        r0 = r0.toString();
        return r0;
    L_0x003d:
        r2 = 2;
        if (r1 != r2) goto L_0x008a;
    L_0x0040:
        r1 = r5.getName();	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r2 = "release";
        r1 = r1.equals(r2);	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        if (r1 == 0) goto L_0x008a;
    L_0x004c:
        r1 = new java.lang.StringBuilder;	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r2 = java.lang.String.valueOf(r0);	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r1.<init>(r2);	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r2 = a(r5);	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r1 = r1.append(r2);	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r0 = r1.toString();	 Catch:{ XmlPullParserException -> 0x0088, IOException -> 0x0086 }
        r1 = r0;
    L_0x0062:
        r0 = r5.next();	 Catch:{ XmlPullParserException -> 0x006a, IOException -> 0x0078 }
        r4 = r0;
        r0 = r1;
        r1 = r4;
        goto L_0x000b;
    L_0x006a:
        r0 = move-exception;
        r4 = r0;
        r0 = r1;
        r1 = r4;
    L_0x006e:
        r2 = "GetHTMLChangelog";
        r3 = r1.getMessage();
        android.util.Log.e(r2, r3, r1);
        goto L_0x000e;
    L_0x0078:
        r0 = move-exception;
        r4 = r0;
        r0 = r1;
        r1 = r4;
    L_0x007c:
        r2 = "GetHTMLChangelog";
        r3 = r1.getMessage();
        android.util.Log.e(r2, r3, r1);
        goto L_0x000e;
    L_0x0086:
        r1 = move-exception;
        goto L_0x007c;
    L_0x0088:
        r1 = move-exception;
        goto L_0x006e;
    L_0x008a:
        r1 = r0;
        goto L_0x0062;
        */
    }

    private static HttpURLConnection a(String[] strArr) {
        int i = 0;
        int i2 = 0;
        while (i2 < strArr.length) {
            int i3 = i + 1;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[i2]).openConnection();
                httpURLConnection.setReadTimeout(i3 * 5000 + 5000);
                httpURLConnection.setConnectTimeout(i3 * 5000 + 5000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                return httpURLConnection;
            } catch (Exception e) {
                exception = e;
                if (i3 == strArr.length) {
                    Exception exception2;
                    throw exception2;
                }
                i2++;
                i = i3;
            }
        }
        return null;
    }

    public static Dialog b(Context context) {
        View webView = new WebView(context);
        webView.loadData(new StringBuilder(String.valueOf(g(context))).append(e(context)).toString(), "text/html", "utf-8");
        return new Builder(context).setTitle(2131362933).setIcon(2130837677).setView(webView).setPositiveButton(2131361856, new ap(context)).setNegativeButton(2131361855, new aq()).create();
    }

    public static Dialog c(Context context) {
        return b(context);
    }

    public static Dialog d(Context context) {
        View webView = new WebView(context);
        webView.loadData(h(context), "text/html", "utf-8");
        return new Builder(context).setTitle(2131362326).setIcon(2130837677).setView(webView).setNegativeButton(2131361855, new ar()).create();
    }

    private static String e(Context context) {
        HttpURLConnection a;
        Throwable th;
        InputStream inputStream = null;
        String str = "";
        try {
            a = a(new String[]{"http://www.wopnersoft.com/uc/upgdmsg.xml", "http://bit.ly/Q2GQYj"});
            try {
                a.connect();
                inputStream = a.getInputStream();
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                newPullParser.setInput(inputStream, null);
                newPullParser.nextTag();
                str = a(newPullParser, context.getString(2131362784));
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e) {
                    }
                }
                if (a != null) {
                    a.disconnect();
                }
            } catch (Exception e2) {
                th = e2;
                Log.e("getUpgdMsgParseXML", "Error pulling upgsmsg from web", th);
                Object xml = context.getResources().getXml(2130968580);
                str = a(xml, context.getString(2131362784));
                xml.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (a != null) {
                    a.disconnect();
                }
                return str;
            }
        } catch (Exception e3) {
            th = e3;
            InputStream inputStream2 = inputStream;
            try {
                Log.e("getUpgdMsgParseXML", "Error pulling upgsmsg from web", th);
                Object xml2 = context.getResources().getXml(2130968580);
                str = a(xml2, context.getString(2131362784));
                xml2.close();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception e4) {
                    }
                }
                if (a != null) {
                    a.disconnect();
                }
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (a != null) {
                    a.disconnect();
                }
                throw th;
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            inputStream2 = inputStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e5) {
                }
            }
            if (a != null) {
                a.disconnect();
            }
            throw th;
        }
        return str;
    }

    private static String f(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        String str = null;
        try {
            InputStream open = context.getAssets().open("ucpcurrencylist.html");
            if (open == null) {
                return str;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return stringBuilder.toString();
                }
                stringBuilder.append(readLine);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return str;
        }
    }

    private static String g(Context context) {
        Object xml = context.getResources().getXml(2130968576);
        String a = a(xml, "");
        xml.close();
        return a;
    }

    private static String h(Context context) {
        Object xml = context.getResources().getXml(2130968577);
        String a = a(xml, "");
        xml.close();
        return a;
    }
}