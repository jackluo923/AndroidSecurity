package com.google.android.apps.analytics;

import com.pocketools.currency.PocketCurrency;
import java.util.Locale;

class HitBuilder {
    static final String FAKE_DOMAIN_HASH = "1";
    private static final String GOOGLE_ANALYTICS_GIF_PATH = "/__utm.gif";
    private static final int X10_PROJECT_NAMES = 8;
    private static final int X10_PROJECT_SCOPES = 11;
    private static final int X10_PROJECT_VALUES = 9;

    HitBuilder() {
    }

    static void appendCurrencyValue(StringBuilder stringBuilder, String str, double d) {
        stringBuilder.append(str).append("=");
        double floor = Math.floor((d * 1000000.0d) + 0.5d) / 1000000.0d;
        if (floor != 0.0d) {
            stringBuilder.append(Double.toString(floor));
        }
    }

    private static void appendStringValue(StringBuilder stringBuilder, String str, String str2) {
        stringBuilder.append(str).append("=");
        if (str2 != null && str2.trim().length() > 0) {
            stringBuilder.append(AnalyticsParameterEncoder.encode(str2));
        }
    }

    private static String constructEventRequestPath(Event event, Referrer referrer) {
        Locale locale = Locale.getDefault();
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(String.format("5(%s*%s", new Object[]{encode(event.category), encode(event.action)}));
        if (event.label != null) {
            stringBuilder2.append("*").append(encode(event.label));
        }
        stringBuilder2.append(")");
        if (event.value > -1) {
            stringBuilder2.append(String.format("(%d)", new Object[]{Integer.valueOf(event.value)}));
        }
        stringBuilder2.append(getCustomVariableParams(event));
        stringBuilder.append(GOOGLE_ANALYTICS_GIF_PATH);
        stringBuilder.append("?utmwv=4.8.1ma");
        stringBuilder.append("&utmn=").append(event.getRandomVal());
        stringBuilder.append("&utmt=event");
        stringBuilder.append("&utme=").append(stringBuilder2.toString());
        stringBuilder.append("&utmcs=UTF-8");
        stringBuilder.append(String.format("&utmsr=%dx%d", new Object[]{Integer.valueOf(event.screenWidth), Integer.valueOf(event.screenHeight)}));
        stringBuilder.append(String.format("&utmul=%s-%s", new Object[]{locale.getLanguage(), locale.getCountry()}));
        stringBuilder.append("&utmac=").append(event.accountId);
        stringBuilder.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        if (event.getAdHitId() != 0) {
            stringBuilder.append("&utmhid=").append(event.getAdHitId());
        }
        return stringBuilder.toString();
    }

    public static String constructHitRequestPath(Event event, Referrer referrer) {
        StringBuilder stringBuilder = new StringBuilder();
        if ("__##GOOGLEPAGEVIEW##__".equals(event.category)) {
            stringBuilder.append(constructPageviewRequestPath(event, referrer));
        } else if ("__##GOOGLEITEM##__".equals(event.category)) {
            stringBuilder.append(constructItemRequestPath(event, referrer));
        } else if ("__##GOOGLETRANSACTION##__".equals(event.category)) {
            stringBuilder.append(constructTransactionRequestPath(event, referrer));
        } else {
            stringBuilder.append(constructEventRequestPath(event, referrer));
        }
        if (event.getAnonymizeIp()) {
            stringBuilder.append("&aip=1");
        }
        if (!event.getUseServerTime()) {
            stringBuilder.append("&utmht=" + System.currentTimeMillis());
        }
        return stringBuilder.toString();
    }

    private static String constructItemRequestPath(Event event, Referrer referrer) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(GOOGLE_ANALYTICS_GIF_PATH);
        stringBuilder.append("?utmwv=4.8.1ma");
        stringBuilder.append("&utmn=").append(event.getRandomVal());
        stringBuilder.append("&utmt=item");
        Item item = event.getItem();
        if (item != null) {
            appendStringValue(stringBuilder, "&utmtid", item.getOrderId());
            appendStringValue(stringBuilder, "&utmipc", item.getItemSKU());
            appendStringValue(stringBuilder, "&utmipn", item.getItemName());
            appendStringValue(stringBuilder, "&utmiva", item.getItemCategory());
            appendCurrencyValue(stringBuilder, "&utmipr", item.getItemPrice());
            stringBuilder.append("&utmiqt=");
            if (item.getItemCount() != 0) {
                stringBuilder.append(item.getItemCount());
            }
        }
        stringBuilder.append("&utmac=").append(event.accountId);
        stringBuilder.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        return stringBuilder.toString();
    }

    private static String constructPageviewRequestPath(Event event, Referrer referrer) {
        String str = PocketCurrency.AD_MOB_KEYWORD_HINT;
        if (event.action != null) {
            str = event.action;
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        str = encode(str);
        String customVariableParams = getCustomVariableParams(event);
        Locale locale = Locale.getDefault();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(GOOGLE_ANALYTICS_GIF_PATH);
        stringBuilder.append("?utmwv=4.8.1ma");
        stringBuilder.append("&utmn=").append(event.getRandomVal());
        if (customVariableParams.length() > 0) {
            stringBuilder.append("&utme=").append(customVariableParams);
        }
        stringBuilder.append("&utmcs=UTF-8");
        stringBuilder.append(String.format("&utmsr=%dx%d", new Object[]{Integer.valueOf(event.screenWidth), Integer.valueOf(event.screenHeight)}));
        stringBuilder.append(String.format("&utmul=%s-%s", new Object[]{locale.getLanguage(), locale.getCountry()}));
        stringBuilder.append("&utmp=").append(str);
        stringBuilder.append("&utmac=").append(event.accountId);
        stringBuilder.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        if (event.getAdHitId() != 0) {
            stringBuilder.append("&utmhid=").append(event.getAdHitId());
        }
        return stringBuilder.toString();
    }

    private static String constructTransactionRequestPath(Event event, Referrer referrer) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(GOOGLE_ANALYTICS_GIF_PATH);
        stringBuilder.append("?utmwv=4.8.1ma");
        stringBuilder.append("&utmn=").append(event.getRandomVal());
        stringBuilder.append("&utmt=tran");
        Transaction transaction = event.getTransaction();
        if (transaction != null) {
            appendStringValue(stringBuilder, "&utmtid", transaction.getOrderId());
            appendStringValue(stringBuilder, "&utmtst", transaction.getStoreName());
            appendCurrencyValue(stringBuilder, "&utmtto", transaction.getTotalCost());
            appendCurrencyValue(stringBuilder, "&utmttx", transaction.getTotalTax());
            appendCurrencyValue(stringBuilder, "&utmtsp", transaction.getShippingCost());
            appendStringValue(stringBuilder, "&utmtci", PocketCurrency.AD_MOB_KEYWORD_HINT);
            appendStringValue(stringBuilder, "&utmtrg", PocketCurrency.AD_MOB_KEYWORD_HINT);
            appendStringValue(stringBuilder, "&utmtco", PocketCurrency.AD_MOB_KEYWORD_HINT);
        }
        stringBuilder.append("&utmac=").append(event.accountId);
        stringBuilder.append("&utmcc=").append(getEscapedCookieString(event, referrer));
        return stringBuilder.toString();
    }

    private static void createX10Project(CustomVariable[] customVariableArr, StringBuilder stringBuilder, int i) {
        stringBuilder.append(i).append("(");
        int i2 = 1;
        int i3 = 0;
        while (i3 < customVariableArr.length) {
            if (customVariableArr[i3] != null) {
                CustomVariable customVariable = customVariableArr[i3];
                if (i2 == 0) {
                    stringBuilder.append("*");
                } else {
                    boolean z = false;
                }
                stringBuilder.append(customVariable.getIndex()).append("!");
                switch (i) {
                    case X10_PROJECT_NAMES:
                        stringBuilder.append(x10Escape(encode(customVariable.getName())));
                        break;
                    case X10_PROJECT_VALUES:
                        stringBuilder.append(x10Escape(encode(customVariable.getValue())));
                        break;
                    case X10_PROJECT_SCOPES:
                        stringBuilder.append(customVariable.getScope());
                        break;
                }
            }
            i3++;
        }
        stringBuilder.append(")");
    }

    private static String encode(String str) {
        return AnalyticsParameterEncoder.encode(str);
    }

    public static String getCustomVariableParams(Event event) {
        StringBuilder stringBuilder = new StringBuilder();
        CustomVariableBuffer customVariableBuffer = event.getCustomVariableBuffer();
        if (customVariableBuffer == null) {
            return PocketCurrency.AD_MOB_KEYWORD_HINT;
        }
        if (!customVariableBuffer.hasCustomVariables()) {
            return PocketCurrency.AD_MOB_KEYWORD_HINT;
        }
        CustomVariable[] customVariableArray = customVariableBuffer.getCustomVariableArray();
        createX10Project(customVariableArray, stringBuilder, X10_PROJECT_NAMES);
        createX10Project(customVariableArray, stringBuilder, X10_PROJECT_VALUES);
        createX10Project(customVariableArray, stringBuilder, X10_PROJECT_SCOPES);
        return stringBuilder.toString();
    }

    public static String getEscapedCookieString(Event event, Referrer referrer) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("__utma=");
        stringBuilder.append(FAKE_DOMAIN_HASH).append(".");
        stringBuilder.append(event.getUserId()).append(".");
        stringBuilder.append(event.getTimestampFirst()).append(".");
        stringBuilder.append(event.getTimestampPrevious()).append(".");
        stringBuilder.append(event.getTimestampCurrent()).append(".");
        stringBuilder.append(event.getVisits()).append(";");
        if (referrer != null) {
            stringBuilder.append("+__utmz=");
            stringBuilder.append(FAKE_DOMAIN_HASH).append(".");
            stringBuilder.append(referrer.getTimeStamp()).append(".");
            stringBuilder.append(Integer.valueOf(referrer.getVisit()).toString()).append(".");
            stringBuilder.append(Integer.valueOf(referrer.getIndex()).toString()).append(".");
            stringBuilder.append(referrer.getReferrerString()).append(";");
        }
        return encode(stringBuilder.toString());
    }

    private static String x10Escape(String str) {
        return str.replace("'", "'0").replace(")", "'1").replace("*", "'2").replace("!", "'3");
    }
}