package com.mixpanel.android.mpmetrics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class InstallReferrerReceiver extends BroadcastReceiver {
    private static final String f = "Mixpanel InstallReferrer";
    private final Pattern a;
    private final Pattern b;
    private final Pattern c;
    private final Pattern d;
    private final Pattern e;

    public InstallReferrerReceiver() {
        this.a = Pattern.compile("(^|&)utm_source=([^&#=]*)([#&]|$)");
        this.b = Pattern.compile("(^|&)utm_medium=([^&#=]*)([#&]|$)");
        this.c = Pattern.compile("(^|&)utm_campaign=([^&#=]*)([#&]|$)");
        this.d = Pattern.compile("(^|&)utm_content=([^&#=]*)([#&]|$)");
        this.e = Pattern.compile("(^|&)utm_term=([^&#=]*)([#&]|$)");
    }

    private String a(Matcher matcher) {
        if (matcher.find()) {
            String group = matcher.group(GoogleScorer.CLIENT_PLUS);
            if (group != null) {
                try {
                    return URLDecoder.decode(group, HTMLEncoder.ENCODE_NAME_DEFAULT);
                } catch (UnsupportedEncodingException e) {
                    Log.e(f, "Could not decode a parameter into UTF-8");
                }
            }
        }
        return null;
    }

    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            CharSequence string = extras.getString(AdTrackerConstants.REFERRER);
            if (string != null) {
                Map hashMap = new HashMap();
                hashMap.put(AdTrackerConstants.REFERRER, string);
                String a = a(this.a.matcher(string));
                if (a != null) {
                    hashMap.put("utm_source", a);
                }
                a = a(this.b.matcher(string));
                if (a != null) {
                    hashMap.put("utm_medium", a);
                }
                a = a(this.c.matcher(string));
                if (a != null) {
                    hashMap.put("utm_campaign", a);
                }
                a = a(this.d.matcher(string));
                if (a != null) {
                    hashMap.put("utm_content", a);
                }
                String a2 = a(this.e.matcher(string));
                if (a2 != null) {
                    hashMap.put("utm_term", a2);
                }
                w.a(context, "com.mixpanel.android.mpmetrics.ReferralInfo", hashMap);
            }
        }
    }
}