package com.inmobi.monetization.internal.objects;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.GetLtvpRulesResponse;
import java.util.HashMap;
import java.util.Iterator;

public class LtvpRuleCache {
    static LtvpRuleCache a;
    private static String c;
    private static String d;
    private static String e;
    private static String f;
    private SharedPreferences b;

    static {
        c = "IMAdMLtvpRuleCache";
        d = "IMAdMLtvpRuleId";
        e = "IMAdMLtvpHardExpiry";
        f = "IMAdMLtvpSoftExpiry";
    }

    private LtvpRuleCache(Context context) {
        this.b = null;
        this.b = context.getSharedPreferences(c, 0);
    }

    private void a(long j) {
        Editor edit = this.b.edit();
        edit.putLong(e, j);
        edit.commit();
    }

    private void a(String str) {
        Editor edit = this.b.edit();
        edit.putString(d, str);
        edit.commit();
    }

    private void a(HashMap hashMap) {
        try {
            Editor edit = this.b.edit();
            Iterator it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                edit.putInt(str, ((Integer) hashMap.get(str)).intValue());
            }
            edit.commit();
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception saving rule map", e);
        }
    }

    private void b(long j) {
        Editor edit = this.b.edit();
        edit.putLong(f, j);
        edit.commit();
    }

    public static LtvpRuleCache getInstance(Context context) {
        if (a == null) {
            synchronized (LtvpRuleCache.class) {
                if (a == null) {
                    a = new LtvpRuleCache(context);
                }
            }
        }
        return a;
    }

    public void clearLtvpRuleCache() {
        Editor edit = this.b.edit();
        edit.clear();
        edit.commit();
    }

    public long getHardExpiryForLtvpRule() {
        return this.b.getLong(e, 0);
    }

    public int getLtvpRule(long j) {
        return this.b.getInt(String.valueOf(j), 0);
    }

    public String getLtvpRuleId() {
        return this.b.getString(d, AdTrackerConstants.BLANK);
    }

    public long getSoftExpiryForLtvpRule() {
        return this.b.getLong(f, 0);
    }

    public void setLtvpRuleConfig(GetLtvpRulesResponse getLtvpRulesResponse) {
        a(getLtvpRulesResponse.getRuleId());
        a(getLtvpRulesResponse.getHardExpiry() + getLtvpRulesResponse.getTimeStamp());
        b(getLtvpRulesResponse.getSoftExpiry() + getLtvpRulesResponse.getTimeStamp());
        a(getLtvpRulesResponse.getRules());
    }
}