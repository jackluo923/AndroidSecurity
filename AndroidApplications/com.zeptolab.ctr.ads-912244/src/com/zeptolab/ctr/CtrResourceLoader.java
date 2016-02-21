package com.zeptolab.ctr;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Intent;
import android.content.res.AssetManager;
import android.net.Uri;
import android.opengl.GLSurfaceView;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import com.brightcove.player.event.EventType;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.AdBanner;
import com.zeptolab.ctr.ads.AdMarvelPostitial;
import com.zeptolab.ctr.ads.SwitcherInterstitialBanner;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.mappicker.MapPicker;
import com.zeptolab.iframework.font.FontConfigs;
import com.zeptolab.iframework.font.FontConfigs.FONT;
import com.zeptolab.iframework.font.FontGenerator;
import com.zeptolab.utils.Base64;
import com.zeptolab.utils.Language;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class CtrResourceLoader {
    private static final String TAG = "CtrResourceLoader";
    private static final String charsRequired;
    private static final String external = "external://";
    private static final Map fontAssoc;
    private static final String internal = "internal://";
    private Activity activity;
    private AssetManager assetManager;
    private AdBanner banner;
    private SwitcherInterstitialBanner interstitial;
    private GLSurfaceView mainView;
    private MapPicker mappicker;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ int val$asyncrequest;
        final /* synthetic */ String val$path;

        AnonymousClass_2(int i, String str) {
            this.val$asyncrequest = i;
            this.val$path = str;
        }

        public void run() {
            LoadURLTask loadURLTask = new LoadURLTask(null);
            loadURLTask.asyncrequest = this.val$asyncrequest;
            loadURLTask.execute(new String[]{this.val$path});
        }
    }

    private class LoadURLTask extends AsyncTask {
        public int asyncrequest;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ byte[] val$bytes;

            AnonymousClass_1(byte[] bArr) {
                this.val$bytes = bArr;
            }

            public void run() {
                LoadURLTask.this.this$0.nativeAsyncLoadFinished(this.val$bytes, LoadURLTask.this.asyncrequest);
            }
        }

        private LoadURLTask() {
        }

        protected byte[] doInBackground(String... strArr) {
            return CtrResourceLoader.this._loadURL(strArr[0]);
        }

        protected void onPostExecute(byte[] bArr) {
            CtrResourceLoader.this.mainView.queueEvent(new AnonymousClass_1(bArr));
        }
    }

    static {
        if (ZBuildConfig.target.equals(EventType.DEBUG)) {
            acceptAllCertificates();
        }
        charsRequired = ".";
        Map hashMap = new HashMap();
        hashMap.put("FNT_BIG_FONT", FONT.BIG);
        hashMap.put("FNT_SMALL_FONT", FONT.SMALL);
        fontAssoc = Collections.unmodifiableMap(hashMap);
    }

    public CtrResourceLoader(Activity activity, GLSurfaceView gLSurfaceView, AdBanner adBanner, MapPicker mapPicker) {
        this.activity = activity;
        this.mainView = gLSurfaceView;
        this.assetManager = activity.getAssets();
        this.banner = adBanner;
        this.interstitial = SwitcherInterstitialBanner.getInstance();
        this.mappicker = mapPicker;
    }

    public static void acceptAllCertificates() {
        SSLContext instance;
        SSLContext sSLContext = null;
        TrustManager[] trustManagerArr = new TrustManager[]{new X509TrustManager() {
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }};
        try {
            instance = SSLContext.getInstance("TLS");
            try {
                instance.init(null, trustManagerArr, new SecureRandom());
            } catch (NoSuchAlgorithmException e) {
                noSuchAlgorithmException = e;
                L.e(TAG, "Could not get SSLContext for TLS");
                noSuchAlgorithmException.printStackTrace();
                HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
            } catch (KeyManagementException e2) {
                keyManagementException = e2;
                L.e(TAG, "Could init SSLContex");
                keyManagementException.printStackTrace();
                HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
            }
        } catch (NoSuchAlgorithmException e3) {
            instance = sSLContext;
            NoSuchAlgorithmException noSuchAlgorithmException2 = e3;
            L.e(TAG, "Could not get SSLContext for TLS");
            noSuchAlgorithmException2.printStackTrace();
            HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
        } catch (KeyManagementException e4) {
            instance = sSLContext;
            KeyManagementException keyManagementException2 = e4;
            L.e(TAG, "Could init SSLContex");
            keyManagementException2.printStackTrace();
            HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
        }
        HttpsURLConnection.setDefaultSSLSocketFactory(instance.getSocketFactory());
    }

    public static native String getLocalized(String str);

    private Intent getOpenFacebookIntent(String str, StringBuilder stringBuilder) {
        try {
            L.w(TAG, "WARNING!!! This dirty hack is need only until facebook fix their app!");
            Iterator it = ((ActivityManager) this.activity.getSystemService("activity")).getRunningAppProcesses().iterator();
            while (it.hasNext()) {
                if (((RunningAppProcessInfo) it.next()).processName.equals("com.facebook.katana")) {
                    boolean z = 1;
                    break;
                }
            }
            int i = 0;
            if (i != 0) {
                stringBuilder.append("fb://page/" + str);
            } else {
                stringBuilder.append(AdWebViewUtils.WEBVIEW_BASE_URL + str);
            }
        } catch (Exception e) {
            stringBuilder.append(AdWebViewUtils.WEBVIEW_BASE_URL + str);
        }
        return new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString()));
    }

    public static byte[] loadAuthURL(String str, String str2, String str3) {
        byte[] bArr = null;
        try {
            URLConnection openConnection = new URL(str).openConnection();
            openConnection.setDoInput(true);
            openConnection.setDoOutput(true);
            openConnection.setRequestProperty("Authorization", "Basic " + Base64.encode((str2 + ":" + str3).getBytes()));
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(openConnection.getInputStream()));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = dataInputStream.read();
                    if (-1 == read) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(read);
                } catch (Exception e) {
                    e.printStackTrace();
                    return bArr;
                }
            }
        } catch (Exception e2) {
            return bArr;
        }
    }

    public byte[] _loadURL(String str) {
        byte[] bArr = null;
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new URL(str).openStream()));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = dataInputStream.read();
                    if (-1 == read) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(read);
                } catch (Exception e) {
                    e.printStackTrace();
                    return bArr;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return bArr;
        }
    }

    public void disableBanners() {
        hideBanner();
        this.banner = null;
    }

    public void disableInterstitials() {
        this.interstitial = null;
        AdMarvelPostitial.disable();
    }

    public void exit() {
        L.d(TAG, "Before activity finish");
        this.activity.finish();
    }

    public FontGenerator getFontGenerator(int i, String str) {
        FontGenerator fontGenerator = new FontGenerator(FontConfigs.getConfig((FONT) fontAssoc.get(str), i));
        fontGenerator.registerLetters(charsRequired);
        return fontGenerator;
    }

    public void hideBanner() {
        if (this.banner != null) {
            this.banner.hideBanner();
        }
    }

    public boolean isAvailableVideo() {
        return SwitcherInterstitialBanner.getInstance().isVideosAvailable();
    }

    public boolean isAvailableVideoBanner() {
        if (this.interstitial != null && this.interstitial.isVideosAvailable()) {
            return true;
        }
        L.d(TAG, "video interstitials is unavailable");
        return false;
    }

    public boolean isCallable(Intent intent) {
        return this.activity.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    public boolean isFileExists(String str) {
        return new File(this.activity.getFilesDir(), str).exists();
    }

    public byte[] loadData(String str) {
        return loadData(str, true);
    }

    public byte[] loadData(String str, boolean z) {
        if (!str.startsWith("mappicker://")) {
            try {
                InputStream fileInputStream;
                if (str.startsWith(external)) {
                    str = str.replace(external, AdTrackerConstants.BLANK);
                    fileInputStream = new FileInputStream(new File(Environment.getExternalStorageDirectory(), str));
                } else if (str.startsWith(internal)) {
                    str = str.replace(internal, AdTrackerConstants.BLANK);
                    fileInputStream = this.activity.openFileInput(str);
                } else if (z) {
                    fileInputStream = this.assetManager.open(str);
                } else {
                    fileInputStream = this.activity.openFileInput(str);
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        fileInputStream.close();
                        byteArrayOutputStream.flush();
                        byte[] toByteArray = byteArrayOutputStream.toByteArray();
                        L.d(TAG, toByteArray.length + " bytes was read from file: " + str);
                        return toByteArray;
                    }
                }
            } catch (Exception e) {
                L.e(TAG, "Can't load data: " + e);
                return null;
            }
        } else if (str.endsWith("start")) {
            if (this.mappicker.isShow()) {
                return this.mappicker.load(false);
            }
            this.mappicker.show();
            return null;
        } else if (str.endsWith("reload")) {
            return this.mappicker.load(false);
        } else {
            return str.endsWith("next") ? this.mappicker.load(true) : null;
        }
    }

    public byte[] loadURL(String str) {
        return _loadURL(str);
    }

    public void loadURLAsync(String str, int i) {
        new Handler(Looper.getMainLooper()).post(new AnonymousClass_2(i, str));
    }

    public native void nativeAsyncLoadFinished(byte[] bArr, int i);

    public void openUrl(String str) {
        L.d(TAG, "openUrl: " + str);
        try {
            Intent openFacebookIntent;
            Matcher matcher = Pattern.compile("(http|https)://(www\\.)?facebook.com/([\\d]*)($|/)").matcher(str);
            Pattern.compile("(https?)://(www\\.)?youtube.com/watch\\?v=([\\w-]{11})\\.*").matcher(str);
            if (matcher.find()) {
                L.d(TAG, "load facebook URL");
                StringBuilder stringBuilder = new StringBuilder();
                openFacebookIntent = getOpenFacebookIntent(matcher.group(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE), stringBuilder);
                if (!isCallable(openFacebookIntent)) {
                    L.w(TAG, "wrong Url: " + stringBuilder.toString() + " is not callable");
                }
            } else {
                openFacebookIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            }
            if (isCallable(openFacebookIntent)) {
                this.activity.startActivity(openFacebookIntent);
            } else {
                L.w(TAG, "wrong Url: " + str + " is not callable");
            }
        } catch (Exception e) {
            L.w(TAG, "wrong url: " + str);
        }
    }

    public void refreshBanner() {
        if (this.banner != null) {
            this.banner.refreshBanner();
        }
    }

    public void remove(String str) {
        new File(this.activity.getFilesDir(), str).delete();
    }

    public void saveData(byte[] bArr, String str) {
        try {
            OutputStream openFileOutput;
            if (str.startsWith(internal) || !str.startsWith(external)) {
                str = str.replace(internal, AdTrackerConstants.BLANK);
                openFileOutput = this.activity.openFileOutput(str, 0);
            } else if (str.startsWith(external)) {
                str = str.replace(external, AdTrackerConstants.BLANK);
                String substring = str.substring(0, str.lastIndexOf(ApiEventType.API_MRAID_PAUSE_VIDEO));
                String substring2 = str.substring(str.lastIndexOf(ApiEventType.API_MRAID_PAUSE_VIDEO) + 1);
                File file = new File(Environment.getExternalStorageDirectory(), substring);
                file.mkdirs();
                File file2 = new File(file, substring2);
                L.d(TAG, "Trying to save file: " + file2.getAbsolutePath());
                openFileOutput = new FileOutputStream(file2);
            } else {
                L.w(TAG, "No rule for writing");
                openFileOutput = null;
            }
            if (openFileOutput != null) {
                openFileOutput.write(bArr);
                openFileOutput.close();
                L.d(TAG, bArr.length + " bytes was written to file: " + str);
            }
        } catch (Exception e) {
            Exception exception = e;
            L.e(TAG, "Can't save data: " + str);
            exception.printStackTrace();
        }
    }

    public void share(String str, String str2, String str3, boolean z) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.addFlags(1);
        intent.addFlags(33554432);
        intent.addFlags(16777216);
        intent.addFlags(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_END);
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str3 + (z ? "&lang=" + Language.getAsString() : AdTrackerConstants.BLANK));
        intent.setType(WebRequest.CONTENT_TYPE_PLAIN_TEXT);
        this.activity.startActivity(Intent.createChooser(intent, str));
    }

    public boolean showBanner() {
        return this.banner != null ? this.banner.showBanner() : false;
    }

    public boolean showInterstitial(boolean z, boolean z2) {
        L.d(TAG, "showInterstitial(showVideos = " + z + ", showInterstitials = " + z2 + ")");
        if (this.interstitial != null) {
            return this.interstitial.showInterstitial(z, z2);
        }
        L.d(TAG, "interstitial is null");
        return false;
    }

    public boolean showVideo() {
        return isAvailableVideo() ? SwitcherInterstitialBanner.getInstance().showInterstitial(true, false) : false;
    }

    public boolean showVideoBanner() {
        return isAvailableVideoBanner() ? this.interstitial.showInterstitial(true, false) : false;
    }
}