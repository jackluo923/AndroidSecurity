package com.wopnersoft.unitconverter.plus.util;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.wopnersoft.unitconverter.plus.b.ab;
import com.wopnersoft.unitconverter.plus.b.x;
import com.wopnersoft.unitconverter.plus.d.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

// compiled from: ProGuard
public final class o extends AsyncTask implements ab {
    private x a;
    private final m b;
    private final Boolean c;
    private final Boolean d;

    public o(m mVar) {
        this.b = mVar;
        this.c = Boolean.valueOf(false);
        this.d = Boolean.valueOf(false);
    }

    public o(m mVar, Boolean bool, Boolean bool2) {
        this.b = mVar;
        this.c = bool;
        this.d = bool2;
    }

    private Map a(String str, int i, int i2, x xVar) {
        InputStream content;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        Map hashMap = new HashMap();
        try {
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
            HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
            HttpProtocolParams.setUserAgent(basicHttpParams, "Opera/9.80 (X11; Linux x86_64; U; fr) Presto/2.9.168 Version/11.50");
            HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            HttpUriRequest httpGet = new HttpGet();
            httpGet.setURI(new URI(str));
            content = defaultHttpClient.execute(httpGet).getEntity().getContent();
            try {
                String str2 = "";
                String str3 = "";
                bufferedReader = new BufferedReader(new InputStreamReader(content), 32);
                try {
                    Boolean bool = Boolean.valueOf(false);
                    String str4 = str2;
                    int i3 = 0;
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            xVar.b(new StringBuilder("First: ").append(str4).toString(), "");
                            xVar.b(new StringBuilder("Last: ").append(str3).toString(), "");
                            xVar.b(new StringBuilder("Count: ").append(String.valueOf(i3)).toString(), "");
                            if (content != null) {
                                try {
                                    content.close();
                                } catch (IOException e) {
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e2) {
                                }
                            }
                            return hashMap;
                        } else if (bool.booleanValue() && readLine.startsWith("</script>")) {
                            bool = Boolean.valueOf(false);
                        } else if (!bool.booleanValue()) {
                            if (readLine.startsWith("<script")) {
                                bool = Boolean.valueOf(true);
                            } else if (readLine.contains("=")) {
                                String[] split = readLine.split("=");
                                hashMap.put(split[0], Double.valueOf(Double.parseDouble(split[1])));
                                if (str4 == "") {
                                    str4 = split[0];
                                }
                                str3 = split[0];
                                i3++;
                            }
                        }
                    }
                } catch (Exception e3) {
                    th = e3;
                    inputStream = content;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e4) {
                th = e4;
                bufferedReader = bufferedReader2;
                inputStream = content;
                throw new RuntimeException(th);
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = bufferedReader2;
                if (content != null) {
                    content.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th;
            }
        } catch (Exception e5) {
            th = e5;
            bufferedReader = bufferedReader2;
            try {
                Throwable th4;
                throw new RuntimeException(th4);
            } catch (Throwable th5) {
                InputStream inputStream2;
                th4 = th5;
                content = inputStream2;
                if (content != null) {
                    content.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th4;
            }
        } catch (Throwable th6) {
            th4 = th6;
            bufferedReader = bufferedReader2;
            BufferedReader bufferedReader3 = bufferedReader2;
            if (content != null) {
                try {
                    content.close();
                } catch (IOException e6) {
                }
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e7) {
                }
            }
            throw th4;
        }
    }

    private Map b(x xVar) {
        Map map;
        ArrayList arrayList = new ArrayList(2);
        if (this.d.booleanValue()) {
            arrayList.add("http://www.wopnersoft.com/z/test/rd/currency_s.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/z/test/rd/currency_s.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/z/test/rd/currency_s.php");
        } else {
            arrayList.add("http://www.wopnersoft.com/currencyapi/rd/currency_s.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/currency/rd/currency_s.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/currency/rd/currency_s.php");
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            i2++;
            try {
                xVar.b(new StringBuilder("simple attmpt #").append(String.valueOf(i2)).toString(), str);
                int min = Math.min(i2, R.styleable.SherlockTheme_actionBarTabTextStyle);
                int i3 = 20000 * min;
                min *= 30000;
                xVar.b(new StringBuilder("timeouts: ").append(String.valueOf(i3)).toString(), String.valueOf(min));
                long currentTimeMillis = System.currentTimeMillis();
                Map a = a(str, i3, min, xVar);
                long currentTimeMillis2 = System.currentTimeMillis();
                if (a == null || a.size() <= 0) {
                    xVar.b("Result: fail - continue", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    map = a;
                } else {
                    xVar.b("Result: Success - break", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    if (!this.c.booleanValue()) {
                        return a;
                    }
                    map = a;
                }
            } catch (Exception e) {
                exception = e;
                xVar.b("Exception", exception.getMessage());
                map = a;
            }
        }
        return map;
    }

    private Map b(String str, int i, int i2, x xVar) {
        InputStream content;
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        Object hashMap = new HashMap();
        try {
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
            HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
            HttpProtocolParams.setUserAgent(basicHttpParams, "Opera/9.80 (X11; Linux x86_64; U; fr) Presto/2.9.168 Version/11.50");
            String str2 = "";
            String str3 = "";
            Pattern compile = Pattern.compile("<a href=\"\\?curr=\\w{3}\">(\\w{3})</a>:\\s([0-9]*\\.?[0-9]+)<br>");
            HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            HttpUriRequest httpGet = new HttpGet();
            httpGet.setURI(new URI(str));
            content = defaultHttpClient.execute(httpGet).getEntity().getContent();
            try {
                CharSequence readLine;
                String str4;
                int i3;
                bufferedReader = new BufferedReader(new InputStreamReader(content), 32);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            str4 = str2;
                            i3 = 0;
                            break;
                        }
                    } catch (Exception e) {
                        th = e;
                        bufferedReader2 = bufferedReader;
                        inputStream = content;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } while (!readLine.trim().contains("<pre>"));
                Matcher matcher = compile.matcher(readLine);
                str4 = str3;
                str3 = str2;
                i3 = 0;
                while (matcher.find()) {
                    str4 = matcher.group(1);
                    hashMap.put(str4, Double.valueOf(Double.parseDouble(matcher.group(IcsLinearLayout.SHOW_DIVIDER_MIDDLE))));
                    if (str3 == "") {
                        str3 = str4;
                    }
                    i3++;
                }
                String str5 = str4;
                str4 = str3;
                str3 = str5;
                xVar.b(new StringBuilder("First: ").append(str4).toString(), "");
                xVar.b(new StringBuilder("Last: ").append(str3).toString(), "");
                xVar.b(new StringBuilder("Count: ").append(String.valueOf(i3)).toString(), "");
                if (content != null) {
                    try {
                        content.close();
                    } catch (IOException e2) {
                    }
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                    }
                }
                return hashMap;
            } catch (Exception e4) {
                th = e4;
                inputStream = content;
                throw new RuntimeException(th);
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = bufferedReader2;
                if (content != null) {
                    content.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th;
            }
        } catch (Exception e5) {
            th = e5;
            bufferedReader = bufferedReader2;
            try {
                throw new RuntimeException(th);
            } catch (Throwable th4) {
                InputStream inputStream2;
                th = th4;
                content = inputStream2;
                bufferedReader = bufferedReader2;
                if (content != null) {
                    content.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = bufferedReader2;
            BufferedReader bufferedReader3 = bufferedReader2;
            if (content != null) {
                try {
                    content.close();
                } catch (IOException e6) {
                }
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    private Map c(x xVar) {
        Map map;
        Exception exception;
        ArrayList arrayList = new ArrayList(2);
        if (this.d.booleanValue()) {
            arrayList.add("http://www.wopnersoft.com/z/test/rd/currency_st.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/z/test/rd/currency_st.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/z/test/rd/currency_st.php");
        } else {
            arrayList.add("http://www.wopnersoft.com/currencyapi/rd/currency_st.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/currency/rd/currency_st.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/currency/rd/currency_st.php");
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            i2++;
            try {
                xVar.b(new StringBuilder("static attmpt #").append(String.valueOf(i2)).toString(), str);
                int min = Math.min(i2, R.styleable.SherlockTheme_actionBarTabTextStyle);
                int i3 = 20000 * min;
                min *= 30000;
                xVar.b(new StringBuilder("timeouts: ").append(String.valueOf(i3)).toString(), String.valueOf(min));
                long currentTimeMillis = System.currentTimeMillis();
                Map a = a(str, i3, min, xVar);
                long currentTimeMillis2 = System.currentTimeMillis();
                if (a == null || a.size() <= 0) {
                    xVar.b("Result: fail - continue", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    map = a;
                } else {
                    xVar.b("Result: Success - break", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    if (!this.c.booleanValue()) {
                        return a;
                    }
                    map = a;
                }
            } catch (Exception e) {
                exception = e;
                xVar.b("Exception", exception.getMessage());
                map = a;
            }
        }
        return map;
    }

    private Map d(x xVar) {
        Map map;
        ArrayList arrayList = new ArrayList(2);
        if (this.d.booleanValue()) {
            arrayList.add("http://www.wopnersoft.com/z/test/rd/currency_c.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/z/test/rd/currency_c.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/z/test/rd/currency_c.php");
        } else {
            arrayList.add("http://www.wopnersoft.com/currencyapi/rd/currency_c.php");
            arrayList.add("http://wopnersoft.dnsget.org:17091/currency/rd/currency_c.php");
            arrayList.add("http://wopnersoft.duckdns.org:17091/currency/rd/currency_c.php");
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            i2++;
            try {
                xVar.b(new StringBuilder("complex attmpt #").append(String.valueOf(i2)).toString(), str);
                int min = Math.min(i2, IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
                int i3 = 40000 * min;
                min *= 60000;
                xVar.b(new StringBuilder("timeouts: ").append(String.valueOf(i3)).toString(), String.valueOf(min));
                long currentTimeMillis = System.currentTimeMillis();
                Map b = b(str, i3, min, xVar);
                long currentTimeMillis2 = System.currentTimeMillis();
                if (b == null || b.size() <= 0) {
                    xVar.b("Result: fail - continue", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    map = b;
                } else {
                    xVar.b("Result: Success - break", new StringBuilder("delta: ").append(String.valueOf(currentTimeMillis2 - currentTimeMillis)).toString());
                    if (!this.c.booleanValue()) {
                        return b;
                    }
                    map = b;
                }
            } catch (Exception e) {
                exception = e;
                xVar.b("Exception", exception.getMessage());
                map = b;
            }
        }
        return map;
    }

    protected String a(Void... voidArr) {
        SQLiteDatabase sQLiteDatabase = null;
        System.currentTimeMillis();
        x xVar = this.a;
        try {
            this.b.a();
            if (this.b.c() == 0) {
                this.b.i();
            }
            int i = (xVar == null || !xVar.j()) ? 0 : 1;
            if (i != 0) {
                SQLiteDatabase sQLiteDatabase2;
                xVar.b("CheckInternetAvailable...", "Verified internet connection");
                Map h = this.b.h();
                Map b = b(xVar);
                if (this.c.booleanValue()) {
                    sQLiteDatabase2 = sQLiteDatabase;
                }
                if (b == null || b.size() == 0) {
                    xVar.b("complex failed, trying static", "");
                    b = c(xVar);
                    if (this.c.booleanValue()) {
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                }
                if (b == null || b.size() == 0) {
                    xVar.b("simple failed, trying complex", "");
                    b = d(xVar);
                    if (this.c.booleanValue()) {
                        sQLiteDatabase2 = sQLiteDatabase;
                    }
                }
                if (b != null && b.size() > 0) {
                    SQLiteDatabase d = this.b.d();
                    try {
                        d.beginTransaction();
                        Iterator it = b.entrySet().iterator();
                        while (it.hasNext()) {
                            Entry entry = (Entry) it.next();
                            String str = (String) entry.getKey();
                            if (h.containsKey(str)) {
                                double doubleValue = ((Double) entry.getValue()).doubleValue();
                                Double d2 = (Double) h.get(str);
                                if (d2 == null || d2.doubleValue() != doubleValue) {
                                    this.b.a(str, doubleValue);
                                }
                            }
                        }
                        e.a(xVar, "currency_pub_date", new Date().toGMTString());
                        e.a(xVar, "currency_last_updated", new Date().getTime());
                        d.setTransactionSuccessful();
                        sQLiteDatabase = d;
                    } catch (Exception e) {
                        th = e;
                        sQLiteDatabase = d;
                    } catch (Throwable th2) {
                        th = th2;
                        sQLiteDatabase = d;
                    }
                }
                if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                    sQLiteDatabase.endTransaction();
                }
                this.b.b();
                System.currentTimeMillis();
                return "";
            } else {
                string = xVar.getString(2131362395);
                if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                    sQLiteDatabase.endTransaction();
                }
                this.b.b();
                System.currentTimeMillis();
                return string;
            }
        } catch (Exception e2) {
            th = e2;
            try {
                String string2;
                Throwable th3;
                xVar.a("CurrencyDownloader", xVar.getString(2131362073), th3);
                string2 = xVar.getString(2131362073);
                if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                    sQLiteDatabase.endTransaction();
                }
                this.b.b();
                System.currentTimeMillis();
                return string2;
            } catch (Throwable th4) {
                th3 = th4;
                if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                    sQLiteDatabase.endTransaction();
                }
                this.b.b();
                System.currentTimeMillis();
                throw th3;
            }
        }
    }

    public void a() {
        cancel(true);
    }

    public void a(x xVar) {
        this.a = xVar;
        execute(new Void[0]);
    }

    protected void a(String str) {
        super.onPostExecute(str);
        x xVar = this.a;
        if (xVar != null) {
            xVar.a(str);
        }
    }

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((String) obj);
    }
}