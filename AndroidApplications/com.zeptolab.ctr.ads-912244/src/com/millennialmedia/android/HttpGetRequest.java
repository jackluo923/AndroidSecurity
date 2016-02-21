package com.millennialmedia.android;

import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import com.heyzap.http.AsyncHttpClient;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.TreeMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class HttpGetRequest {
    private static final String c = "HttpGetRequest";
    private HttpClient a;
    private HttpGet b;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String[] a;

        AnonymousClass_1(String[] strArr) {
            this.a = strArr;
        }

        public void run() {
            String[] strArr = this.a;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                MMLog.a(c, String.format("Logging event to: %s", new Object[]{str}));
                try {
                    new HttpGetRequest().a(str);
                } catch (Exception e) {
                    MMLog.e(c, "Logging request failed.", e);
                }
                i++;
            }
        }
    }

    HttpGetRequest() {
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
        this.a = new DefaultHttpClient(basicHttpParams);
        this.b = new HttpGet();
    }

    HttpGetRequest(int i) {
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i);
        this.a = new DefaultHttpClient(basicHttpParams);
        this.b = new HttpGet();
    }

    static String a(InputStream inputStream) {
        BufferedReader bufferedReader;
        Throwable th;
        if (inputStream == null) {
            throw new IOException("Stream is null.");
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 4096);
            try {
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine + Constants.FORMATTER);
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        MMLog.e(c, "Error closing file", e);
                    }
                }
                return stringBuilder.toString();
            } catch (OutOfMemoryError e2) {
                th = e2;
                try {
                    MMLog.e(c, "Out of Memeory: ", th);
                    throw new IOException("Out of memory.");
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            MMLog.e(c, "Error closing file", e3);
                        }
                    }
                    throw th;
                }
            }
        } catch (OutOfMemoryError e4) {
            th = e4;
            bufferedReader = null;
            MMLog.e(c, "Out of Memeory: ", th);
            throw new IOException("Out of memory.");
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            throw th;
        }
    }

    static void a(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            ThreadUtils.a(new AnonymousClass_1(strArr));
        }
    }

    HttpResponse a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.b.setURI(new URI(str));
            return this.a.execute(this.b);
        } catch (OutOfMemoryError e) {
            MMLog.e(c, "Out of memory!", e);
            return null;
        } catch (Exception e2) {
            th = e2;
            Throwable th2;
            if (th2 == null) {
                return null;
            }
            MMLog.e(c, "Error connecting:", th2);
            return null;
        }
    }

    void a(String str, boolean z, long j, TreeMap treeMap) {
        int i = 1;
        if (!z) {
            i = 0;
        }
        try {
            StringBuilder stringBuilder = new StringBuilder("http://cvt.mydas.mobi/handleConversion?firstlaunch=" + i);
            if (str != null) {
                stringBuilder.append("&goalId=" + str);
            }
            if (j > 0) {
                stringBuilder.append("&installtime=" + (j / 1000));
            }
            if (treeMap != null) {
                Iterator it = treeMap.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    stringBuilder.append(String.format("&%s=%s", new Object[]{entry.getKey(), URLEncoder.encode((String) entry.getValue(), HTMLEncoder.ENCODE_NAME_DEFAULT)}));
                }
            }
            String toString = stringBuilder.toString();
            MMLog.b(c, String.format("Sending conversion tracker report: %s", new Object[]{toString}));
            this.b.setURI(new URI(toString));
            if (this.a.execute(this.b).getStatusLine().getStatusCode() == 200) {
                MMLog.a(c, String.format("Successful conversion tracking event: %d", new Object[]{Integer.valueOf(httpResponse.getStatusLine().getStatusCode())}));
            } else {
                MMLog.e(c, String.format("Conversion tracking error: %d", new Object[]{Integer.valueOf(httpResponse.getStatusLine().getStatusCode())}));
            }
        } catch (IOException e) {
            MMLog.e(c, "Conversion tracking error: ", e);
        }
    }
}