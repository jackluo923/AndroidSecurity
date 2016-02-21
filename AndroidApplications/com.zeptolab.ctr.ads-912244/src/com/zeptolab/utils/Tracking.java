package com.zeptolab.utils;

import android.os.AsyncTask;
import com.brightcove.player.event.EventType;
import com.brightcove.player.media.MediaService;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;

public class Tracking {
    static String PREFERENCES_TRACKING_STATUS = null;
    private static final String TAG = "Tracking";
    static String TRACKING_SERVER;
    static String TRACKING_SERVER_PATH;

    private static class TrackTask extends AsyncTask {
        private TrackTask() {
        }

        protected Void doInBackground(URL... urlArr) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) urlArr[0].openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    CtrPreferences.getInstance().setBooleanforKey(PREFERENCES_TRACKING_STATUS, true, true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

    static {
        TRACKING_SERVER = "installs.zeptodev.com";
        TRACKING_SERVER_PATH = AdTrackerConstants.BLANK;
        PREFERENCES_TRACKING_STATUS = "TRACKING_STATUS";
    }

    public static URL serverUrl() {
        URL url = null;
        try {
            return new URI(MediaService.DEFAULT_MEDIA_DELIVERY, TRACKING_SERVER, TRACKING_SERVER_PATH, "android_id=" + SystemInfo.getAndroidId() + "&package_name=" + SystemInfo.getPackageName() + "&mac=" + SystemInfo.getMacAddress() + "&os=" + SystemInfo.getOSVersion() + "&app_version=" + ZBuildConfig.$version_string + "&device=" + SystemInfo.getDeviceModel(), null).toURL();
        } catch (Exception e) {
            e.printStackTrace();
            return url;
        }
    }

    public static String serverUrlString() {
        return serverUrl().toString();
    }

    public static boolean track() {
        if (ZBuildConfig.target.contains(EventType.DEBUG)) {
            TRACKING_SERVER = "test.zeptodev.com";
            TRACKING_SERVER_PATH = "/adproxy";
        }
        if (CtrPreferences.getInstance().getBooleanForKey(PREFERENCES_TRACKING_STATUS)) {
            return false;
        }
        try {
            new TrackTask().execute(new URL[]{serverUrl()});
            return true;
        } catch (Exception e) {
            Exception exception = e;
            L.i(TAG, exception.getLocalizedMessage());
            exception.printStackTrace();
            return false;
        }
    }
}