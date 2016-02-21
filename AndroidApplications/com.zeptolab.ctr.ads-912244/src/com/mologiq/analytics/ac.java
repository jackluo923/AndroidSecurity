package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.cast.Cast;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.zip.GZIPOutputStream;

class ac {
    static boolean a;
    static boolean b;
    private final WeakReference c;

    static class a {
        byte[] a;
        int b;

        a() {
            this.a = null;
            this.b = 0;
        }
    }

    static {
        a = true;
        b = false;
    }

    ac(Context context) {
        this.c = new WeakReference(context);
    }

    static File a(Context context) {
        return context.getCacheDir();
    }

    static String a(Exception exception) {
        Writer stringWriter = new StringWriter();
        exception.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    static Map a(Map map, boolean z) {
        List linkedList = new LinkedList(map.entrySet());
        Collections.sort(linkedList, new ad(z));
        Map linkedHashMap = new LinkedHashMap();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        return linkedHashMap;
    }

    static void a(String str) {
        if (Log.isLoggable("mqaabb", GoogleScorer.CLIENT_PLUS)) {
            Log.d("mqaabb", str);
        }
    }

    static void a(String str, String str2) {
        l lVar = new l(new File(str));
        FileOutputStream a = lVar.a();
        a.write(str2.getBytes());
        a.flush();
        lVar.a(a);
    }

    static boolean a(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static String b() {
        String str = AdTrackerConstants.BLANK;
        String str2 = VERSION.RELEASE;
        str = (str2.length() > 0 ? str + str2 : str + "1.0") + "; ";
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language != null) {
            str = str + language.toLowerCase();
            str2 = locale.getCountry();
            if (str2 != null) {
                str = (str + "-") + str2.toLowerCase();
            }
        } else {
            str = str + "en";
        }
        str2 = Build.MODEL;
        if (str2.length() > 0) {
            str = (str + "; ") + str2;
        }
        str2 = Build.ID;
        if (str2.length() > 0) {
            str = (str + " Build/") + str2;
        }
        str2 = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2";
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2", new Object[]{str});
    }

    static String b(Context context) {
        if (!a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo.isAvailable()) {
            return "wifi";
        }
        return networkInfo2.isAvailable() ? "mobile" : "none";
    }

    static String b(String str) {
        File file = new File(str);
        return file.exists() ? new String(new l(file).c()) : AdTrackerConstants.BLANK;
    }

    static boolean b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return context.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    static byte[] c(String str) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        byte[] toByteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return toByteArray;
    }

    @SuppressLint({"NewApi"})
    String a() {
        Context context = (Context) this.c.get();
        if (context == null) {
            return b();
        }
        try {
            Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(new Class[]{Context.class, WebView.class});
            declaredConstructor.setAccessible(true);
            String userAgentString = ((WebSettings) declaredConstructor.newInstance(new Object[]{context.getApplicationContext(), null})).getUserAgentString();
            declaredConstructor.setAccessible(false);
            return userAgentString;
        } catch (Exception e) {
            return Thread.currentThread().getName().equalsIgnoreCase("main") ? new WebView(context).getSettings().getUserAgentString() : b();
        }
    }

    String a(String str, String str2, Context context, int i, int i2, boolean z) {
        InputStream inputStream = null;
        FileOutputStream fileOutputStream = null;
        String str3 = AdTrackerConstants.BLANK;
        try {
            c cVar;
            str3 = str + "?v=" + b.a + "&p=" + (context.getPackageName() == null ? AdTrackerConstants.BLANK : context.getPackageName());
            a(str3);
            URL url = new URL(str3);
            a(str2);
            if (z) {
                t tVar = new t();
                c cVar2 = new c();
                str2 = tVar.b(cVar2.b()) + AdTrackerConstants.BLANK + cVar2.a(str2);
                cVar = cVar2;
            } else {
                cVar = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            ac acVar = new ac(context);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestProperty("User-Agent", acVar.a());
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i2);
            if (str2 == null || str2.length() <= 0) {
                httpURLConnection.setRequestProperty("Content-Length", Integer.toString(0));
            } else {
                byte[] c = c(str2);
                httpURLConnection.setRequestProperty("Content-Length", Integer.toString(c.length));
                httpURLConnection.getOutputStream().write(c);
            }
            httpURLConnection.getOutputStream().flush();
            int responseCode = httpURLConnection.getResponseCode();
            int contentLength = httpURLConnection.getContentLength();
            a("Error Code: " + responseCode);
            a("Content Length: " + contentLength);
            a("Time Taken: " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            if (responseCode == 200) {
                int i3;
                InputStream inputStream2 = (InputStream) httpURLConnection.getContent();
                List arrayList = new ArrayList();
                int i4 = 0;
                responseCode = 8192;
                while (responseCode != -1) {
                    byte[] bArr = new byte[8192];
                    responseCode = inputStream2.read(bArr, 0, AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE);
                    if (responseCode > 0) {
                        a aVar = new a();
                        aVar.a = bArr;
                        aVar.b = responseCode;
                        i3 = i4 + responseCode;
                        arrayList.add(aVar);
                        i4 = i3;
                    }
                }
                inputStream2.close();
                if (i4 > 0) {
                    byte[] bArr2 = new byte[i4];
                    contentLength = 0;
                    int i5 = 0;
                    while (i5 < arrayList.size()) {
                        a aVar2 = (a) arrayList.get(i5);
                        responseCode = 0;
                        while (responseCode < aVar2.b && contentLength < i4) {
                            i3 = contentLength + 1;
                            bArr2[contentLength] = aVar2.a[responseCode];
                            responseCode++;
                            contentLength = i3;
                        }
                        i5++;
                    }
                    String str4 = new String(bArr2);
                    if (!z || cVar == null) {
                        a("Return Value: " + new String(str4));
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                        if (fileOutputStream == null) {
                            return str4;
                        }
                        try {
                            fileOutputStream.close();
                            return str4;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            return str4;
                        }
                    } else {
                        str4 = cVar.a(cVar.b(), str4);
                        a("Return Value: " + new String(str4));
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (fileOutputStream == null) {
                            return str4;
                        }
                        try {
                            fileOutputStream.close();
                            return str4;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return str4;
                        }
                    }
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
        } catch (Exception e7) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
        }
        return AdTrackerConstants.BLANK;
    }
}