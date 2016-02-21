package com.jirbo.adcolony;

import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.inmobi.re.controller.JSController;
import java.util.ArrayList;
import java.util.HashMap;

class ADCManifest {

    static class Ad {
        int ad_campaign_id;
        int ad_group_id;
        int ad_id;
        AdTracking ad_tracking;
        CompanionAd companion_ad;
        boolean contracted;
        int cpcv_bid;
        boolean enable_in_app_store;
        int expires;
        boolean fullscreen;
        boolean house_ad;
        InAppBrowser in_app_browser;
        Limits limits;
        int net_earnings;
        boolean test_ad;
        ThirdPartyTracking third_party_tracking;
        String title;
        String uuid;
        AdV4VC v4vc;
        Video video;
        boolean video_events_on_replays;

        Ad() {
        }

        void cache_media() {
            this.v4vc.cache_media();
            this.in_app_browser.cache_media();
            this.companion_ad.cache_media();
            this.video.cache_media();
        }

        boolean is_ready() {
            if (!this.in_app_browser.is_ready()) {
                return false;
            }
            if (this.v4vc.enabled && !this.v4vc.is_ready()) {
                return false;
            }
            return (!this.companion_ad.enabled || this.companion_ad.is_ready()) && this.video.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.uuid = table.get_String(Event.UUID);
            this.title = table.get_String(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE);
            this.ad_campaign_id = table.get_Integer("ad_campaign_id");
            this.ad_id = table.get_Integer("ad_id");
            this.ad_group_id = table.get_Integer("ad_group_id");
            this.cpcv_bid = table.get_Integer("cpcv_bid");
            this.net_earnings = table.get_Integer("net_earnings");
            this.expires = table.get_Integer("expires");
            this.enable_in_app_store = table.get_Logical("enable_in_app_store");
            this.video_events_on_replays = table.get_Logical("video_events_on_replays");
            this.test_ad = table.get_Logical("test_ad");
            this.fullscreen = table.get_Logical(JSController.FULL_SCREEN);
            this.house_ad = table.get_Logical("house_ad");
            this.contracted = table.get_Logical("contracted");
            this.limits = new Limits();
            if (!this.limits.parse(table.get_Table("limits"))) {
                return false;
            }
            this.third_party_tracking = new ThirdPartyTracking();
            if (!this.third_party_tracking.parse(table.get_Table("third_party_tracking"))) {
                return false;
            }
            this.in_app_browser = new InAppBrowser();
            if (!this.in_app_browser.parse(table.get_Table("in_app_browser"))) {
                return false;
            }
            this.v4vc = new AdV4VC();
            if (!this.v4vc.parse(table.get_Table("v4vc"))) {
                return false;
            }
            this.ad_tracking = new AdTracking();
            if (!this.ad_tracking.parse(table.get_Table("ad_tracking"))) {
                return false;
            }
            this.companion_ad = new CompanionAd();
            if (!this.companion_ad.parse(table.get_Table("companion_ad"))) {
                return false;
            }
            this.video = new Video();
            return this.video.parse(table.get_Table(Event.VIDEO));
        }
    }

    static class AdTracking {
        String _continue;
        String cancel;
        String card_dissolved;
        String card_shown;
        String complete;
        String custom_event;
        String download;
        String first_quartile;
        String html5_interaction;
        String in_video_engagement;
        String info;
        Table lookup;
        String midpoint;
        String replay;
        String reward_v4vc;
        String skip;
        String start;
        String third_quartile;

        AdTracking() {
            this.lookup = new Table();
        }

        boolean parse(Table table) {
            if (table != null) {
                this.replay = table.get_String("replay", null);
                this.card_shown = table.get_String("card_shown", null);
                this.html5_interaction = table.get_String("html5_interaction", null);
                this.cancel = table.get_String("cancel", null);
                this.download = table.get_String(AdTrackerConstants.GOAL_DOWNLOAD, null);
                this.skip = table.get_String("skip", null);
                this.info = table.get_String("info", null);
                this.custom_event = table.get_String("custom_event", null);
                this.midpoint = table.get_String("midpoint", null);
                this.card_dissolved = table.get_String("card_dissolved", null);
                this.start = table.get_String("start", null);
                this.third_quartile = table.get_String("third_quartile", null);
                this.complete = table.get_String(Constants.NATIVE_AD_COMPLETE_ELEMENT, null);
                this._continue = table.get_String("continue", null);
                this.in_video_engagement = table.get_String("in_video_engagement", null);
                this.reward_v4vc = table.get_String("reward_v4vc", null);
                this.first_quartile = table.get_String("first_quartile", null);
                this.lookup.set("replay", this.replay);
                this.lookup.set("card_shown", this.card_shown);
                this.lookup.set("html5_interaction", this.html5_interaction);
                this.lookup.set("cancel", this.cancel);
                this.lookup.set(AdTrackerConstants.GOAL_DOWNLOAD, this.download);
                this.lookup.set("skip", this.skip);
                this.lookup.set("info", this.info);
                this.lookup.set("custom_event", this.custom_event);
                this.lookup.set("midpoint", this.midpoint);
                this.lookup.set("card_dissolved", this.card_dissolved);
                this.lookup.set("start", this.start);
                this.lookup.set("third_quartile", this.third_quartile);
                this.lookup.set(Constants.NATIVE_AD_COMPLETE_ELEMENT, this.complete);
                this.lookup.set("continue", this._continue);
                this.lookup.set("in_video_engagement", this.in_video_engagement);
                this.lookup.set("reward_v4vc", this.reward_v4vc);
                this.lookup.set("first_quartile", this.first_quartile);
            }
            return true;
        }
    }

    static class AdV4VC {
        boolean enabled;
        PostPopupInfo post_popup;
        PrePopupInfo pre_popup;

        AdV4VC() {
        }

        void cache_media() {
            if (this.enabled) {
                this.pre_popup.cache_media();
                this.post_popup.cache_media();
            }
        }

        boolean is_ready() {
            return this.pre_popup.is_ready() && this.post_popup.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.pre_popup = new PrePopupInfo();
            if (!this.pre_popup.parse(table.get_Table("pre_popup"))) {
                return false;
            }
            this.post_popup = new PostPopupInfo();
            return this.post_popup.parse(table.get_Table("post_popup"));
        }
    }

    static class Ads {
        ArrayList data;

        Ads() {
            this.data = new ArrayList();
        }

        void add(Ad ad) {
            this.data.add(ad);
        }

        int count() {
            return this.data.size();
        }

        Ad find(String str) {
            int i = 0;
            while (i < this.data.size()) {
                Ad ad = (Ad) this.data.get(i);
                if (ad.uuid.equals(str)) {
                    return ad;
                }
                i++;
            }
            return null;
        }

        Ad first() {
            return (Ad) this.data.get(0);
        }

        Ad get(int i) {
            return (Ad) this.data.get(i);
        }

        boolean parse(List list) {
            if (list == null) {
                return false;
            }
            int i = 0;
            while (i < list.count()) {
                Ad ad = new Ad();
                if (!ad.parse(list.get_Table(i))) {
                    return false;
                }
                this.data.add(ad);
                i++;
            }
            return true;
        }
    }

    static class App {
        AppTracking app_tracking;
        String cache_network_pass_filter;
        boolean collect_iap_enabled;
        ArrayList console_messages;
        boolean enabled;
        boolean hardware_acceleration_disabled;
        String last_country;
        String last_ip;
        String log_level;
        boolean log_screen_overlay;
        double media_pool_size;
        ThirdPartyAppTracking third_party_app_tracking;
        String view_network_pass_filter;
        Zones zones;

        App() {
            this.hardware_acceleration_disabled = false;
        }

        void cache_media() {
            ADCLog.dev.println((Object)"Caching media");
            if (this.enabled) {
                int i = 0;
                while (i < this.zones.count()) {
                    this.zones.get(i).cache_media();
                    i++;
                }
            }
        }

        boolean is_ad_available(String str) {
            return is_ad_available(str, false, true);
        }

        boolean is_ad_available(String str, boolean z, boolean z2) {
            if (!this.enabled) {
                return false;
            }
            Zone find = this.zones.find(str);
            return find != null ? find.is_ad_available(z, z2) : false;
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            this.log_screen_overlay = table.get_Logical("log_screen_overlay");
            this.last_country = table.get_String("last_country");
            this.last_ip = table.get_String("last_ip");
            this.collect_iap_enabled = table.get_Logical("collect_iap_enabled");
            this.media_pool_size = table.get_Real("media_pool_size");
            this.log_level = table.get_String("log_level");
            this.view_network_pass_filter = table.get_String("view_network_pass_filter");
            this.cache_network_pass_filter = table.get_String("cache_network_pass_filter");
            this.hardware_acceleration_disabled = table.get_Logical("hardware_acceleration_disabled");
            if (this.view_network_pass_filter == null || this.view_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
                this.view_network_pass_filter = "all";
            }
            if (this.cache_network_pass_filter == null || this.cache_network_pass_filter.equals(AdTrackerConstants.BLANK)) {
                this.cache_network_pass_filter = "all";
            }
            this.app_tracking = new AppTracking();
            if (!this.app_tracking.parse(table.get_Table("tracking"))) {
                return false;
            }
            this.third_party_app_tracking = new ThirdPartyAppTracking();
            if (!this.third_party_app_tracking.parse(table.get_Table("third_party_tracking"))) {
                return false;
            }
            this.console_messages = table.get_StringList("console_messages");
            ADCLog.dev.println((Object)"Parsing zones");
            this.zones = new Zones();
            if (!this.zones.parse(table.get_List("zones"))) {
                return false;
            }
            ADCLog.dev.println((Object)"Finished parsing app info");
            return true;
        }
    }

    static class AppTracking {
        String dynamic_interests;
        String in_app_purchase;
        String install;
        Table lookup;
        String session_end;
        String session_start;
        String update;
        String user_meta_data;

        AppTracking() {
        }

        boolean parse(Table table) {
            if (table != null) {
                this.update = table.get_String("update", null);
                this.install = table.get_String("install", null);
                this.dynamic_interests = table.get_String("dynamic_interests", null);
                this.user_meta_data = table.get_String("user_meta_data", null);
                this.in_app_purchase = table.get_String("in_app_purchase", null);
                this.session_end = table.get_String("session_end", null);
                this.session_start = table.get_String("session_start", null);
                this.lookup = new Table();
                this.lookup.set("update", this.update);
                this.lookup.set("install", this.install);
                this.lookup.set("dynamic_interests", this.dynamic_interests);
                this.lookup.set("user_meta_data", this.user_meta_data);
                this.lookup.set("in_app_purchase", this.in_app_purchase);
                this.lookup.set("session_end", this.session_end);
                this.lookup.set("session_start", this.session_start);
            }
            return true;
        }
    }

    static class ButtonInfo {
        String click_action;
        String click_action_type;
        int delay;
        boolean enabled;
        String event;
        int height;
        String image_down;
        String image_down_last_modified;
        String image_normal;
        String image_normal_last_modified;
        String label;
        String label_html;
        String label_rgba;
        String label_shadow_rgba;
        int scale;
        int width;

        ButtonInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.image_normal, this.image_normal_last_modified);
            controller.media_manager.cache(this.image_down, this.image_down_last_modified);
        }

        boolean is_ready() {
            if (!this.enabled) {
                return true;
            }
            if (!controller.media_manager.is_cached(this.image_normal)) {
                return false;
            }
            return controller.media_manager.is_cached(this.image_down);
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled", true);
            this.delay = table.get_Integer("delay");
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.scale = table.get_Integer("scale");
            this.image_normal = table.get_String("image_normal");
            this.image_normal_last_modified = table.get_String("image_normal_last_modified");
            this.image_down = table.get_String("image_down");
            this.image_down_last_modified = table.get_String("image_down_last_modified");
            this.click_action = table.get_String("click_action");
            this.click_action_type = table.get_String("click_action_type");
            this.label = table.get_String(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.label_rgba = table.get_String("label_rgba");
            this.label_shadow_rgba = table.get_String("label_shadow_rgba");
            this.label_html = table.get_String("label_html");
            this.event = table.get_String(DataLayer.EVENT_KEY);
            return true;
        }
    }

    static class CompanionAd {
        StaticCompanionAdInfo _static;
        int ad_campaign_id;
        int ad_id;
        boolean dissolve;
        double dissolve_delay;
        boolean enable_in_app_store;
        boolean enabled;
        HTML5CompanionAdInfo html5;
        String uuid;

        CompanionAd() {
        }

        void cache_media() {
            if (this.enabled) {
                this._static.cache_media();
                this.html5.cache_media();
            }
        }

        boolean is_ready() {
            if (this.html5.enabled && !this.html5.is_ready()) {
                return false;
            }
            if (!this.enabled) {
                return true;
            }
            return this._static.is_ready() || this.html5.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.uuid = table.get_String(Event.UUID);
            this.ad_id = table.get_Integer("ad_id");
            this.ad_campaign_id = table.get_Integer("ad_campaign_id");
            this.dissolve = table.get_Logical("dissolve");
            this.enable_in_app_store = table.get_Logical("enable_in_app_store");
            this.dissolve_delay = table.get_Real("dissolve_delay");
            this._static = new StaticCompanionAdInfo();
            if (!this._static.parse(table.get_Table("static"))) {
                return false;
            }
            this.html5 = new HTML5CompanionAdInfo();
            return this.html5.parse(table.get_Table("html5"));
        }
    }

    static class HTML5CompanionAdInfo {
        String background_color;
        ImageInfo background_logo;
        ButtonInfo close;
        boolean enabled;
        String html5_tag;
        boolean load_spinner_enabled;
        double load_timeout;
        boolean load_timeout_enabled;
        MRAIDJS mraid_js;
        ButtonInfo replay;

        HTML5CompanionAdInfo() {
        }

        void cache_media() {
            if (this.enabled) {
                if (this.mraid_js != null) {
                    this.mraid_js.cache_media();
                }
                if (this.background_logo != null) {
                    this.background_logo.cache_media();
                }
                if (this.replay != null) {
                    this.replay.cache_media();
                }
                if (this.close != null) {
                    this.close.cache_media();
                }
            }
        }

        boolean is_ready() {
            if (!ADCNetwork.connected()) {
                return ADCLog.info.fail("Ad not ready due to no network connection.");
            }
            return this.enabled && this.mraid_js.is_ready() && this.background_logo.is_ready() && this.replay.is_ready() && this.close.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            this.load_timeout = table.get_Real("load_timeout");
            this.load_timeout_enabled = table.get_Logical("load_timeout_enabled");
            this.load_spinner_enabled = table.get_Logical("load_spinner_enabled");
            this.background_color = table.get_String("background_color");
            this.html5_tag = table.get_String("html5_tag");
            this.mraid_js = new MRAIDJS();
            if (!this.mraid_js.parse(table.get_Table("mraid_js"))) {
                return false;
            }
            this.background_logo = new ImageInfo();
            if (!this.background_logo.parse(table.get_Table("background_logo"))) {
                return false;
            }
            this.replay = new ButtonInfo();
            if (!this.replay.parse(table.get_Table("replay"))) {
                return false;
            }
            this.close = new ButtonInfo();
            return this.close.parse(table.get_Table("close"));
        }
    }

    static class ImageInfo {
        int height;
        String image;
        String image_last_modified;
        int scale;
        int width;

        ImageInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.image, this.image_last_modified);
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.image);
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.scale = table.get_Integer("scale");
            this.image = table.get_String(Constants.NATIVE_AD_IMAGE_ELEMENT);
            this.image_last_modified = table.get_String("image_last_modified");
            return true;
        }
    }

    static class InAppBrowser {
        ButtonInfo back;
        String background_bar_image;
        String background_bar_image_last_modified;
        String background_color;
        String background_tile_image;
        String background_tile_image_last_modified;
        ButtonInfo close;
        ButtonInfo forward;
        ImageInfo logo;
        ButtonInfo reload;
        ButtonInfo stop;
        String tiny_glow_image;
        String tiny_glow_image_last_modified;

        InAppBrowser() {
        }

        void cache_media() {
            controller.media_manager.cache(this.tiny_glow_image, this.tiny_glow_image_last_modified);
            controller.media_manager.cache(this.background_bar_image, this.background_bar_image_last_modified);
            controller.media_manager.cache(this.background_tile_image, this.background_tile_image_last_modified);
            this.logo.cache_media();
            this.stop.cache_media();
            this.back.cache_media();
            this.close.cache_media();
            this.forward.cache_media();
            this.reload.cache_media();
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.tiny_glow_image) && controller.media_manager.is_cached(this.background_bar_image) && controller.media_manager.is_cached(this.background_tile_image) && this.logo.is_ready() && this.stop.is_ready() && this.back.is_ready() && this.close.is_ready() && this.forward.is_ready() && this.reload.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.tiny_glow_image = table.get_String("tiny_glow_image");
            this.tiny_glow_image_last_modified = table.get_String("tiny_glow_image_last_modified;");
            this.background_bar_image = table.get_String("background_bar_image");
            this.background_bar_image_last_modified = table.get_String("background_bar_image_last_modified");
            this.background_tile_image = table.get_String("background_tile_image");
            this.background_tile_image_last_modified = table.get_String("background_tile_image_last_modified");
            this.background_color = table.get_String("background_color");
            this.logo = new ImageInfo();
            if (!this.logo.parse(table.get_Table("logo"))) {
                return false;
            }
            this.logo = new ImageInfo();
            if (!this.logo.parse(table.get_Table("logo"))) {
                return false;
            }
            this.stop = new ButtonInfo();
            if (!this.stop.parse(table.get_Table(EventType.STOP))) {
                return false;
            }
            this.back = new ButtonInfo();
            if (!this.back.parse(table.get_Table("back"))) {
                return false;
            }
            this.close = new ButtonInfo();
            if (!this.close.parse(table.get_Table("close"))) {
                return false;
            }
            this.forward = new ButtonInfo();
            if (!this.forward.parse(table.get_Table("forward"))) {
                return false;
            }
            this.reload = new ButtonInfo();
            return this.reload.parse(table.get_Table("reload"));
        }
    }

    static class Limits {
        int custom_play_cap;
        int custom_play_cap_period;
        int daily_play_cap;
        int monthly_play_cap;
        int total_play_cap;
        int volatile_expiration;
        int volatile_play_cap;
        int weekly_play_cap;

        Limits() {
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.daily_play_cap = table.get_Integer("daily_play_cap");
            this.custom_play_cap = table.get_Integer("custom_play_cap");
            this.custom_play_cap_period = table.get_Integer("custom_play_cap_period");
            this.total_play_cap = table.get_Integer("total_play_cap");
            this.monthly_play_cap = table.get_Integer("monthly_play_cap");
            this.weekly_play_cap = table.get_Integer("weekly_play_cap");
            this.volatile_expiration = table.get_Integer("volatile_expiration");
            this.volatile_play_cap = table.get_Integer("volatile_play_cap");
            return true;
        }
    }

    static class MRAIDJS {
        boolean enabled;
        String last_modified;
        String url;

        MRAIDJS() {
        }

        void cache_media() {
            controller.media_manager.cache(this.url, this.last_modified);
        }

        boolean is_ready() {
            return !this.enabled || controller.media_manager.is_cached(this.url);
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.url = table.get_String(PlusShare.KEY_CALL_TO_ACTION_URL);
            this.last_modified = table.get_String("last_modified");
            return true;
        }
    }

    static class PostPopupDialogInfo {
        int height;
        String image;
        String image_last_modified;
        String label;
        String label_fraction;
        String label_html;
        String label_reward;
        String label_rgba;
        String label_shadow_rgba;
        ImageInfo logo;
        ButtonInfo option_done;
        int scale;
        int width;

        PostPopupDialogInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.image, this.image_last_modified);
            this.logo.cache_media();
            this.option_done.cache_media();
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.image) && this.logo.is_ready() && this.option_done.is_ready();
        }

        boolean parse(Table table) {
            this.scale = table.get_Integer("scale");
            this.label_reward = table.get_String("label_reward");
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.image = table.get_String(Constants.NATIVE_AD_IMAGE_ELEMENT);
            this.image_last_modified = table.get_String("image_last_modified");
            this.label = table.get_String(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.label_rgba = table.get_String("label_rgba");
            this.label_shadow_rgba = table.get_String("label_shadow_rgba");
            this.label_fraction = table.get_String("label_fraction");
            this.label_html = table.get_String("label_html");
            this.logo = new ImageInfo();
            if (!this.logo.parse(table.get_Table("logo"))) {
                return false;
            }
            this.option_done = new ButtonInfo();
            return this.option_done.parse(table.get_Table("option_done"));
        }
    }

    static class PostPopupInfo {
        String background_image;
        String background_image_last_modified;
        ImageInfo background_logo;
        PostPopupDialogInfo dialog;

        PostPopupInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.background_image, this.background_image_last_modified);
            this.dialog.cache_media();
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.background_image) && this.background_logo.is_ready() && this.dialog.is_ready();
        }

        boolean parse(Table table) {
            this.background_image = table.get_String("background_image");
            this.background_image_last_modified = table.get_String("background_image_last_modified");
            this.background_logo = new ImageInfo();
            if (!this.background_logo.parse(table.get_Table("background_logo"))) {
                return false;
            }
            this.dialog = new PostPopupDialogInfo();
            return this.dialog.parse(table.get_Table("dialog"));
        }
    }

    static class PrePopupDialogInfo {
        int height;
        String image;
        String image_last_modified;
        String label;
        String label_fraction;
        String label_html;
        String label_reward;
        String label_rgba;
        String label_shadow_rgba;
        ImageInfo logo;
        ButtonInfo option_no;
        ButtonInfo option_yes;
        int scale;
        int width;

        PrePopupDialogInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.image, this.image_last_modified);
            this.logo.cache_media();
            this.option_yes.cache_media();
            this.option_no.cache_media();
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.image) && this.logo.is_ready() && this.option_yes.is_ready();
        }

        boolean parse(Table table) {
            this.scale = table.get_Integer("scale");
            this.label_reward = table.get_String("label_reward");
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.image = table.get_String(Constants.NATIVE_AD_IMAGE_ELEMENT);
            this.image_last_modified = table.get_String("image_last_modified");
            this.label = table.get_String(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            this.label_rgba = table.get_String("label_rgba");
            this.label_shadow_rgba = table.get_String("label_shadow_rgba");
            this.label_fraction = table.get_String("label_fraction");
            this.label_html = table.get_String("label_html");
            this.logo = new ImageInfo();
            if (!this.logo.parse(table.get_Table("logo"))) {
                return false;
            }
            this.option_yes = new ButtonInfo();
            if (!this.option_yes.parse(table.get_Table("option_yes"))) {
                return false;
            }
            this.option_no = new ButtonInfo();
            return this.option_no.parse(table.get_Table("option_no"));
        }
    }

    static class PrePopupInfo {
        String background_image;
        String background_image_last_modified;
        ImageInfo background_logo;
        PrePopupDialogInfo dialog;

        PrePopupInfo() {
        }

        void cache_media() {
            controller.media_manager.cache(this.background_image, this.background_image_last_modified);
            this.background_logo.cache_media();
            this.dialog.cache_media();
        }

        boolean is_ready() {
            return controller.media_manager.is_cached(this.background_image) && this.background_logo.is_ready() && this.dialog.is_ready();
        }

        boolean parse(Table table) {
            this.background_image = table.get_String("background_image");
            this.background_image_last_modified = table.get_String("background_image_last_modified");
            this.background_logo = new ImageInfo();
            if (!this.background_logo.parse(table.get_Table("background_logo"))) {
                return false;
            }
            this.dialog = new PrePopupDialogInfo();
            return this.dialog.parse(table.get_Table("dialog"));
        }
    }

    static class StaticCompanionAdInfo {
        ButtonInfo _continue;
        String background_image;
        String background_image_last_modified;
        ButtonInfo download;
        boolean enabled;
        int height;
        ButtonInfo info;
        ButtonInfo replay;
        int width;

        StaticCompanionAdInfo() {
        }

        void cache_media() {
            if (this.enabled) {
                controller.media_manager.cache(this.background_image, this.background_image_last_modified);
                this.replay.cache_media();
                this._continue.cache_media();
                this.download.cache_media();
                this.info.cache_media();
            }
        }

        boolean is_ready() {
            if (!this.enabled) {
                return true;
            }
            if (!controller.media_manager.is_cached(this.background_image)) {
                return false;
            }
            if (!this.replay.is_ready()) {
                return false;
            }
            if (!this._continue.is_ready()) {
                return false;
            }
            if (!this.download.is_ready()) {
                return false;
            }
            return this.info.is_ready();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.background_image = table.get_String("background_image");
            this.background_image_last_modified = table.get_String("background_image_last_modified");
            if (force_static_url != null) {
                this.background_image = force_static_url;
            }
            this.replay = new ButtonInfo();
            if (!this.replay.parse(table.get_Table("replay"))) {
                return false;
            }
            this._continue = new ButtonInfo();
            if (!this._continue.parse(table.get_Table("continue"))) {
                return false;
            }
            this.download = new ButtonInfo();
            if (!this.download.parse(table.get_Table(AdTrackerConstants.GOAL_DOWNLOAD))) {
                return false;
            }
            this.info = new ButtonInfo();
            return this.info.parse(table.get_Table("info"));
        }
    }

    static class ThirdPartyAppTracking {
        ArrayList install;
        HashMap lookup;
        ArrayList session_start;
        ArrayList update;

        ThirdPartyAppTracking() {
            this.update = new ArrayList();
            this.install = new ArrayList();
            this.session_start = new ArrayList();
            this.lookup = new HashMap();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            ArrayList arrayList = table.get_StringList("update");
            this.update = arrayList;
            if (arrayList == null) {
                return false;
            }
            arrayList = table.get_StringList("install");
            this.install = arrayList;
            if (arrayList == null) {
                return false;
            }
            arrayList = table.get_StringList("session_start");
            this.session_start = arrayList;
            if (arrayList == null) {
                return false;
            }
            this.lookup.put("update", this.update);
            this.lookup.put("install", this.install);
            this.lookup.put("session_start", this.session_start);
            return true;
        }
    }

    static class ThirdPartyTracking {
        ArrayList _continue;
        ArrayList cancel;
        ArrayList card_dissolved;
        ArrayList card_shown;
        ArrayList complete;
        ArrayList download;
        ArrayList first_quartile;
        ArrayList html5_interaction;
        ArrayList in_video_engagement;
        ArrayList info;
        HashMap lookup;
        ArrayList midpoint;
        ArrayList replay;
        ArrayList reward_v4vc;
        ArrayList skip;
        ArrayList start;
        ArrayList third_quartile;

        ThirdPartyTracking() {
            this.replay = new ArrayList();
            this.card_shown = new ArrayList();
            this.html5_interaction = new ArrayList();
            this.cancel = new ArrayList();
            this.download = new ArrayList();
            this.skip = new ArrayList();
            this.info = new ArrayList();
            this.midpoint = new ArrayList();
            this.card_dissolved = new ArrayList();
            this.start = new ArrayList();
            this.third_quartile = new ArrayList();
            this.complete = new ArrayList();
            this._continue = new ArrayList();
            this.in_video_engagement = new ArrayList();
            this.reward_v4vc = new ArrayList();
            this.first_quartile = new ArrayList();
            this.lookup = new HashMap();
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.replay = table.get_StringList("replay");
            this.card_shown = table.get_StringList("card_shown");
            this.html5_interaction = table.get_StringList("html5_interaction");
            this.cancel = table.get_StringList("cancel");
            this.download = table.get_StringList(AdTrackerConstants.GOAL_DOWNLOAD);
            this.skip = table.get_StringList("skip");
            this.info = table.get_StringList("info");
            this.midpoint = table.get_StringList("midpoint");
            this.card_dissolved = table.get_StringList("card_dissolved");
            this.start = table.get_StringList("start");
            this.third_quartile = table.get_StringList("third_quartile");
            this.complete = table.get_StringList(Constants.NATIVE_AD_COMPLETE_ELEMENT);
            this._continue = table.get_StringList("continue");
            this.in_video_engagement = table.get_StringList("in_video_engagement");
            this.reward_v4vc = table.get_StringList("reward_v4vc");
            this.first_quartile = table.get_StringList("first_quartile");
            this.lookup.put("replay", this.replay);
            this.lookup.put("card_shown", this.card_shown);
            this.lookup.put("html5_interaction", this.html5_interaction);
            this.lookup.put("cancel", this.cancel);
            this.lookup.put(AdTrackerConstants.GOAL_DOWNLOAD, this.download);
            this.lookup.put("skip", this.skip);
            this.lookup.put("info", this.info);
            this.lookup.put("midpoint", this.midpoint);
            this.lookup.put("card_dissolved", this.card_dissolved);
            this.lookup.put("start", this.start);
            this.lookup.put("third_quartile", this.third_quartile);
            this.lookup.put(Constants.NATIVE_AD_COMPLETE_ELEMENT, this.complete);
            this.lookup.put("continue", this._continue);
            this.lookup.put("in_video_engagement", this.in_video_engagement);
            this.lookup.put("reward_v4vc", this.reward_v4vc);
            this.lookup.put("first_quartile", this.first_quartile);
            return true;
        }
    }

    static class V4VCLimits {
        int custom_play_cap;
        int custom_play_cap_period;
        int daily_play_cap;

        V4VCLimits() {
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.daily_play_cap = table.get_Integer("daily_play_cap");
            this.custom_play_cap = table.get_Integer("custom_play_cap");
            this.custom_play_cap_period = table.get_Integer("custom_play_cap_period");
            return true;
        }
    }

    static class Video {
        String audio_channels;
        String audio_codec;
        String audio_sample_rate;
        double duration;
        boolean enabled;
        int height;
        ButtonInfo in_video_engagement;
        String last_modified;
        ButtonInfo skip_video;
        String url;
        String video_codec;
        String video_frame_rate;
        int width;

        Video() {
        }

        void cache_media() {
            controller.media_manager.cache(this.url, this.last_modified);
            this.in_video_engagement.cache_media();
            this.skip_video.cache_media();
        }

        String filepath() {
            return controller.media_manager.local_filepath(this.url);
        }

        boolean is_ready() {
            if (!this.enabled) {
                return true;
            }
            if (!controller.media_manager.is_cached(this.url)) {
                return false;
            }
            if (!this.skip_video.is_ready()) {
                return false;
            }
            if (!this.in_video_engagement.is_ready()) {
                return false;
            }
            if (controller.ad_manager.app.view_network_pass_filter.equals("online") && !ADCNetwork.connected()) {
                return ADCLog.info.fail("Video not ready due to VIEW_FILTER_ONLINE");
            }
            if (controller.ad_manager.app.view_network_pass_filter.equals("wifi") && !ADCNetwork.using_wifi()) {
                return ADCLog.info.fail("Video not ready due to VIEW_FILTER_WIFI");
            }
            if (controller.ad_manager.app.view_network_pass_filter.equals("cell") && !ADCNetwork.using_mobile()) {
                return ADCLog.info.fail("Video not ready due to VIEW_FILTER_CELL");
            }
            return (controller.ad_manager.app.view_network_pass_filter.equals("offline") && ADCNetwork.connected()) ? ADCLog.info.fail("Video not ready due to VIEW_FILTER_OFFLINE") : true;
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.width = table.get_Integer(MMLayout.KEY_WIDTH);
            this.height = table.get_Integer(MMLayout.KEY_HEIGHT);
            this.url = table.get_String(PlusShare.KEY_CALL_TO_ACTION_URL);
            this.last_modified = table.get_String("last_modified");
            this.video_frame_rate = table.get_String("video_frame_rate");
            this.audio_channels = table.get_String("audio_channels");
            this.audio_codec = table.get_String("audio_codec");
            this.audio_sample_rate = table.get_String("audio_sample_rate");
            this.video_codec = table.get_String("video_codec");
            this.duration = table.get_Real(Fields.DURATION);
            this.skip_video = new ButtonInfo();
            if (!this.skip_video.parse(table.get_Table("skip_video"))) {
                return false;
            }
            this.in_video_engagement = new ButtonInfo();
            return this.in_video_engagement.parse(table.get_Table("in_video_engagement"));
        }
    }

    static class Zone {
        boolean active;
        Ads ads;
        int daily_play_cap;
        boolean enabled;
        int play_interval;
        ArrayList play_order;
        int session_play_cap;
        ADCZoneState state;
        String uuid;
        ZoneV4VC v4vc;
        ZoneTracking zone_tracking;

        Zone() {
        }

        void advance_play_index() {
            this.state.play_order_index = (this.state.play_order_index + 1) % this.play_order.size();
        }

        void cache_media() {
            if (this.enabled && this.active) {
                int i = 0;
                while (i < this.ads.count()) {
                    this.ads.get(i).cache_media();
                    i++;
                }
            }
        }

        boolean check_for_skip_due_to_interval() {
            if (this.play_interval <= 1) {
                return false;
            }
            controller.zone_state_manager.modified = true;
            ADCZoneState aDCZoneState = this.state;
            int i = aDCZoneState.skipped_plays;
            aDCZoneState.skipped_plays = i + 1;
            if (i == 0) {
                return false;
            }
            if (this.state.skipped_plays >= this.play_interval) {
                this.state.skipped_plays = 0;
            }
            return true;
        }

        int combine_results(int i, int i2) {
            if (i2 <= 0) {
                return 0;
            }
            if (i == -1) {
                return i2;
            }
            if (i >= i2) {
                i = i2;
            }
            return i;
        }

        Ad current_ad() {
            return this.ads.find((String) this.play_order.get(this.state.play_order_index % this.play_order.size()));
        }

        synchronized int get_available_plays() {
            return get_available_plays(current_ad());
        }

        synchronized int get_available_plays(Ad ad) {
            int i;
            int zone_daily_play_count = controller.play_history.zone_daily_play_count(this.uuid);
            i = -1;
            int i2 = ad.limits.volatile_expiration;
            if (i2 == 0 || last_config_ms == 0 || (System.currentTimeMillis() - last_config_ms) / 1000 < ((long) i2)) {
                i2 = ad.limits.volatile_play_cap;
                if (i2 > 0) {
                    i = combine_results(-1, i2 - controller.play_history.ad_interval_play_count(ad.ad_id, (double) ((System.currentTimeMillis() - last_config_ms) / 1000)));
                }
                if (i != 0 || i2 == 0) {
                    i2 = this.daily_play_cap;
                    if (i2 > 0) {
                        i = combine_results(i, i2 - zone_daily_play_count);
                    }
                    if (i == 0) {
                        i = ADCLog.info.int_fail("Ad is not ready to be played due to the daily play cap for zone " + this.uuid);
                    } else {
                        i2 = this.session_play_cap;
                        if (i2 > 0) {
                            i = combine_results(i, i2 - controller.play_history.zone_session_play_count(this.uuid));
                        }
                        if (i == 0) {
                            i = ADCLog.info.int_fail("Ad is not ready to be played due to the session play cap for zone " + this.uuid);
                        } else {
                            if (this.v4vc.enabled) {
                                i2 = this.v4vc.limits.daily_play_cap;
                                if (i2 > 0) {
                                    i = combine_results(i, i2 - zone_daily_play_count);
                                }
                                if (i == 0) {
                                    i = ADCLog.info.int_fail("Ad is not ready to be played due to the V4VC daily play cap.");
                                } else {
                                    zone_daily_play_count = this.v4vc.limits.custom_play_cap_period;
                                    i2 = this.v4vc.limits.custom_play_cap;
                                    if (i2 > 0) {
                                        i = combine_results(i, i2 - controller.play_history.zone_interval_play_count(this.uuid, (double) zone_daily_play_count));
                                    }
                                    if (i == 0) {
                                        i = ADCLog.info.int_fail("Ad is not ready to be played due to the V4VC custom play cap.");
                                    }
                                }
                            }
                            zone_daily_play_count = ad.ad_id;
                            i2 = ad.limits.daily_play_cap;
                            if (i2 > 0) {
                                i = combine_results(i, i2 - controller.play_history.ad_daily_play_count(zone_daily_play_count));
                            }
                            if (i == 0) {
                                try_refresh();
                                i = ADCLog.info.int_fail("Ad is not ready to be played due to the daily play cap.");
                            } else {
                                i2 = ad.limits.weekly_play_cap;
                                if (i2 > 0) {
                                    i = combine_results(i, i2 - controller.play_history.ad_weekly_play_count(zone_daily_play_count));
                                }
                                if (i == 0) {
                                    try_refresh();
                                    i = ADCLog.info.int_fail("Ad is not ready to be played due to the weekly play cap.");
                                } else {
                                    i2 = ad.limits.monthly_play_cap;
                                    if (i2 > 0) {
                                        i = combine_results(i, i2 - controller.play_history.ad_monthly_play_count(zone_daily_play_count));
                                    }
                                    if (i == 0) {
                                        try_refresh();
                                        i = ADCLog.info.int_fail("Ad is not ready to be played due to the monthly play cap.");
                                    } else {
                                        i2 = ad.limits.total_play_cap;
                                        if (i2 > 0) {
                                            i = combine_results(i, i2 - controller.play_history.ad_half_year_play_count(zone_daily_play_count));
                                        }
                                        if (i == 0) {
                                            try_refresh();
                                            i = ADCLog.info.int_fail("Ad is not ready to be played due to the half-year play cap.");
                                        } else {
                                            i2 = ad.limits.custom_play_cap_period;
                                            int i3 = ad.limits.custom_play_cap;
                                            if (i3 > 0) {
                                                i = combine_results(i, i3 - controller.play_history.ad_interval_play_count(zone_daily_play_count, (double) i2));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    try_refresh();
                    i = ADCLog.info.int_fail("Ad is not ready to be played due to the volatile play cap.");
                }
            } else {
                try_refresh();
                i = ADCLog.info.int_fail("The volatile expiration for this ad has been hit.");
            }
            return i;
        }

        boolean is_ad_available() {
            return is_ad_available(false, true);
        }

        boolean is_ad_available(boolean z, boolean z2) {
            if (!z2) {
                return is_ad_available_errorless(z);
            }
            if (!this.enabled || !this.active) {
                return ADCLog.info.fail("Ad is not ready to be played, as zone " + this.uuid + " is disabled or inactive.");
            }
            if (this.ads.count() == 0 || this.play_order.size() == 0) {
                return ADCLog.info.fail("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone " + this.uuid + ".");
            }
            Ad current_ad;
            int size = this.play_order.size();
            int i = 0;
            while (i < size) {
                current_ad = current_ad();
                if (current_ad == null) {
                    return ADCLog.info.fail("Ad is not ready to be played due to an unknown error.");
                }
                if (current_ad.is_ready()) {
                    break;
                }
                advance_play_index();
                i++;
            }
            current_ad = null;
            if (current_ad == null) {
                return ADCLog.info.fail("Ad is not ready to be played as required assets are still downloading or otherwise missing.");
            }
            return get_available_plays(current_ad) != 0;
        }

        boolean is_ad_available_errorless(boolean z) {
            if (!z) {
                ADC.has_ad_availability_changed();
            }
            if (!this.enabled || !this.active || this.ads.count() == 0 || this.play_order.size() == 0) {
                return false;
            }
            Ad current_ad;
            int size = this.play_order.size();
            int i = 0;
            while (i < size) {
                current_ad = current_ad();
                if (current_ad == null) {
                    return false;
                }
                if (current_ad.is_ready()) {
                    break;
                }
                advance_play_index();
                i++;
            }
            current_ad = null;
            return ad != null && get_available_plays(ad) != 0;
        }

        boolean is_v4vc_zone() {
            return is_v4vc_zone(true);
        }

        boolean is_v4vc_zone(boolean z) {
            if (!z) {
                return is_v4vc_zone_errorless();
            }
            if (!this.enabled || !this.active) {
                return ADCLog.info.fail("Ad is not ready, as zone " + this.uuid + " is disabled or inactive.");
            }
            if (this.ads.count() == 0) {
                return ADCLog.info.fail("Ad is not ready, as there are currently no ads to play in zone " + this.uuid + ".");
            }
            return this.ads.first().v4vc.enabled ? true : ADCLog.info.fail("Ad is not ready, as zone " + this.uuid + " is not V4VC enabled and must be played using an AdColonyVideoAd object.");
        }

        boolean is_v4vc_zone_errorless() {
            return this.enabled && this.active && this.ads.count() != 0 && this.ads.first().v4vc.enabled;
        }

        boolean is_video_zone() {
            return is_video_zone(true);
        }

        boolean is_video_zone(boolean z) {
            if (!z) {
                return is_video_zone_errorless();
            }
            if (!this.enabled || !this.active) {
                return ADCLog.info.fail("Ad is not ready, as zone " + this.uuid + " is disabled or inactive.");
            }
            if (this.ads.count() == 0) {
                return ADCLog.info.fail("Ad is not ready, as there are currently no ads to play in zone " + this.uuid + ".");
            }
            return this.ads.first().v4vc.enabled ? ADCLog.info.fail("Ad is not ready, as zone " + this.uuid + " is V4VC enabled and must be played using an AdColonyV4VCAd object.") : true;
        }

        boolean is_video_zone_errorless() {
            return this.enabled && this.active && this.ads.count() != 0 && !this.ads.first().v4vc.enabled;
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.uuid = table.get_String(Event.UUID);
            this.enabled = table.get_Logical("enabled");
            this.active = table.get_Logical("active");
            if (!this.enabled || !this.active) {
                return true;
            }
            this.play_interval = table.get_Integer("play_interval");
            this.daily_play_cap = table.get_Integer("daily_play_cap");
            this.session_play_cap = table.get_Integer("session_play_cap");
            this.play_order = new ArrayList();
            ArrayList arrayList = table.get_StringList("play_order");
            this.play_order = arrayList;
            if (arrayList == null) {
                return false;
            }
            this.zone_tracking = new ZoneTracking();
            if (!this.zone_tracking.parse(table.get_Table("tracking"))) {
                return false;
            }
            this.ads = new Ads();
            if (!this.ads.parse(table.get_List(NativeAdResponse.KEY_ADS))) {
                return false;
            }
            this.v4vc = new ZoneV4VC();
            if (!this.v4vc.parse(table.get_Table("v4vc"))) {
                return false;
            }
            this.state = controller.zone_state_manager.find(this.uuid);
            return true;
        }

        void try_refresh() {
            controller.ad_manager.refresh();
        }
    }

    static class ZoneTracking {
        String request;

        ZoneTracking() {
        }

        boolean parse(Table table) {
            if (table != null) {
                this.request = table.get_String(Constants.AD_REQUEST, null);
            }
            return true;
        }
    }

    static class ZoneV4VC {
        boolean client_side;
        boolean enabled;
        V4VCLimits limits;
        int reward_amount;
        String reward_name;
        int videos_per_reward;

        ZoneV4VC() {
        }

        boolean parse(Table table) {
            if (table == null) {
                return false;
            }
            this.enabled = table.get_Logical("enabled");
            if (!this.enabled) {
                return true;
            }
            this.limits = new V4VCLimits();
            if (!this.limits.parse(table.get_Table("limits"))) {
                return false;
            }
            this.reward_amount = table.get_Integer("reward_amount");
            this.reward_name = table.get_String("reward_name");
            this.client_side = table.get_Logical("client_side");
            this.videos_per_reward = table.get_Integer("videos_per_reward");
            return true;
        }
    }

    static class Zones {
        ArrayList data;

        Zones() {
        }

        int count() {
            return this.data.size();
        }

        Zone find(Object obj) {
            int i = 0;
            while (i < this.data.size()) {
                Zone zone = (Zone) this.data.get(i);
                if (zone.uuid.equals(obj)) {
                    return zone;
                }
                i++;
            }
            ADCLog.dev.print("No such zone: ").println(obj);
            return null;
        }

        Zone first() {
            return (Zone) this.data.get(0);
        }

        Zone get(int i) {
            return (Zone) this.data.get(i);
        }

        boolean parse(List list) {
            this.data = new ArrayList();
            if (list == null) {
                return false;
            }
            int i = 0;
            while (i < list.count()) {
                Zone zone = new Zone();
                if (!zone.parse(list.get_Table(i))) {
                    return false;
                }
                this.data.add(zone);
                i++;
            }
            return true;
        }
    }

    ADCManifest() {
    }
}