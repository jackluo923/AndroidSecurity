package com.jirbo.adcolony;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;

public class AdColony {
    static boolean advertising_id_ready;
    boolean block;

    private static class AdvertisingIdTask extends AsyncTask {
        Activity activity;
        String advertising_id;
        boolean limit_ad_tracking;

        AdvertisingIdTask(Activity activity) {
            this.advertising_id = AdTrackerConstants.BLANK;
            this.activity = activity;
        }

        protected Void doInBackground(Void... voidArr) {
            try {
                AdInfo advertisingIdInfo = ADCAdvertisingIdClient.getAdvertisingIdInfo(this.activity);
                this.advertising_id = advertisingIdInfo.getId();
                this.limit_ad_tracking = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
            }
            return null;
        }

        protected void onPostExecute(Void voidR) {
            ADCDevice.advertising_id = this.advertising_id;
            ADCDevice.limit_ad_tracking = this.limit_ad_tracking;
            advertising_id_ready = true;
        }
    }

    static {
        advertising_id_ready = false;
    }

    public AdColony() {
        this.block = false;
    }

    public static Activity activity() {
        return ADC.activity();
    }

    public static void addAdAvailabilityListener(AdColonyAdAvailabilityListener adColonyAdAvailabilityListener) {
        if (!ADC.ad_availability_listener_list.contains(adColonyAdAvailabilityListener)) {
            ADC.ad_availability_listener_list.add(adColonyAdAvailabilityListener);
        }
    }

    public static void addV4VCListener(AdColonyV4VCListener adColonyV4VCListener) {
        if (!ADC.v4vc_listener_list.contains(adColonyV4VCListener)) {
            ADC.v4vc_listener_list.add(adColonyV4VCListener);
        }
    }

    public static void cancelVideo() {
        if (ADC.current_video != null) {
            ADC.current_video.finish();
            ADC.end_card_finished_handler.notify_canceled();
        }
    }

    public static void configure(Activity activity, String str, String str2, String... strArr) {
        if (VERSION.SDK_INT >= 11) {
            new AdvertisingIdTask(activity).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new AdvertisingIdTask(activity).execute(new Void[0]);
        }
        Handler handler = new Handler();
        Runnable anonymousClass_1 = new Runnable() {
            public void run() {
                ADC.block = false;
            }
        };
        if ((ADC.block && !ADC.disable_block) || ADC.user_disabled) {
            return;
        }
        if (str2 == null) {
            ADC.on_fatal_error("Null App ID - disabling AdColony.");
            return;
        } else if (strArr == null) {
            ADC.on_fatal_error("Null Zone IDs array - disabling AdColony.");
            return;
        } else if (strArr.length == 0) {
            ADC.on_fatal_error("No Zone IDs provided - disabling AdColony.");
            return;
        } else {
            ADC.initialize(activity);
            ADC.controller.configure(str, str2, strArr);
            ADC.initialized = true;
            ADC.block = true;
            handler.postDelayed(anonymousClass_1, 120000);
        }
        if (ADC.current_video == null) {
            ADC.show = true;
        }
        ADC.v4vc_listener_list.clear();
        ADC.ad_availability_listener_list.clear();
        ADC.ad_availability_map = new HashMap();
        int i = 0;
        while (i < strArr.length) {
            ADC.ad_availability_map.put(strArr[i], Boolean.valueOf(false));
            i++;
        }
    }

    public static void disable() {
        ADC.user_disabled = true;
    }

    public static void disableDECOverride() {
        ADC.force_dec_url = null;
    }

    public static String getCustomID() {
        return ADC.controller.configuration.custom_id;
    }

    public static String getDeviceID() {
        return ADC.controller.configuration.device_id;
    }

    public static int getRemainingV4VCForZone(String str) {
        if (ADC.controller == null || ADC.controller.play_history == null || ADC.controller.ad_manager == null || ADC.controller.ad_manager.app == null || ADC.controller.ad_manager.app.zones == null) {
            return ADCLog.info.int_fail("getRemainingV4VCForZone called before AdColony has finished configuring.");
        }
        Zone find = ADC.controller.ad_manager.app.zones.find(str);
        return find.v4vc.enabled ? find.v4vc.limits.daily_play_cap - ADC.controller.play_history.zone_daily_play_count(str) : ADCLog.info.int_fail("getRemainingV4VCForZone called with non-V4VC zone.");
    }

    public static void get_images(String str) {
        ADC.controller.configuration.prepare_video_ad(str);
    }

    public static boolean isTablet() {
        return ADCDevice.is_tablet();
    }

    public static boolean isZoneV4VC(String str) {
        return (ADC.controller == null || ADC.controller.ad_manager == null || ADC.controller.ad_manager.app == null || ADC.controller.ad_manager.app.zones == null) ? false : ADC.controller.ad_manager.is_zone_v4vc(str, false);
    }

    public static void pause() {
    }

    public static void removeAdAvailabilityListener(AdColonyAdAvailabilityListener adColonyAdAvailabilityListener) {
        ADC.ad_availability_listener_list.remove(adColonyAdAvailabilityListener);
    }

    public static void removeV4VCListener(AdColonyV4VCListener adColonyV4VCListener) {
        ADC.v4vc_listener_list.remove(adColonyV4VCListener);
    }

    public static void resume(Activity activity) {
        ADC.set_activity(activity);
    }

    public static void setCustomID(String str) {
        if (!str.equals(ADC.controller.configuration.custom_id)) {
            ADC.controller.configuration.custom_id = str;
            ADC.block = false;
            ADC.controller.ad_manager.attempted_load = true;
            ADC.controller.ad_manager.is_configured = false;
            ADC.controller.ad_manager.needs_refresh = true;
        }
    }

    public static void setDeviceID(String str) {
        if (!str.equals(ADC.controller.configuration.device_id)) {
            ADC.controller.configuration.device_id = str;
            ADC.block = false;
            ADC.controller.ad_manager.attempted_load = true;
            ADC.controller.ad_manager.is_configured = false;
            ADC.controller.ad_manager.needs_refresh = true;
        }
    }

    public static String statusForZone(String str) {
        if (ADC.controller == null || ADC.controller.ad_manager == null || ADC.controller.ad_manager.app == null || ADC.controller.ad_manager.app.zones == null) {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
        Zone find = ADC.controller.ad_manager.app.zones.find(str);
        if (find != null) {
            if (!find.enabled) {
                return "off";
            }
            return (find.active && ADC.controller.ad_manager.is_ad_available_errorless(str, true)) ? "active" : "loading";
        } else if (ADC.configured) {
            return "invalid";
        } else {
            return DeviceInfo.ORIENTATION_UNKNOWN;
        }
    }
}