package com.inmobi.commons.analytics.db;

public class AnalyticsEvent {
    public static final String EVENT_ID = "id";
    public static final String IN_APP = "inapp";
    public static final String SUBS = "subs";
    public static final String TYPE_CUSTOM_EVENT = "ce";
    public static final String TYPE_END_SESSION = "es";
    public static final String TYPE_LEVEL_BEGIN = "lb";
    public static final String TYPE_LEVEL_END = "le";
    public static final String TYPE_START_SESSION = "ss";
    public static final String TYPE_TAG_TRANSACTION = "pi";
    private long a;
    private String b;
    private String c;
    private long d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private TRANSACTION_ITEM_TYPE o;
    private double p;
    private int q;
    private String r;
    private String s;
    private String t;
    private TRANSACTION_STATUS_SERVER_CODE u;
    private long v;
    private long w;

    public enum TRANSACTION_ITEM_TYPE {
        INVALID(-1),
        INAPP(1),
        SUBSCRIPTION(2);
        private final int a;

        static {
            INVALID = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE("INVALID", 0, -1);
            INAPP = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE("INAPP", 1, 1);
            SUBSCRIPTION = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE("SUBSCRIPTION", 2, 2);
            b = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE[]{INVALID, INAPP, SUBSCRIPTION};
        }

        private TRANSACTION_ITEM_TYPE(int i) {
            this.a = i;
        }

        public int getValue() {
            return this.a;
        }
    }

    public enum TRANSACTION_STATUS_GOOGLE_API_VALUES {
        PURCHASED(0),
        FAILED(1),
        REFUNDED(2);
        private final int a;

        static {
            PURCHASED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES("PURCHASED", 0, 0);
            FAILED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES("FAILED", 1, 1);
            REFUNDED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES("REFUNDED", 2, 2);
            b = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES[]{PURCHASED, FAILED, REFUNDED};
        }

        private TRANSACTION_STATUS_GOOGLE_API_VALUES(int i) {
            this.a = i;
        }

        public int getValue() {
            return this.a;
        }
    }

    public enum TRANSACTION_STATUS_SERVER_CODE {
        INVALID(-1),
        PURCHASED(1),
        FAILED(2),
        RESTORED(3),
        REFUNDED(4);
        private final int a;

        static {
            INVALID = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE("INVALID", 0, -1);
            PURCHASED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE("PURCHASED", 1, 1);
            FAILED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE("FAILED", 2, 2);
            RESTORED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE("RESTORED", 3, 3);
            REFUNDED = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE("REFUNDED", 4, 4);
            b = new com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE[]{INVALID, PURCHASED, FAILED, RESTORED, REFUNDED};
        }

        private TRANSACTION_STATUS_SERVER_CODE(int i) {
            this.a = i;
        }

        public int getValue() {
            return this.a;
        }
    }

    public AnalyticsEvent(String str) {
        this.b = str;
    }

    public String getEventAttemptCount() {
        return this.j;
    }

    public String getEventAttemptTime() {
        return this.k;
    }

    public String getEventAttributeMap() {
        return this.e;
    }

    public String getEventCustomName() {
        return this.l;
    }

    public long getEventId() {
        return this.a;
    }

    public String getEventLevelId() {
        return this.f;
    }

    public String getEventLevelName() {
        return this.g;
    }

    public String getEventLevelStatus() {
        return this.h;
    }

    public String getEventSessionId() {
        return this.c;
    }

    public long getEventSessionTimeStamp() {
        return this.d;
    }

    public long getEventTableId() {
        return this.w;
    }

    public long getEventTimeStamp() {
        return this.v;
    }

    public String getEventTimeTaken() {
        return this.i;
    }

    public String getEventType() {
        return this.b;
    }

    public String getTransactionCurrencyCode() {
        return this.r;
    }

    public String getTransactionId() {
        return this.t;
    }

    public int getTransactionItemCount() {
        return this.q;
    }

    public String getTransactionItemDescription() {
        return this.n;
    }

    public String getTransactionItemName() {
        return this.m;
    }

    public double getTransactionItemPrice() {
        return this.p;
    }

    public int getTransactionItemType() {
        return this.o == null ? TRANSACTION_ITEM_TYPE.INVALID.getValue() : this.o.getValue();
    }

    public String getTransactionProductId() {
        return this.s;
    }

    public int getTransactionStatus() {
        return this.u == null ? TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() : this.u.getValue();
    }

    public void setEventAttemptCount(String str) {
        this.j = str;
    }

    public void setEventAttemptTime(String str) {
        this.k = str;
    }

    public void setEventAttributeMap(String str) {
        this.e = str;
    }

    public void setEventCustomName(String str) {
        this.l = str;
    }

    public void setEventId(long j) {
        this.a = j;
    }

    public void setEventLevelId(String str) {
        this.f = str;
    }

    public void setEventLevelName(String str) {
        this.g = str;
    }

    public void setEventLevelStatus(String str) {
        this.h = str;
    }

    public void setEventSessionId(String str) {
        this.c = str;
    }

    public void setEventSessionTimeStamp(long j) {
        this.d = j;
    }

    public void setEventTableId(long j) {
        this.w = j;
    }

    public void setEventTimeStamp(long j) {
        this.v = j;
    }

    public void setEventTimeTaken(String str) {
        this.i = str;
    }

    public void setTransactionCurrencyCode(String str) {
        this.r = str;
    }

    public void setTransactionId(String str) {
        this.t = str;
    }

    public void setTransactionItemCount(int i) {
        this.q = i;
    }

    public void setTransactionItemDescription(String str) {
        this.n = str;
    }

    public void setTransactionItemName(String str) {
        this.m = str;
    }

    public void setTransactionItemPrice(double d) {
        this.p = d;
    }

    public void setTransactionItemType(int i) {
        if (TRANSACTION_ITEM_TYPE.INAPP.getValue() == i) {
            this.o = TRANSACTION_ITEM_TYPE.INAPP;
        } else if (TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue() == i) {
            this.o = TRANSACTION_ITEM_TYPE.SUBSCRIPTION;
        } else {
            this.o = TRANSACTION_ITEM_TYPE.INVALID;
        }
    }

    public void setTransactionProductId(String str) {
        this.s = str;
    }

    public void setTransactionStatus(int i) {
        if (TRANSACTION_STATUS_SERVER_CODE.PURCHASED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.PURCHASED;
        } else if (TRANSACTION_STATUS_SERVER_CODE.REFUNDED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.REFUNDED;
        } else if (TRANSACTION_STATUS_SERVER_CODE.FAILED.getValue() == i) {
            this.u = TRANSACTION_STATUS_SERVER_CODE.FAILED;
        } else {
            this.u = TRANSACTION_STATUS_SERVER_CODE.INVALID;
        }
    }
}