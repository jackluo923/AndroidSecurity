package com.gameanalytics.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.gson.Gson;
import com.loopj.twicecircled.android.http.AsyncHttpClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;

public class BatchThread extends Thread {
    private boolean cacheLocally;
    private AsyncHttpClient client;
    private Context context;
    private EventDatabase eventDatabase;
    private String gameKey;
    private int networkPollInterval;
    private boolean pollNetwork;
    private String secretKey;
    private int sendEventInterval;
    private boolean startNewThread;

    protected BatchThread(Context context, AsyncHttpClient asyncHttpClient, EventDatabase eventDatabase, String str, String str2, int i, int i2, boolean z) {
        this.pollNetwork = true;
        this.startNewThread = false;
        this.context = context;
        this.client = asyncHttpClient;
        this.eventDatabase = eventDatabase;
        this.gameKey = str;
        this.secretKey = str2;
        this.sendEventInterval = i;
        this.networkPollInterval = i2;
        this.cacheLocally = z;
    }

    private String getAuthorizationString(String str) {
        return GameAnalytics.md5(new StringBuilder(String.valueOf(str)).append(this.secretKey).toString());
    }

    private boolean isNetworkConnected() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void sendEventSet(String str, String str2) {
        HttpEntity stringEntity;
        GALog.i(new StringBuilder("Raw JSON for ").append(str2).append(" events being sent to GA server: ").append(str).toString());
        Header[] headerArr = new Header[]{new BasicHeader("Authorization", getAuthorizationString(str))};
        HttpEntity httpEntity = null;
        try {
            stringEntity = new StringEntity(str);
        } catch (UnsupportedEncodingException e) {
            Throwable th = e;
            GALog.e(new StringBuilder("Error converting json String into StringEntity: ").append(th.toString()).toString(), th);
            stringEntity = httpEntity;
        }
        this.client.post(this.context, new StringBuilder("http://api.gameanalytics.com/1/").append(this.gameKey).append(str2).toString(), stringEntity, WebRequest.CONTENT_TYPE_JSON, headerArr, GameAnalytics.postResponseHandler);
    }

    private void sendEvents() {
        ArrayList[] events = this.eventDatabase.getEvents();
        Object obj = events[0];
        Object obj2 = events[1];
        Object obj3 = events[2];
        Object obj4 = events[3];
        Gson gson = new Gson();
        if (obj.isEmpty()) {
            GALog.i("No design events to send.");
        } else {
            GALog.i(new StringBuilder("Sending ").append(obj.size()).append(" design events.").toString());
            sendEventSet(gson.toJson(obj), "design");
        }
        if (obj2.isEmpty()) {
            GALog.i("No business events to send.");
        } else {
            GALog.i(new StringBuilder("Sending ").append(obj2.size()).append(" business events.").toString());
            sendEventSet(gson.toJson(obj2), "business");
        }
        if (obj4.isEmpty()) {
            GALog.i("No quality events to send.");
        } else {
            GALog.i(new StringBuilder("Sending ").append(obj4.size()).append(" quality events.").toString());
            sendEventSet(gson.toJson(obj4), "quality");
        }
        if (obj3.isEmpty()) {
            GALog.i("No user events to send.");
        } else {
            GALog.i(new StringBuilder("Sending ").append(obj3.size()).append(" user events.").toString());
            sendEventSet(gson.toJson(obj3), "user");
        }
    }

    protected void manualBatch() {
        this.sendEventInterval = 0;
        this.pollNetwork = false;
        start();
    }

    public void run() {
        GALog.i("BatchThread started");
        long currentTimeMillis = System.currentTimeMillis() + ((long) this.sendEventInterval);
        while (System.currentTimeMillis() < currentTimeMillis) {
            try {
                sleep(currentTimeMillis - System.currentTimeMillis());
            } catch (Exception e) {
                Throwable th = e;
                GALog.e(new StringBuilder("Error: ").append(th.getMessage()).toString(), th);
            }
        }
        if (this.sendEventInterval > 0) {
            GALog.i("Time interval passed");
        }
        if (!this.cacheLocally && !isNetworkConnected()) {
            GALog.i("No network available, clearing events");
            this.eventDatabase.clear();
            this.startNewThread = true;
        } else if (this.pollNetwork || isNetworkConnected()) {
            while (!isNetworkConnected()) {
                GALog.i("Polling network...");
                try {
                    sleep((long) this.networkPollInterval);
                } catch (Exception e2) {
                    th = e2;
                    GALog.e(new StringBuilder("Error: ").append(th.getMessage()).toString(), th);
                }
            }
            GALog.i("Network is connected, sending events");
            this.startNewThread = true;
            sendEvents();
        } else {
            GALog.i("No network available");
            this.startNewThread = true;
        }
    }

    protected boolean shouldStartNewThread() {
        return this.startNewThread;
    }
}