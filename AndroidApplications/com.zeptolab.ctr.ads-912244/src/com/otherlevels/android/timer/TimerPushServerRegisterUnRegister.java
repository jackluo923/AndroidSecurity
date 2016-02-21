package com.otherlevels.android.timer;

import android.util.Log;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.otherlevels.android.async.AsyncHttpCall;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.TimerTask;

public class TimerPushServerRegisterUnRegister extends TimerTask {
    private static final String TAG = "OLAL-Lib";
    private String callType;
    private boolean httpCallCompleted;
    private String httpRegisterCallURL;
    private String httpUnRegisterCallURL;
    private String pushServerAuthKey;
    private String pushServerChannel;
    private String pushServerDeviceCategory;
    private String pushServerDeviceModel;
    private String pushServerDeviceOsType;
    private String pushServerDeviceOsVersion;
    private String pushServerDeviceToken;
    private String pushServerPUID;

    public TimerPushServerRegisterUnRegister(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, AsyncHttpCall asyncHttpCall) {
        this.httpCallCompleted = false;
        Log.i(TAG, "OlAndroidLibrary: Register User and Device Token Function called");
        this.pushServerAuthKey = str2;
        Log.i(TAG, "OlAndroidLibrary: Push Server Auth Key:" + this.pushServerAuthKey.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerChannel = str3;
        Log.i(TAG, "OlAndroidLibrary: Push Server Channel:" + this.pushServerChannel.substring(0, R.styleable.MapAttrs_uiZoomControls) + "XXXXXXXXXXXXXXXXXXXXXX");
        this.pushServerDeviceToken = str4;
        Log.i(TAG, "OlAndroidLibrary: Push Server Device Token:" + this.pushServerDeviceToken);
        this.pushServerPUID = str;
        Log.i(TAG, "OlAndroidLibrary: Push Server PUID:" + this.pushServerPUID);
        this.pushServerDeviceCategory = ZBuildConfig.device;
        this.pushServerDeviceOsType = "android";
        this.pushServerDeviceOsVersion = str6;
        Log.i(TAG, "OlAndroidLibrary: Push Server Os Version:" + this.pushServerDeviceOsVersion);
        this.pushServerDeviceModel = str5;
        Log.i(TAG, "OlAndroidLibrary: Push Server Model Name:" + this.pushServerDeviceModel);
        this.httpRegisterCallURL = str7;
        this.httpUnRegisterCallURL = str8;
        this.callType = str9;
    }

    private boolean httpCallStatus() {
        return this.httpCallCompleted;
    }

    private void makeAsyncHttpCall(String str, RequestParams requestParams) {
        Log.i(TAG, "OlAndroidLibrary: Making Async Http Post Call (TIMER)");
        Log.i(TAG, "OlAndroidLibrary: URL:" + str + " - Data:" + requestParams);
        try {
            new AsyncHttpClient().post(str, requestParams, new AsyncHttpResponseHandler() {
                public void onSuccess(String str) {
                    Log.i(TAG, "OlAndroidLibrary: Async Http Post Call Response");
                }
            });
        } catch (Exception e) {
            Log.i(TAG, "OlAndroidLibrary: Exception Occurred During Async HTTP Call (TIMER) - ", e);
        }
    }

    private void register() {
        Log.i(TAG, "OlAndroidLibrary: Register Call on Timer");
        Log.i(TAG, "OlAndroidLibrary: Assembling POST Data");
        RequestParams requestParams = new RequestParams();
        requestParams.put("auth_key", this.pushServerAuthKey);
        requestParams.put("channel", this.pushServerChannel);
        requestParams.put("puid", this.pushServerPUID);
        requestParams.put("devicetoken", this.pushServerDeviceToken);
        requestParams.put("ostype", this.pushServerDeviceOsType);
        requestParams.put("category", this.pushServerDeviceCategory);
        requestParams.put("model", this.pushServerDeviceModel);
        requestParams.put("version", this.pushServerDeviceOsVersion);
        Log.i(TAG, "OlAndroidLibrary: Making ASYNC HTTP Register Call on Timer");
        makeAsyncHttpCall(this.httpRegisterCallURL, requestParams);
    }

    private void unRegister() {
        Log.i(TAG, "OlAndroidLibrary: UnRegister Call on Timer");
        Log.i(TAG, "OlAndroidLibrary: Assembling POST Data");
        RequestParams requestParams = new RequestParams();
        requestParams.put("auth_key", this.pushServerAuthKey);
        requestParams.put("channel", this.pushServerChannel);
        requestParams.put("puid", this.pushServerPUID);
        requestParams.put("devicetoken", this.pushServerDeviceToken);
        Log.i(TAG, "OlAndroidLibrary: Making ASYNC HTTP UnRegister Call on Timer");
        makeAsyncHttpCall(this.httpUnRegisterCallURL, requestParams);
    }

    public void run() {
        Log.i(TAG, "OlAndroidLibrary: Run Function of Timer2 called");
        if (this.callType.equalsIgnoreCase("register")) {
            register();
        } else {
            unRegister();
        }
    }
}