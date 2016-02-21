package com.zeptolab.zbuild;

import com.brightcove.player.event.Event;
import com.inmobi.commons.analytics.db.AnalyticsEvent;

public class ZBuildConfig {
    public static final String $app_name = "@string/app_name_free";
    public static final int $minsdk = 9;
    public static final String $package_name = "com.zeptolab.ctr.ads";
    public static final int $targetsdk = 17;
    public static final String $version_code = "912244";
    public static final String $version_string = "2.4.4";
    public static final String $version_svn = "48556";
    public static final String[] SUPPORTED_LANGS;
    public static final String adcolony_app_id = "appb6f86a8c02f8468aa2";
    public static final String adcolony_zone_id_phone = "vz2a0b6140e123449aa4";
    public static final String adcolony_zone_id_tablet = "vzef51b921da694dc1a8";
    public static final String admarvel_heyzap_pub_id = "c592f1ff4887e933f926050cfa2c2e96";
    public static final String admarvel_inmobi_app_id = "befb4376e6504c7dadd7a69dd8706be1";
    public static final String admarvel_partner_id = "7f6a3a9ae6bbf77c";
    public static final String admarvel_site_id_phone_banner = "80745";
    public static final String admarvel_site_id_phone_interstitial = "80746";
    public static final String admarvel_site_id_phone_native_ads = "93991";
    public static final String admarvel_site_id_phone_video = "94088";
    public static final String admarvel_site_id_tablet_banner = "80748";
    public static final String admarvel_site_id_tablet_interstitial = "80749";
    public static final String admarvel_site_id_tablet_native_ads = "93875";
    public static final String admarvel_site_id_tablet_video = "94298";
    public static final String ads_url_brightcove = "http://pubads.g.doubleclick.net/gampad/ads?sz=640x480&iu=/11697226/CTR_OR_Free_Google&ciu_szs&impl=s&gdfp_req=1&env=vp&output=xml_vast2&unviewed_position_start=1&url=[referrer_url]&correlator=[timestamp]";
    public static final String[] apk_flags;
    public static final String[] assets_pregen;
    public static final String chartboost_app_id = "5174f56617ba477572000000";
    public static final String chartboost_app_sgn = "edd1640ce0658ef88815390fe7ff1af064639978";
    public static final String device = "phone";
    public static final boolean exitonsleep = false;
    public static final String facebook_plid_result = "543495079098588_543912872390142";
    public static final String id_brightcove_account = "2897592772001";
    public static final String id_flurry = "NDGHMB6S6PG46HATDGWX";
    public static final String id_kiip_key = "fbe8e2eb9ce5dc35a168ecb8e0e615de";
    public static final String id_kiip_secret = "b1187b213e2cd94247e1be83d2d38bf2";
    public static final String id_mixpanel = "78ec631767ae503d30832db8d9399c7b";
    public static final String id_mixpanel_debug = "4c7778f09e5aac51372edd8d1638bb11";
    public static final String id_zendesk_dataapi = "918b171d5025625c29eea7e4d229fc3c647700b0";
    public static final String id_zendesk_game = "2321a7a4d4eb0924b85086c53297467c";
    public static final String id_zendesk_secret = "c9fd8b0e69d325dc78b69abb58728be7c7920c48";
    public static final String keystore = "ctr_android";
    public static final boolean lock_third_season = true;
    public static final String mappicker_folder = "ctr_android";
    public static final String mappicker_url = "https://zeptodev.com";
    public static final String market = "google";
    public static final boolean online = true;
    public static final String otherlevels_app_id = "e8323b21c4c817d8aaac48349b548f86";
    public static final String otherlevels_app_id_dev = "ae2e99f18f452ad1d12e3b7d53b1c47a";
    public static final String otherlevels_auth_key = "275f652e60727923c025eeb4ae2174f8";
    public static final String otherlevels_gcm_id = "355701865172";
    public static final String otherlevels_gcm_id_dev = "419356479914";
    public static final String otherlevels_push_channel_id = "32b495844e57c37bfec92ca3c023af73";
    public static final String otherlevels_push_channel_id_dev = "ac5c373edc3a4ad32c2b88fd65b5dd1e";
    public static final String prefs_name = "CtrApp";
    public static final String[] profile;
    public static final String profiles = "root_full_free_google,device_phone";
    public static final String[] projects;
    public static final String[] resources;
    public static final boolean rewards = true;
    public static final String savemanager_file = "ctr.zsf";
    public static final String savemanager_key = "CUTTHEROPE";
    public static final String savemanager_oldfile = "remotesavefile";
    public static final String savemanager_value = "a4IZufEBoT9uA0so9nLD3WrSPUXDpcNNqebCMeeKwhstluiWOJsIoturiIDao4ic";
    public static final String target = "release";

    static {
        SUPPORTED_LANGS = new String[]{"en", "ru", "de", "fr", "it", AnalyticsEvent.TYPE_END_SESSION, "nl", "br", "ko", "ja"};
        apk_flags = new String[]{"brightcove", "kiip"};
        assets_pregen = new String[]{"maps", "Scoreloop_full"};
        profile = new String[]{"root_full_free_google", "device_phone"};
        projects = new String[]{"analytics_mixpanel/mixpanel-android", "google_play_services/google-play-services_lib"};
        resources = new String[]{"icons", Event.VIDEO, "res_includable/brightcove", "res_includable/admarvel", "res_includable/google_play_services"};
    }
}