package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.webkit.WebView;
import android.widget.Toast;
import com.brightcove.player.event.Event;
import com.brightcove.player.media.MediaService;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.ads.AdSize;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

class ADCMRAIDHandler {
    AdColonyAd ad;
    Activity ctx;
    WebView end_card_web_view;
    Handler h;
    String play_order_index_json;
    Runnable r;
    ADCVideo video;

    public ADCMRAIDHandler(ADCVideo aDCVideo, WebView webView, Activity activity) {
        this.end_card_web_view = webView;
        this.ctx = activity;
        this.video = aDCVideo;
        this.h = new Handler();
        this.r = new Runnable() {
            public void run() {
                mraid_block = false;
            }
        };
    }

    void MRAIDCommandAutoPlay(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandCheckAutoPlay called with parameters: ").println(obj);
    }

    void MRAIDCommandCheckAppPresence(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandCheckAppPresence called with parameters: ").println(obj);
        String decode = decode((String) obj.get("handle"));
        execute_javascript("adc_bridge.fireAppPresenceEvent('" + decode + "'," + ADCUtil.application_exists(decode) + ")");
    }

    void MRAIDCommandClose() {
        ADCLog.dev.println((Object)"ADC [info] MRAIDCommandClose called");
        this.ctx.finish();
        end_card_finished_handler.notify_continuation();
    }

    void MRAIDCommandCreateCalendarEvent(HashMap hashMap) {
        Date parse;
        Date parse2;
        Date date;
        long time;
        long time2;
        long j;
        Intent putExtra;
        ADCLog.dev.print("ADC [info] MRAIDCommandCreateCalendarEvent called with parameters: ").println((Object)hashMap);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'hh:mmZ");
        DateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ssZ");
        DateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd");
        String decode = decode((String) hashMap.get(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION));
        decode((String) hashMap.get("location"));
        String decode2 = decode((String) hashMap.get("start"));
        String decode3 = decode((String) hashMap.get("end"));
        String decode4 = decode((String) hashMap.get("summary"));
        String decode5 = decode((String) hashMap.get("recurrence"));
        String str = AdTrackerConstants.BLANK;
        String str2 = AdTrackerConstants.BLANK;
        HashMap hashMap2 = new HashMap();
        String str3 = "{";
        str3 = "}";
        str3 = decode5.replace("\"", AdTrackerConstants.BLANK).replace(str3, AdTrackerConstants.BLANK).replace(str3, AdTrackerConstants.BLANK);
        if (!str3.equals(AdTrackerConstants.BLANK)) {
            String[] split = str3.split(",");
            int length = split.length;
            int i = 0;
            while (i < length) {
                String str4 = split[i];
                hashMap2.put(str4.split(":")[0], str4.split(":")[1]);
                i++;
            }
            Object decode6 = decode((String) hashMap2.get("expires"));
            Object toUpperCase = decode((String) hashMap2.get("frequency")).toUpperCase();
            ADCLog.dev.print("Calendar Recurrence - ").println((Object)str3);
            ADCLog.dev.print("Calendar Recurrence - frequency = ").println(toUpperCase);
            ADCLog.dev.print("Calendar Recurrence - expires =  ").println(decode6);
        }
        decode5 = str;
        str = str2;
        if (decode4.equals(AdTrackerConstants.BLANK)) {
            decode4 = decode((String) hashMap.get(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION));
        }
        try {
            parse = simpleDateFormat.parse(decode2);
            try {
                parse2 = simpleDateFormat.parse(decode3);
            } catch (Exception e) {
                parse2 = null;
                if (parse == null) {
                    parse = simpleDateFormat2.parse(decode2);
                    parse2 = simpleDateFormat2.parse(decode3);
                    date = parse;
                } else {
                    date = parse;
                }
                parse = simpleDateFormat3.parse(decode5);
                if (date == null) {
                    Toast.makeText(this.ctx, "Unable to create Calendar Event.", 0).show();
                } else {
                    time = date.getTime();
                    time2 = parse2.getTime();
                    j = 0;
                    if (parse != null) {
                        j = (parse.getTime() - date.getTime()) / 1000;
                    }
                    if (!str.equals("DAILY")) {
                        j = j / 86400 + 1;
                    } else if (!str.equals("WEEKLY")) {
                        j = j / 604800 + 1;
                    } else if (!str.equals("MONTHLY")) {
                        j = j / 2629800 + 1;
                    } else if (str.equals("YEARLY")) {
                        j = j / 31557600 + 1;
                    } else {
                        j = 0;
                    }
                    if (str3.equals(AdTrackerConstants.BLANK)) {
                        putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2).putExtra("rrule", "FREQ=" + str + ";" + "COUNT=" + j);
                        ADCLog.dev.print("Calendar Recurrence - count = ").println((double) j);
                    } else {
                        putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2);
                    }
                    this.ctx.startActivity(putExtra);
                }
            }
        } catch (Exception e2) {
            parse = null;
            parse2 = null;
            if (parse == null) {
                date = parse;
            } else {
                parse = simpleDateFormat2.parse(decode2);
                parse2 = simpleDateFormat2.parse(decode3);
                date = parse;
            }
            try {
                parse = simpleDateFormat3.parse(decode5);
            } catch (Exception e3) {
                parse = null;
            }
            if (date == null) {
                time = date.getTime();
                time2 = parse2.getTime();
                j = 0;
                if (parse != null) {
                    j = (parse.getTime() - date.getTime()) / 1000;
                }
                if (!str.equals("DAILY")) {
                    j = j / 86400 + 1;
                } else if (!str.equals("WEEKLY")) {
                    j = j / 604800 + 1;
                } else if (!str.equals("MONTHLY")) {
                    j = j / 2629800 + 1;
                } else if (str.equals("YEARLY")) {
                    j = 0;
                } else {
                    j = j / 31557600 + 1;
                }
                if (str3.equals(AdTrackerConstants.BLANK)) {
                    putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2);
                } else {
                    putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2).putExtra("rrule", "FREQ=" + str + ";" + "COUNT=" + j);
                    ADCLog.dev.print("Calendar Recurrence - count = ").println((double) j);
                }
                this.ctx.startActivity(putExtra);
            } else {
                Toast.makeText(this.ctx, "Unable to create Calendar Event.", 0).show();
            }
        }
        if (parse == null) {
            try {
                parse = simpleDateFormat2.parse(decode2);
                parse2 = simpleDateFormat2.parse(decode3);
                date = parse;
            } catch (Exception e4) {
                date = parse;
            }
        } else {
            date = parse;
        }
        parse = simpleDateFormat3.parse(decode5);
        if (date == null) {
            Toast.makeText(this.ctx, "Unable to create Calendar Event.", 0).show();
        } else {
            time = date.getTime();
            time2 = parse2.getTime();
            j = 0;
            if (parse != null) {
                j = (parse.getTime() - date.getTime()) / 1000;
            }
            if (!str.equals("DAILY")) {
                j = j / 86400 + 1;
            } else if (!str.equals("WEEKLY")) {
                j = j / 604800 + 1;
            } else if (!str.equals("MONTHLY")) {
                j = j / 2629800 + 1;
            } else if (str.equals("YEARLY")) {
                j = j / 31557600 + 1;
            } else {
                j = 0;
            }
            if (str3.equals(AdTrackerConstants.BLANK)) {
                putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2);
            } else {
                putExtra = new Intent("android.intent.action.EDIT").setType("vnd.android.cursor.item/event").putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, decode4).putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, decode).putExtra("beginTime", time).putExtra(Event.END_TIME, time2).putExtra("rrule", "FREQ=" + str + ";" + "COUNT=" + j);
                ADCLog.dev.print("Calendar Recurrence - count = ").println((double) j);
            }
            try {
                this.ctx.startActivity(putExtra);
            } catch (Exception e5) {
                Toast.makeText(this.ctx, "Unable to create Calendar Event.", 0).show();
            }
        }
    }

    void MRAIDCommandExpand(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandExpand called with url: ").println(obj);
        execute_javascript("adc_bridge.fireChangeEvent({state:'expanded'});");
    }

    void MRAIDCommandLaunchApp(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandLaunchApp called with parameters: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode((String) obj.get("handle"));
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        try {
            this.ctx.startActivity(this.ctx.getPackageManager().getLaunchIntentForPackage(decode));
        } catch (Exception e) {
            Toast.makeText(this.ctx, "Failed to launch external application.", 0).show();
        }
    }

    void MRAIDCommandMail(Object obj) {
        int i = 0;
        ADCLog.dev.print("ADC [info] MRAIDCommandMail called with parameters: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode((String) obj.get("subject"));
        String decode2 = decode((String) obj.get("body"));
        String decode3 = decode((String) obj.get("to"));
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.SUBJECT", decode).putExtra("android.intent.extra.TEXT", decode2).putExtra("android.intent.extra.EMAIL", new String[]{decode3});
            this.ctx.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this.ctx, "Unable to launch email client.", i).show();
        }
    }

    void MRAIDCommandOpen(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandOpen called with url: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode(obj);
        if (decode.startsWith("adcvideo")) {
            this.video.playVideo(decode.replace("adcvideo", MediaService.DEFAULT_MEDIA_DELIVERY));
        } else if (obj.contains("youtube")) {
            try {
                this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:" + decode.substring(decode.indexOf(118) + 2))));
            } catch (Exception e) {
                decode = decode(obj);
                if (decode.contains("safari")) {
                    decode = decode.replace("safari", MediaService.DEFAULT_MEDIA_DELIVERY);
                }
                this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode)));
            }
        } else if (decode.startsWith(Event.INTENT_EXTERNAL_BROWSER)) {
            ADC.track_ad_event("html5_interaction");
            this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode.replace(Event.INTENT_EXTERNAL_BROWSER, MediaService.DEFAULT_MEDIA_DELIVERY))));
        } else {
            ADC.track_ad_event("html5_interaction", this.play_order_index_json);
            AdColonyBrowser.url = decode;
            this.ctx.startActivity(new Intent(this.ctx, AdColonyBrowser.class));
        }
    }

    void MRAIDCommandOpenStore(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandOpenStore called with item: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        try {
            this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode(obj))));
        } catch (Exception e) {
            Toast.makeText(this.ctx, "Unable to open store.", 0).show();
        }
    }

    void MRAIDCommandSMS(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandSMS called with parameters: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode((String) obj.get("to"));
        String decode2 = decode((String) obj.get("body"));
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        try {
            this.ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("sms:" + decode)).putExtra("sms_body", decode2));
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this.ctx, "Failed to create sms.", 0).show();
        }
    }

    void MRAIDCommandSendADCEvent(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandSendADCEvent called with type: ").println(obj);
        ADC.track_ad_event(obj);
    }

    void MRAIDCommandSendCustomADCEvent(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandSendCustomADCEvent called with parameters: ").println(obj);
        String str = "custom_event";
        ADC.track_ad_event(str, "{\"event_type\":\"" + decode((String) obj.get("event_type")) + "\",\"ad_slot\":" + this.ad.zone_info.state.session_play_count + "}");
    }

    void MRAIDCommandSocialPost(HashMap hashMap) {
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode((String) hashMap.get("text"));
        String decode2 = decode((String) hashMap.get(PlusShare.KEY_CALL_TO_ACTION_URL));
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(WebRequest.CONTENT_TYPE_PLAIN_TEXT);
        intent.putExtra("android.intent.extra.TEXT", decode + " " + decode2);
        this.ctx.startActivity(Intent.createChooser(intent, "Share this post using..."));
    }

    void MRAIDCommandTakeScreenshot() {
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        String str = Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots/" + "AdColony_Screenshot_" + System.currentTimeMillis() + ".jpg";
        View rootView = this.end_card_web_view.getRootView();
        rootView.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(rootView.getDrawingCache());
        rootView.setDrawingCacheEnabled(false);
        File file = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures");
        File file2 = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots");
        try {
            file.mkdir();
            file2.mkdir();
        } catch (Exception e) {
        }
        try {
            OutputStream fileOutputStream = new FileOutputStream(new File(str));
            createBitmap.compress(CompressFormat.JPEG, AdSize.LARGE_AD_HEIGHT, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            Toast.makeText(this.ctx, "Screenshot saved to Gallery!", 0).show();
        } catch (FileNotFoundException e2) {
            Toast.makeText(this.ctx, "Error saving screenshot.", 0).show();
            ADCLog.dev.print("ADC [info] FileNotFoundException in MRAIDCommandTakeScreenshot");
        } catch (IOException e3) {
            Toast.makeText(this.ctx, "Error saving screenshot.", 0).show();
            ADCLog.dev.print("ADC [info] IOException in MRAIDCommandTakeScreenshot");
        }
        this.ctx.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + Environment.getExternalStorageDirectory())));
    }

    void MRAIDCommandTel(Object obj) {
        ADCLog.dev.print("ADC [info] MRAIDCommandTel called with parameters: ").println(obj);
        mraid_block = true;
        this.h.postDelayed(this.r, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
        String decode = decode((String) obj.get("number"));
        ADC.track_ad_event("html5_interaction", this.play_order_index_json);
        try {
            this.ctx.startActivity(new Intent("android.intent.action.DIAL").setData(Uri.parse("tel:" + decode)));
        } catch (Exception e) {
            Toast.makeText(this.ctx, "Failed to dial number.", 0).show();
        }
    }

    String decode(String str) {
        return str.equals(null) ? AdTrackerConstants.BLANK : URLDecoder.decode(str);
    }

    void execute_javascript(String str) {
        this.end_card_web_view.loadUrl("javascript:" + str);
    }

    void handleMRAIDCommand(String str) {
        String str2;
        ?[] split;
        String replace = str.replace("mraid://", AdTrackerConstants.BLANK);
        if (replace.contains("?")) {
            String[] split2 = replace.split("\\?");
            str2 = split2[0];
            String[] strArr = split2;
        } else {
            str2 = replace;
            int i = 0;
        }
        split = strArr != null ? strArr[1].split("&") : new ?[0];
        HashMap hashMap = new HashMap();
        int length = split.length;
        int i2 = 0;
        while (i2 < length) {
            String str3 = split[i2];
            hashMap.put(str3.split("=")[0], str3.split("=")[1]);
            i2++;
        }
        this.ad = current_ad;
        this.play_order_index_json = "{\"ad_slot\":" + this.ad.zone_info.state.session_play_count + "}";
        if (str2.contains("send_adc_event")) {
            MRAIDCommandSendADCEvent((String) hashMap.get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE));
        } else if (str2.contains("close")) {
            MRAIDCommandClose();
        } else if (str2.contains("open_store") && !mraid_block) {
            MRAIDCommandOpenStore((String) hashMap.get("item"));
        } else if (str2.contains("open") && !mraid_block) {
            MRAIDCommandOpen((String) hashMap.get(PlusShare.KEY_CALL_TO_ACTION_URL));
        } else if (str2.contains("expand")) {
            MRAIDCommandExpand((String) hashMap.get(PlusShare.KEY_CALL_TO_ACTION_URL));
        } else if (str2.contains("create_calendar_event") && !mraid_block) {
            MRAIDCommandCreateCalendarEvent(hashMap);
        } else if (str2.contains("mail") && !mraid_block) {
            MRAIDCommandMail(hashMap);
        } else if (str2.contains(Event.INTENT_TXT_MESSAGE) && !mraid_block) {
            MRAIDCommandSMS(hashMap);
        } else if (str2.contains(Event.INTENT_PHONE_CALL) && !mraid_block) {
            MRAIDCommandTel(hashMap);
        } else if (str2.contains("custom_event")) {
            MRAIDCommandSendCustomADCEvent(hashMap);
        } else if (str2.contains("launch_app") && !mraid_block) {
            MRAIDCommandLaunchApp(hashMap);
        } else if (str2.contains("check_app_presence")) {
            MRAIDCommandCheckAppPresence(hashMap);
        } else if (str2.contains("auto_play")) {
            MRAIDCommandAutoPlay(hashMap);
        } else if (str2.contains("save_screenshot")) {
            MRAIDCommandTakeScreenshot();
        } else if (str2.contains("social_post") && !mraid_block) {
            MRAIDCommandSocialPost(hashMap);
        }
        execute_javascript("adc_bridge.nativeCallComplete()");
    }
}