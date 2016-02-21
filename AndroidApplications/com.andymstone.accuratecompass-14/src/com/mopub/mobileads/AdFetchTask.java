package com.mopub.mobileads;

import android.os.AsyncTask;
import android.util.Log;
import com.andymstone.core.o;
import com.mopub.mobileads.util.HttpResponses;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class AdFetchTask extends AsyncTask {
    private static /* synthetic */ int[] h;
    private TaskTracker a;
    private AdViewController b;
    private Exception c;
    private HttpClient d;
    private long e;
    private String f;
    private FetchStatus g;

    AdFetchTask(TaskTracker taskTracker, AdViewController adViewController, String str, int i) {
        this.g = FetchStatus.a;
        this.a = taskTracker;
        this.b = adViewController;
        this.d = a(i);
        this.e = this.a.a();
        this.f = str;
    }

    private AdLoadTask a(String str) {
        HttpUriRequest httpGet = new HttpGet(str);
        httpGet.addHeader("User-Agent", this.f);
        if (!b()) {
            return null;
        }
        HttpResponse execute = this.d.execute(httpGet);
        if (!b(execute)) {
            return null;
        }
        this.b.a(execute);
        return a(execute) ? AdLoadTask.a(execute, this.b) : null;
    }

    private DefaultHttpClient a(int i) {
        HttpParams basicHttpParams = new BasicHttpParams();
        if (i > 0) {
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
            HttpConnectionParams.setSoTimeout(basicHttpParams, i);
        }
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        return new DefaultHttpClient(basicHttpParams);
    }

    private boolean a(HttpResponse httpResponse) {
        if ("1".equals(HttpResponses.a(httpResponse, "X-Warmup"))) {
            Log.d("MoPub", new StringBuilder("Ad Unit (").append(this.b.f()).append(") is still warming up. ").append("Please try again in a few minutes.").toString());
            this.g = FetchStatus.f;
            return false;
        } else {
            if (!"clear".equals(HttpResponses.a(httpResponse, "X-Adtype"))) {
                return true;
            }
            Log.d("MoPub", new StringBuilder("No inventory found for adunit (").append(this.b.f()).append(").").toString());
            this.g = FetchStatus.e;
            return false;
        }
    }

    static /* synthetic */ int[] a() {
        int[] iArr = h;
        if (iArr == null) {
            iArr = new int[FetchStatus.values().length];
            try {
                iArr[FetchStatus.f.ordinal()] = 6;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[FetchStatus.e.ordinal()] = 5;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[FetchStatus.b.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[FetchStatus.c.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[FetchStatus.d.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[FetchStatus.a.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            h = iArr;
        }
        return iArr;
    }

    private boolean b() {
        if (isCancelled()) {
            this.g = FetchStatus.b;
            return false;
        } else if (this.b != null && !this.b.m()) {
            return true;
        } else {
            Log.d("MoPub", "Error loading ad: AdViewController has already been GCed or destroyed.");
            return false;
        }
    }

    private boolean b(HttpResponse httpResponse) {
        if (httpResponse == null || httpResponse.getEntity() == null) {
            Log.d("MoPub", "MoPub server returned null response.");
            this.g = FetchStatus.d;
            return false;
        } else {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode >= 400) {
                Log.d("MoPub", new StringBuilder("Server error: returned HTTP status code ").append(Integer.toString(statusCode)).append(". Please try again.").toString());
                this.g = FetchStatus.c;
                return false;
            } else if (statusCode == 200) {
                return true;
            } else {
                Log.d("MoPub", new StringBuilder("MoPub server returned invalid response: HTTP status code ").append(Integer.toString(statusCode)).append(".").toString());
                this.g = FetchStatus.d;
                return false;
            }
        }
    }

    private void c() {
        int i = 600000;
        if (this.b != null) {
            int o = (int) (((double) this.b.o()) * 1.5d);
            if (o <= 600000) {
                i = o;
            }
            this.b.b(i);
        }
    }

    private void d() {
        this.a = null;
        this.c = null;
        this.g = FetchStatus.a;
    }

    private void e() {
        if (this.d != null) {
            ClientConnectionManager connectionManager = this.d.getConnectionManager();
            if (connectionManager != null) {
                connectionManager.shutdown();
            }
            this.d = null;
        }
    }

    private boolean f() {
        return this.a.b(this.e);
    }

    protected AdLoadTask a(String... strArr) {
        AdLoadTask adLoadTask = null;
        try {
            adLoadTask = a(strArr[0]);
            e();
            return adLoadTask;
        } catch (Exception e) {
            this.c = e;
            e();
            return adLoadTask;
        }
    }

    protected void a(AdLoadTask adLoadTask) {
        if (!f()) {
            Log.d("MoPub", "Ad response is stale.");
            d();
        } else if (this.b == null || this.b.m()) {
            if (adLoadTask != null) {
                adLoadTask.b();
            }
            this.a.a(this.e);
            d();
        } else {
            if (adLoadTask == null) {
                MoPubErrorCode moPubErrorCode;
                if (this.c != null) {
                    Log.d("MoPub", new StringBuilder("Exception caught while loading ad: ").append(this.c).toString());
                }
                switch (a()[this.g.ordinal()]) {
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        moPubErrorCode = MoPubErrorCode.k;
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        moPubErrorCode = MoPubErrorCode.d;
                        break;
                    case o.MyAlertDialog_MAD_titleStyle:
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        moPubErrorCode = MoPubErrorCode.b;
                        break;
                    case o.MyAlertDialog_MAD_textAppearanceMedium:
                    case o.MyAlertDialog_MAD_divider:
                        moPubErrorCode = MoPubErrorCode.a;
                        break;
                    default:
                        moPubErrorCode = MoPubErrorCode.k;
                        break;
                }
                this.b.b(moPubErrorCode);
                if (this.g == FetchStatus.c) {
                    c();
                    this.g = FetchStatus.a;
                }
            } else {
                adLoadTask.a();
                adLoadTask.b();
            }
            this.a.a(this.e);
            d();
        }
    }

    protected /* synthetic */ Object doInBackground(Object... objArr) {
        return a((String[]) objArr);
    }

    protected void onCancelled() {
        if (f()) {
            Log.d("MoPub", "Ad loading was cancelled.");
            if (this.c != null) {
                Log.d("MoPub", new StringBuilder("Exception caught while loading ad: ").append(this.c).toString());
            }
            this.a.a(this.e);
            d();
        } else {
            Log.d("MoPub", "Ad response is stale.");
            d();
        }
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((AdLoadTask) obj);
    }
}