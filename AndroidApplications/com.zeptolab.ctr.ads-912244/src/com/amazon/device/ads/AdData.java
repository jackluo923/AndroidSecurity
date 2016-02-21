package com.amazon.device.ads;

import java.util.Set;

class AdData {
    public static final int CAN_EXPAND1_CT = 1003;
    public static final int CAN_EXPAND2_CT = 1004;
    public static final int CAN_PLAY_AUDIO1_CT = 1001;
    public static final int CAN_PLAY_AUDIO2_CT = 1002;
    public static final int CAN_PLAY_VIDEO_CT = 1014;
    public static final int HTML_CT = 1007;
    public static final int INTERSTITIAL_CT = 1008;
    public static final int MRAID1_CT = 1016;
    public static final int MRAID2_CT = 1017;
    private final AdSize a;
    private String b;
    private String c;
    private String d;
    private AdProperties e;
    private Set f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private String m;
    private String n;
    private int o;
    private long p;
    private MetricsCollector q;

    protected enum AAXCreative {
        HTML(1007),
        MRAID1(1016),
        INTERSTITIAL(1008);
        private final int a;

        static {
            HTML = new AAXCreative("HTML", 0, 1007);
            MRAID1 = new AAXCreative("MRAID1", 1, 1016);
            INTERSTITIAL = new AAXCreative("INTERSTITIAL", 2, 1008);
            b = new AAXCreative[]{HTML, MRAID1, INTERSTITIAL};
        }

        private AAXCreative(int i) {
            this.a = i;
        }

        static AAXCreative a(int i) {
            switch (i) {
                case HTML_CT:
                    return HTML;
                case INTERSTITIAL_CT:
                    return INTERSTITIAL;
                case MRAID1_CT:
                    return MRAID1;
                default:
                    return null;
            }
        }

        static AAXCreative a(Set set) {
            if (set.contains(MRAID1)) {
                return MRAID1;
            }
            return set.contains(HTML) ? HTML : null;
        }

        public int getId() {
            return this.a;
        }
    }

    public AdData(AdSize adSize) {
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.p = -1;
        this.a = adSize;
        this.q = new MetricsCollector();
    }

    protected AdSize a() {
        return this.a;
    }

    protected void a(int i) {
        this.g = i;
    }

    protected void a(long j) {
        this.p = j;
    }

    protected void a(AdProperties adProperties) {
        this.e = adProperties;
    }

    protected void a(String str) {
        this.d = str;
    }

    protected void a(Set set) {
        this.f = set;
    }

    protected void a(boolean z) {
        this.k = z;
    }

    protected String b() {
        return this.d;
    }

    protected void b(int i) {
        this.h = i;
    }

    protected void b(String str) {
        this.b = str;
    }

    protected AdProperties c() {
        return this.e;
    }

    protected void c(int i) {
        this.i = i;
    }

    protected void c(String str) {
        this.c = str;
    }

    protected Set d() {
        return this.f;
    }

    protected void d(int i) {
        this.j = i;
    }

    protected int e() {
        return this.g;
    }

    protected int f() {
        return this.h;
    }

    protected int g() {
        return this.i;
    }

    public String getConnectionType() {
        return this.m;
    }

    public boolean getIsFetched() {
        return this.l;
    }

    public String getMaxSize() {
        return this.n;
    }

    public MetricsCollector getMetricsCollector() {
        return this.q;
    }

    public int getSlotId() {
        return this.o;
    }

    protected int h() {
        return this.j;
    }

    protected String i() {
        return this.b;
    }

    public boolean isExpired() {
        return this.p >= 0 && System.currentTimeMillis() > this.p;
    }

    protected String j() {
        return this.c;
    }

    protected boolean k() {
        return this.k;
    }

    public void resetMetricsCollector() {
        this.q = new MetricsCollector();
    }

    public void setConnectionType(String str) {
        this.m = str;
    }

    public void setFetched(boolean z) {
        this.l = z;
    }

    public void setMaxSize(String str) {
        this.n = str;
    }

    public void setSlotId(int i) {
        this.o = i;
    }
}