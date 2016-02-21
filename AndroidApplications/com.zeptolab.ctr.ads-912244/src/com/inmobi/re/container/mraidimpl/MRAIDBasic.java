package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.webkit.URLUtil;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.util.Constants;
import com.millennialmedia.android.MMException;
import org.json.JSONException;
import org.json.JSONObject;

public class MRAIDBasic {
    private IMWebView a;
    private Activity b;

    class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        public void run() {
            String finalRedirectedUrl = InternalSDKUtil.getFinalRedirectedUrl(this.a);
            if (finalRedirectedUrl != null) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(finalRedirectedUrl));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                try {
                    MRAIDBasic.this.startActivity(intent);
                    if (MRAIDBasic.this.a.mListener != null) {
                        MRAIDBasic.this.a.mListener.onLeaveApplication();
                    }
                } catch (Exception e) {
                    MRAIDBasic.this.a.raiseError("Invalid url", "open");
                }
            }
        }
    }

    public MRAIDBasic(IMWebView iMWebView, Activity activity) {
        this.a = iMWebView;
        this.b = activity;
    }

    public void getCurrentPosition() {
        int i;
        int i2;
        int i3;
        Throwable th;
        int i4 = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getCurrentPosition");
        JSONObject jSONObject = new JSONObject();
        int i5 = 0;
        try {
            if (this.a.isViewable()) {
                int[] iArr = new int[2];
                this.a.getLocationOnScreen(iArr);
                i = iArr[0];
                try {
                    i2 = iArr[1];
                    try {
                        i3 = i;
                        i = i2;
                        i2 = (int) (((float) this.a.getWidth()) / this.a.getDensity());
                        i4 = (int) (((float) this.a.getHeight()) / this.a.getDensity());
                    } catch (Exception e) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get current position");
                        jSONObject.put("x", i);
                        jSONObject.put("y", i2);
                        jSONObject.put(MMLayout.KEY_WIDTH, i4);
                        jSONObject.put(MMLayout.KEY_HEIGHT, i5);
                        synchronized (this.a.mutexcPos) {
                            this.a.curPosition = jSONObject;
                            this.a.acqMutexcPos.set(false);
                            this.a.mutexcPos.notifyAll();
                        }
                    }
                } catch (Exception e2) {
                    i2 = i4;
                    Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get current position");
                    try {
                        jSONObject.put("x", i);
                        jSONObject.put("y", i2);
                        jSONObject.put(MMLayout.KEY_WIDTH, i4);
                        jSONObject.put(MMLayout.KEY_HEIGHT, i5);
                    } catch (JSONException e3) {
                    }
                    synchronized (this.a.mutexcPos) {
                        this.a.curPosition = jSONObject;
                        this.a.acqMutexcPos.set(false);
                        this.a.mutexcPos.notifyAll();
                    }
                } catch (Throwable th2) {
                    i3 = i;
                    i = i4;
                    int i6 = i4;
                    th = th2;
                    i2 = i6;
                    jSONObject.put("x", i3);
                    jSONObject.put("y", i);
                    jSONObject.put(MMLayout.KEY_WIDTH, i2);
                    jSONObject.put(MMLayout.KEY_HEIGHT, i5);
                    throw z;
                }
            } else {
                i2 = i4;
                i = i4;
                i3 = i4;
            }
            try {
                jSONObject.put("x", i3);
                jSONObject.put("y", i);
                jSONObject.put(MMLayout.KEY_WIDTH, i2);
                jSONObject.put(MMLayout.KEY_HEIGHT, i4);
            } catch (JSONException e4) {
            }
        } catch (Exception e5) {
            i2 = i4;
            i = i4;
            try {
                Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get current position");
                jSONObject.put("x", i);
                jSONObject.put("y", i2);
                jSONObject.put(MMLayout.KEY_WIDTH, i4);
                jSONObject.put(MMLayout.KEY_HEIGHT, i5);
            } catch (Throwable th3) {
                i3 = i;
                i = i2;
                i2 = i4;
                th = th3;
                jSONObject.put("x", i3);
                jSONObject.put("y", i);
                jSONObject.put(MMLayout.KEY_WIDTH, i2);
                jSONObject.put(MMLayout.KEY_HEIGHT, i5);
                throw z;
            }
            synchronized (this.a.mutexcPos) {
                this.a.curPosition = jSONObject;
                this.a.acqMutexcPos.set(false);
                this.a.mutexcPos.notifyAll();
            }
        } catch (Throwable th4) {
            i = i4;
            i3 = i4;
            i2 = i4;
            th = th4;
            try {
                jSONObject.put("x", i3);
                jSONObject.put("y", i);
                jSONObject.put(MMLayout.KEY_WIDTH, i2);
                jSONObject.put(MMLayout.KEY_HEIGHT, i5);
            } catch (JSONException e6) {
            }
            throw z;
        }
        synchronized (this.a.mutexcPos) {
            this.a.curPosition = jSONObject;
            this.a.acqMutexcPos.set(false);
            this.a.mutexcPos.notifyAll();
        }
    }

    public void getDefaultPosition() {
        int i;
        int i2;
        Throwable th;
        int i3 = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getDefaultPosition");
        JSONObject jSONObject = new JSONObject();
        int i4 = 0;
        try {
            int i5;
            if (this.a.isViewable()) {
                int[] iArr = new int[2];
                ((View) this.a.getOriginalParent()).getLocationOnScreen(iArr);
                i = iArr[0];
                try {
                    i2 = iArr[1];
                    try {
                        i5 = (int) (((float) ((View) this.a.getOriginalParent()).getWidth()) / this.a.getDensity());
                        i3 = (int) (((float) ((View) this.a.getOriginalParent()).getHeight()) / this.a.getDensity());
                    } catch (Exception e) {
                        exception = e;
                        exception.printStackTrace();
                        Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get default position" + exception.getMessage());
                        jSONObject.put("x", i);
                        jSONObject.put("y", i2);
                        jSONObject.put(MMLayout.KEY_WIDTH, i3);
                        jSONObject.put(MMLayout.KEY_HEIGHT, i4);
                        synchronized (this.a.mutexdPos) {
                            this.a.defPosition = jSONObject;
                            this.a.acqMutexdPos.set(false);
                            this.a.mutexdPos.notifyAll();
                        }
                    }
                } catch (Exception e2) {
                    exception = e2;
                    i2 = i3;
                    exception.printStackTrace();
                    Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get default position" + exception.getMessage());
                    try {
                        jSONObject.put("x", i);
                        jSONObject.put("y", i2);
                        jSONObject.put(MMLayout.KEY_WIDTH, i3);
                        jSONObject.put(MMLayout.KEY_HEIGHT, i4);
                    } catch (JSONException e3) {
                    }
                    synchronized (this.a.mutexdPos) {
                        this.a.defPosition = jSONObject;
                        this.a.acqMutexdPos.set(false);
                        this.a.mutexdPos.notifyAll();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    i2 = i3;
                    jSONObject.put("x", i);
                    jSONObject.put("y", i2);
                    jSONObject.put(MMLayout.KEY_WIDTH, i3);
                    jSONObject.put(MMLayout.KEY_HEIGHT, i4);
                    throw th;
                }
            } else {
                i5 = i3;
                i2 = i3;
                i = i3;
            }
            try {
                jSONObject.put("x", i);
                jSONObject.put("y", i2);
                jSONObject.put(MMLayout.KEY_WIDTH, i5);
                jSONObject.put(MMLayout.KEY_HEIGHT, i3);
            } catch (JSONException e4) {
            }
        } catch (Exception e5) {
            exception = e5;
            i2 = i3;
            i = i3;
            try {
                Exception exception2;
                exception2.printStackTrace();
                Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get default position" + exception2.getMessage());
                jSONObject.put("x", i);
                jSONObject.put("y", i2);
                jSONObject.put(MMLayout.KEY_WIDTH, i3);
                jSONObject.put(MMLayout.KEY_HEIGHT, i4);
            } catch (Throwable th3) {
                th = th3;
                jSONObject.put("x", i);
                jSONObject.put("y", i2);
                jSONObject.put(MMLayout.KEY_WIDTH, i3);
                jSONObject.put(MMLayout.KEY_HEIGHT, i4);
                throw th;
            }
            synchronized (this.a.mutexdPos) {
                this.a.defPosition = jSONObject;
                this.a.acqMutexdPos.set(false);
                this.a.mutexdPos.notifyAll();
            }
        } catch (Throwable th4) {
            th = th4;
            i2 = i3;
            i = i3;
            try {
                jSONObject.put("x", i);
                jSONObject.put("y", i2);
                jSONObject.put(MMLayout.KEY_WIDTH, i3);
                jSONObject.put(MMLayout.KEY_HEIGHT, i4);
            } catch (JSONException e6) {
            }
            throw th;
        }
        synchronized (this.a.mutexdPos) {
            this.a.defPosition = jSONObject;
            this.a.acqMutexdPos.set(false);
            this.a.mutexdPos.notifyAll();
        }
    }

    public void open(String str) {
        try {
            if (!str.startsWith("http://") && (!str.contains("https") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F"))) {
                new Thread(new a(str)).start();
            } else if (URLUtil.isValidUrl(str)) {
                Intent intent = new Intent(this.b, IMBrowserActivity.class);
                Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> open:" + str);
                intent.putExtra(IMBrowserActivity.EXTRA_URL, str);
                intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, MMException.UNKNOWN_ERROR);
                if (!(this.a.getStateVariable() != ViewState.DEFAULT || this.a.mIsInterstitialAd || this.a.mWebViewIsBrowserActivity)) {
                    intent.putExtra("FIRST_INSTANCE", true);
                }
                IMBrowserActivity.setWebViewListener(this.a.mListener);
                try {
                    this.b.startActivity(intent);
                    if (!this.a.mWebViewIsBrowserActivity) {
                        this.a.fireOnShowAdScreen();
                    }
                } catch (Exception e) {
                    this.a.raiseError("Invalid url", "open");
                } catch (ActivityNotFoundException e2) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "Failed to perform mraid Open");
                }
            } else {
                this.a.raiseError("Invalid url", "open");
            }
        } catch (ActivityNotFoundException e22) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to perform mraid Open");
        } catch (Exception e3) {
            this.a.raiseError("Invalid url", "open");
        }
    }
}