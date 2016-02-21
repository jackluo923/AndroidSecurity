package com.zeptolab.utils;

import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.Locale;

public class Language {
    private static ArrayList langs;

    static {
        langs = new ArrayList();
        langs.add(0, "en");
        langs.add(1, "ru");
        langs.add(GoogleScorer.CLIENT_PLUS, "de");
        langs.add(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, "fr");
        langs.add(GoogleScorer.CLIENT_APPSTATE, "zh");
        langs.add(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, "ja");
        langs.add(IabHelper.BILLING_RESPONSE_RESULT_ERROR, AnalyticsEvent.TYPE_END_SESSION);
        langs.add(GoogleScorer.CLIENT_ALL, "it");
        langs.add(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, "ko");
        langs.add(ZBuildConfig.$minsdk, "nl");
        langs.add(R.styleable.MapAttrs_uiZoomControls, "br");
    }

    public static native String getAppLocale();

    public static String getAsString() {
        return getAppLocale();
    }

    public static String getAsString(int i) {
        return langs.size() > i ? (String) langs.get(i) : (String) langs.get(0);
    }

    public static String getSystemLocale() {
        Locale locale = Locale.getDefault();
        String toLowerCase = locale.getLanguage().toLowerCase();
        String toLowerCase2 = locale.getCountry().toLowerCase();
        return (toLowerCase.equals("pt") && toLowerCase2.equals("br")) ? "br" : toLowerCase;
    }
}