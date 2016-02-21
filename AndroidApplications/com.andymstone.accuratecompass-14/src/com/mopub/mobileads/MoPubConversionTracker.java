package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class MoPubConversionTracker {
    private Context a;
    private String b;
    private SharedPreferences c;
    private String d;

    class ConversionUrlGenerator extends BaseUrlGenerator {
        private ConversionUrlGenerator() {
        }

        private void b(String str) {
            b("id", str);
        }

        public String a(String str) {
            a(str, "/m/open");
            d("6");
            b(MoPubConversionTracker.this.d);
            f(b(MoPubConversionTracker.this));
            e(a(MoPubConversionTracker.this));
            return a();
        }
    }

    class TrackOpen implements Runnable {
        private TrackOpen() {
        }

        public void run() {
            String a = new ConversionUrlGenerator(null).a("ads.mopub.com");
            Log.d("MoPub", new StringBuilder("Conversion track: ").append(a).toString());
            try {
                HttpResponse execute = new DefaultHttpClient().execute(new HttpGet(a));
                if (execute.getStatusLine().getStatusCode() != 200) {
                    Log.d("MoPub", "Conversion track failed: Status code != 200.");
                } else {
                    HttpEntity entity = execute.getEntity();
                    if (entity == null || entity.getContentLength() == 0) {
                        Log.d("MoPub", "Conversion track failed: Response was empty.");
                    } else {
                        Log.d("MoPub", "Conversion track successful.");
                        MoPubConversionTracker.this.c.edit().putBoolean(MoPubConversionTracker.this.b, true).commit();
                    }
                }
            } catch (Exception e) {
                Log.d("MoPub", new StringBuilder("Conversion track failed [").append(e.getClass().getSimpleName()).append("]: ").append(a).toString());
            }
        }
    }

    private boolean a() {
        return this.c.getBoolean(this.b, false);
    }

    public void a(Context context) {
        if (context != null) {
            this.a = context;
            this.d = this.a.getPackageName();
            this.b = new StringBuilder(String.valueOf(this.d)).append(" tracked").toString();
            this.c = this.a.getSharedPreferences("mopubSettings", 0);
            if (a()) {
                Log.d("MoPub", "Conversion already tracked");
            } else {
                new Thread(new TrackOpen(null)).start();
            }
        }
    }
}