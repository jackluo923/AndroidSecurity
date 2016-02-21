package com.jirbo.adcolony;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

class ADC {
    static final String LOGTAG = "AdColony";
    public static final int LOG_DEBUG = 1;
    public static final int LOG_DEV = 0;
    public static final int LOG_ERROR = 3;
    public static final int LOG_INFO = 2;
    static boolean active;
    private static Activity activity;
    static ArrayList ad_availability_listener_list;
    static HashMap ad_availability_map;
    static ArrayList bitmaps;
    static boolean block;
    static boolean companion_ad_disabled;
    static boolean configured;
    static boolean connected;
    static ADCController controller;
    static AdColonyAd current_ad;
    static ADCDialog current_dialog;
    static ADCVideo current_video;
    static boolean disable_block;
    public static final boolean disable_limits = false;
    public static final boolean enable_developer_logging = false;
    static EndCardFinished end_card_finished_handler;
    static boolean end_card_is_html5;
    static String end_card_mraid_filepath;
    static String end_card_url;
    static boolean fatal_error;
    public static String force_dec_url;
    public static final String force_static_url;
    static boolean graceful_fail;
    static double hud_scale;
    static boolean initialized;
    static boolean is_tablet;
    public static final boolean keep_current_ads = false;
    static long last_config_ms;
    static ADCVideo latest_video;
    static boolean layout_changed;
    static int load_timeout;
    static int log_level;
    static boolean main_activity_paused;
    static boolean mraid_block;
    static int orientation;
    static String os_version;
    public static final boolean play_short_videos = false;
    static String sdk_version;
    static boolean show;
    static boolean show_post_popup;
    static boolean user_disabled;
    static ArrayList v4vc_listener_list;
    static V4VCResultsHandler v4vc_results_handler;
    static boolean video_disabled;

    static class EndCardFinished extends Handler {
        EndCardFinished() {
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case LOG_DEV:
                    ADC.track_ad_event("skip");
                    if (current_ad != null) {
                        current_ad.status = 1;
                        current_ad.on_video_finished();
                    }
                case LOG_DEBUG:
                    Table table = new Table();
                    if (latest_video.hud.is_html5) {
                        table.set("html5_endcard_loading_started", latest_video.html5_endcard_loading_started);
                    }
                    if (latest_video.hud.is_html5) {
                        table.set("html5_endcard_loading_finished", latest_video.html5_endcard_loading_finished);
                    }
                    if (latest_video.hud.is_html5) {
                        table.set("html5_endcard_loading_time", latest_video.html5_endcard_loading_time);
                    }
                    if (latest_video.hud.is_html5) {
                        table.set("html5_endcard_loading_timeout", latest_video.html5_endcard_loading_timeout);
                    }
                    table.set("endcard_time_spent", latest_video.endcard_time_spent);
                    table.set("endcard_dissolved", latest_video.endcard_dissolved);
                    String str = "replay";
                    ADCVideo aDCVideo = latest_video;
                    table.set(str, ADCVideo.is_replay);
                    table.set("reward", latest_video.rewarded);
                    controller.reporting_manager.track_ad_event("continue", table);
                    controller.ad_manager.refresh();
                    if (current_ad != null) {
                        current_ad.on_video_finished();
                    }
                default:
                    break;
            }
        }

        public void notify_canceled() {
            sendMessage(obtainMessage(LOG_DEV));
        }

        public void notify_continuation() {
            sendMessage(obtainMessage(LOG_DEBUG));
        }
    }

    static class V4VCResultsHandler extends Handler {
        V4VCResultsHandler() {
        }

        public void handleMessage(Message message) {
            boolean z;
            int i = LOG_DEV;
            String str = (String) message.obj;
            int i2 = message.what;
            z = str != null;
            if (!z) {
                str = AdTrackerConstants.BLANK;
            }
            AdColonyV4VCReward adColonyV4VCReward = new AdColonyV4VCReward(z, str, i2);
            while (i < v4vc_listener_list.size()) {
                ((AdColonyV4VCListener) v4vc_listener_list.get(i)).onAdColonyV4VCReward(adColonyV4VCReward);
                i++;
            }
        }

        public void notify_listeners(boolean z, Object obj, int i) {
            if (!z) {
                obj = null;
            }
            sendMessage(obtainMessage(i, obj));
        }
    }

    static {
        force_dec_url = null;
        force_static_url = null;
        controller = new ADCController();
        log_level = 2;
        show_post_popup = false;
        show = true;
        orientation = 0;
        hud_scale = 1.0d;
        block = false;
        disable_block = false;
        mraid_block = false;
        layout_changed = false;
        connected = true;
        bitmaps = new ArrayList();
        v4vc_listener_list = new ArrayList();
        ad_availability_listener_list = new ArrayList();
    }

    ADC() {
    }

    static Activity activity() {
        if (activity != null) {
            return activity;
        }
        throw new AdColonyException("AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in is null.");
    }

    static boolean disabled() {
        return fatal_error || user_disabled || !initialized;
    }

    static void ensure_configured() {
        activity();
    }

    static int get_Integer(String str) {
        return controller.get_Integer(str);
    }

    static boolean get_Logical(String str) {
        return controller.get_Logical(str);
    }

    static double get_Real(String str) {
        return controller.get_Real(str);
    }

    static String get_String(String str) {
        return controller.get_String(str);
    }

    static void has_ad_availability_changed() {
        if (controller != null && ad_availability_listener_list.size() != 0 && ad_availability_map != null) {
            Iterator it = ad_availability_map.entrySet().iterator();
            while (it.hasNext()) {
                boolean is_v4vc_ad_available;
                Entry entry = (Entry) it.next();
                boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                is_v4vc_ad_available = AdColony.isZoneV4VC((String) entry.getKey()) ? controller.is_v4vc_ad_available((String) entry.getKey(), true, false) : controller.is_video_ad_available((String) entry.getKey(), true, false);
                if (booleanValue != is_v4vc_ad_available) {
                    ad_availability_map.put(entry.getKey(), Boolean.valueOf(is_v4vc_ad_available));
                    int i = 0;
                    while (i < ad_availability_listener_list.size()) {
                        ((AdColonyAdAvailabilityListener) ad_availability_listener_list.get(i)).onAdColonyAdAvailabilityChange(is_v4vc_ad_available, (String) entry.getKey());
                        i++;
                    }
                }
            }
        }
    }

    static void initialize(Activity activity) {
        configured = false;
        set_activity(activity);
        current_dialog = null;
        is_tablet = ADCDevice.is_tablet();
        if (fatal_error) {
            fatal_error = false;
            initialized = false;
            controller = new ADCController();
        }
    }

    static boolean is_ready() {
        return initialized && !fatal_error && !user_disabled;
    }

    static void log(int i, String str) {
        if (log_level <= i) {
            switch (i) {
                case LOG_DEV:
                case LOG_DEBUG:
                    Log.d(LOGTAG, str);
                case LOG_INFO:
                    Log.i(LOGTAG, str);
                case LOG_ERROR:
                    Log.e(LOGTAG, str);
                default:
                    break;
            }
        }
    }

    static void log_debug(String str) {
        log(LOG_DEBUG, str);
    }

    static void log_dev(String str) {
        log(LOG_DEV, str);
    }

    static void log_error(String str) {
        log(LOG_ERROR, str);
    }

    static void log_info(String str) {
        log(LOG_INFO, str);
    }

    static void on_fatal_error(RuntimeException runtimeException) {
        fatal_error = true;
        log_error(runtimeException.toString());
        runtimeException.printStackTrace();
    }

    static void on_fatal_error(String str) {
        fatal_error = true;
        log_error(str);
    }

    static void queue_event(ADCEvent aDCEvent) {
        controller.queue_event(aDCEvent);
    }

    static void set_activity(Activity activity) {
        if (activity != activity) {
            activity = activity;
            end_card_finished_handler = new EndCardFinished();
            v4vc_results_handler = new V4VCResultsHandler();
        }
    }

    static void set_log_level(int i) {
        boolean z = false;
        log_level = i;
        ADCLog.dev.enabled = i <= 0;
        ADCLog.debug.enabled = i <= 1;
        ADCLog.info.enabled = i <= 2;
        ADCLog aDCLog = ADCLog.error;
        if (i <= 3) {
            z = true;
        }
        aDCLog.enabled = z;
        if (i <= 0) {
            log_dev("DEVELOPER LOGGING ENABLED");
        }
        if (i <= 1) {
            log_debug("DEBUG LOGGING ENABLED");
        }
    }

    static boolean should_log(int i) {
        return log_level <= i;
    }

    static boolean should_log_debug() {
        return log_level <= 1;
    }

    static boolean should_log_dev() {
        return log_level <= 0;
    }

    static void trace(String str) {
        Toast.makeText(activity(), str, LOG_DEV).show();
    }

    static void track_ad_event(String str) {
        controller.track_ad_event(str, null);
    }

    static void track_ad_event(String str, String str2) {
        controller.track_ad_event(str, str2);
    }

    static void track_app_event(String str) {
        controller.track_app_event(str, null);
    }

    static void track_app_event(String str, String str2) {
        controller.track_app_event(str, str2);
    }
}