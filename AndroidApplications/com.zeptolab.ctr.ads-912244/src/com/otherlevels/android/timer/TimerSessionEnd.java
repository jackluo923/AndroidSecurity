package com.otherlevels.android.timer;

import android.util.Log;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.TimerTask;
import org.json.JSONObject;

public class TimerSessionEnd extends TimerTask {
    private static final String TAG = "OLAL-Lib";
    private boolean httpCallCompleted;
    private JSONObject payload;
    private String sessionEndURL;

    public TimerSessionEnd(JSONObject jSONObject, String str) {
        this.httpCallCompleted = false;
        this.payload = jSONObject;
        this.sessionEndURL = str;
    }

    private boolean httpCallStatus() {
        return this.httpCallCompleted;
    }

    private void makeAsyncHttpCall(String str, String str2) {
        Log.i(TAG, "OlAndroidLibrary: Making Async Http Post Call (TIMER)");
        Log.i(TAG, "OlAndroidLibrary: URL:" + str2 + " - Data:" + str);
        RequestParams requestParams = new RequestParams();
        requestParams.put("payload", str);
        try {
            new AsyncHttpClient().post(str2, requestParams, new AsyncHttpResponseHandler() {
                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Response: " + str);
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During Async HTTP Call - ", e);
        }
    }

    @Deprecated
    private void makeSyncHTTPCall(String str, String str2) {
        try {
            Log.i(TAG, "OlAndroidLibrary: Initiating SESSION END");
            URLConnection openConnection = new URL(str2).openConnection();
            openConnection.setDoOutput(true);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openConnection.getOutputStream());
            outputStreamWriter.write(str);
            outputStreamWriter.flush();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openConnection.getInputStream()));
            do {
            } while (bufferedReader.readLine() != null);
            outputStreamWriter.close();
            bufferedReader.close();
            this.httpCallCompleted = true;
            Log.i(TAG, "OlAndroidLibrary: SESSION END COMPLETED");
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught:", e);
        }
    }

    private void sessionEnd(JSONObject jSONObject, String str) {
        try {
            makeAsyncHttpCall(jSONObject.toString(), str);
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Caught", e);
        }
    }

    public void run() {
        sessionEnd(this.payload, this.sessionEndURL);
    }
}