package com.google.android.gms.internal;

public enum a {
    ADVERTISER_ID("_aid"),
    ADVERTISING_TRACKING_ENABLED("_ate"),
    APP_ID("_ai"),
    APP_NAME("_an"),
    APP_VERSION("_av"),
    ARBITRARY_JAVASCRIPT("_jsm"),
    CONSTANT("_c"),
    COOKIE("_k"),
    CUSTOM_VAR("_v"),
    CONTAINER_VERSION("_ctv"),
    DEBUG_MODE("_dbg"),
    DEVICE_NAME("_dn"),
    DEVICE_TYPE("_dt"),
    DOM_ELEMENT("_d"),
    EVENT("_e"),
    FUNCTION_CALL("_func"),
    JS_GLOBAL("_j"),
    LANGUAGE("_l"),
    OS_VERSION("_ov"),
    PLATFORM("_p"),
    RANDOM("_r"),
    REFERRER("_f"),
    RESOLUTION("_rs"),
    RUNTIME_VERSION("_rv"),
    SDK_VERSION("_sv"),
    SIMPLE_MAP("_smm"),
    TIME("_t"),
    URL("_u"),
    ADWORDS_CLICK_REFERRER("_awcr"),
    DEVICE_ID("_did"),
    ENCODE("_enc"),
    GTM_VERSION("_gtmv"),
    HASH("_hsh"),
    INSTALL_REFERRER("_ir"),
    JOINER("_jn"),
    MOBILE_ADWORDS_UNIQUE_ID("_awid"),
    REGEX_GROUP("_reg"),
    DATA_LAYER_WRITE("_dlw"),
    REGEX("_re"),
    STARTS_WITH("_sw"),
    ENDS_WITH("_ew"),
    CONTAINS("_cn"),
    EQUALS("_eq"),
    LESS_THAN("_lt"),
    LESS_EQUALS("_le"),
    GREATER_THAN("_gt"),
    GREATER_EQUALS("_ge"),
    ARBITRARY_PIXEL("_img"),
    ARBITRARY_HTML("_html"),
    GOOGLE_TAG_MANAGER("_gtm"),
    GOOGLE_ANALYTICS("_ga"),
    ADWORDS_CONVERSION("_awct"),
    SMART_PIXEL("_sp"),
    FLOODLIGHT_COUNTER("_flc"),
    FLOODLIGHT_SALES("_fls"),
    BIZO_INSIGHT("_bzi"),
    QUANTCAST_MEASUREMENT("_qcm"),
    TARGUS_ADVISOR("_ta"),
    MEDIAPLEX_ROI("_mpr"),
    COMSCORE_MEASUREMENT("_csm"),
    TURN_CONVERSION("_tc"),
    TURN_DATA_COLLECTION("_tdc"),
    MEDIA6DEGREES_UNIVERSAL_PIXEL("_m6d"),
    UNIVERSAL_ANALYTICS("_ua"),
    MEDIAPLEX_MCT("_mpm"),
    VISUAL_DNA_CONVERSION("_vdc"),
    GOOGLE_AFFILIATE_NETWORK("_gan"),
    MARIN_SOFTWARE("_ms"),
    ADROLL_SMART_PIXEL("_asp"),
    CONFIGURATION_VALUE("_cv"),
    CRITEO("_crt"),
    TRUSTED_STORES("_ts"),
    CLICK_TALE_STANDARD("_cts"),
    LINK_CLICK_LISTENER("_lcl"),
    FORM_SUBMIT_LISTENER("_fsl"),
    TIMER_LISTENER("_tl"),
    CLICK_LISTENER("_cl"),
    JS_ERROR_LISTENER("_jel");
    private final String name;

    static {
        String str = "_aid";
        F = new a("ADVERTISER_ID", 0, "_aid");
        str = "_ate";
        G = new a("ADVERTISING_TRACKING_ENABLED", 1, "_ate");
        str = "_ai";
        H = new a("APP_ID", 2, "_ai");
        str = "_an";
        I = new a("APP_NAME", 3, "_an");
        str = "_av";
        J = new a("APP_VERSION", 4, "_av");
        String str2 = "_jsm";
        K = new a("ARBITRARY_JAVASCRIPT", 5, "_jsm");
        str2 = "_c";
        L = new a("CONSTANT", 6, "_c");
        str2 = "_k";
        M = new a("COOKIE", 7, "_k");
        str2 = "_v";
        N = new a("CUSTOM_VAR", 8, "_v");
        str2 = "_ctv";
        O = new a("CONTAINER_VERSION", 9, "_ctv");
        str2 = "_dbg";
        P = new a("DEBUG_MODE", 10, "_dbg");
        str2 = "_dn";
        Q = new a("DEVICE_NAME", 11, "_dn");
        str2 = "_dt";
        R = new a("DEVICE_TYPE", 12, "_dt");
        str2 = "_d";
        S = new a("DOM_ELEMENT", 13, "_d");
        str2 = "_e";
        T = new a("EVENT", 14, "_e");
        str2 = "_func";
        U = new a("FUNCTION_CALL", 15, "_func");
        str2 = "_j";
        V = new a("JS_GLOBAL", 16, "_j");
        str2 = "_l";
        W = new a("LANGUAGE", 17, "_l");
        str2 = "_ov";
        X = new a("OS_VERSION", 18, "_ov");
        str2 = "_p";
        Y = new a("PLATFORM", 19, "_p");
        str2 = "_r";
        Z = new a("RANDOM", 20, "_r");
        str2 = "_f";
        aa = new a("REFERRER", 21, "_f");
        str2 = "_rs";
        ab = new a("RESOLUTION", 22, "_rs");
        str2 = "_rv";
        ac = new a("RUNTIME_VERSION", 23, "_rv");
        str2 = "_sv";
        ad = new a("SDK_VERSION", 24, "_sv");
        str2 = "_smm";
        ae = new a("SIMPLE_MAP", 25, "_smm");
        str2 = "_t";
        af = new a("TIME", 26, "_t");
        str2 = "_u";
        ag = new a("URL", 27, "_u");
        str2 = "_awcr";
        ah = new a("ADWORDS_CLICK_REFERRER", 28, "_awcr");
        str2 = "_did";
        ai = new a("DEVICE_ID", 29, "_did");
        str2 = "_enc";
        aj = new a("ENCODE", 30, "_enc");
        str2 = "_gtmv";
        ak = new a("GTM_VERSION", 31, "_gtmv");
        str2 = "_hsh";
        al = new a("HASH", 32, "_hsh");
        str2 = "_ir";
        am = new a("INSTALL_REFERRER", 33, "_ir");
        str2 = "_jn";
        an = new a("JOINER", 34, "_jn");
        str2 = "_awid";
        ao = new a("MOBILE_ADWORDS_UNIQUE_ID", 35, "_awid");
        str2 = "_reg";
        ap = new a("REGEX_GROUP", 36, "_reg");
        str2 = "_dlw";
        aq = new a("DATA_LAYER_WRITE", 37, "_dlw");
        str2 = "_re";
        ar = new a("REGEX", 38, "_re");
        str2 = "_sw";
        as = new a("STARTS_WITH", 39, "_sw");
        str2 = "_ew";
        at = new a("ENDS_WITH", 40, "_ew");
        str2 = "_cn";
        au = new a("CONTAINS", 41, "_cn");
        str2 = "_eq";
        av = new a("EQUALS", 42, "_eq");
        str2 = "_lt";
        aw = new a("LESS_THAN", 43, "_lt");
        str2 = "_le";
        ax = new a("LESS_EQUALS", 44, "_le");
        str2 = "_gt";
        ay = new a("GREATER_THAN", 45, "_gt");
        str2 = "_ge";
        az = new a("GREATER_EQUALS", 46, "_ge");
        str2 = "_img";
        aA = new a("ARBITRARY_PIXEL", 47, "_img");
        str2 = "_html";
        aB = new a("ARBITRARY_HTML", 48, "_html");
        str2 = "_gtm";
        aC = new a("GOOGLE_TAG_MANAGER", 49, "_gtm");
        str2 = "_ga";
        aD = new a("GOOGLE_ANALYTICS", 50, "_ga");
        str2 = "_awct";
        aE = new a("ADWORDS_CONVERSION", 51, "_awct");
        str2 = "_sp";
        aF = new a("SMART_PIXEL", 52, "_sp");
        str2 = "_flc";
        aG = new a("FLOODLIGHT_COUNTER", 53, "_flc");
        str2 = "_fls";
        aH = new a("FLOODLIGHT_SALES", 54, "_fls");
        str2 = "_bzi";
        aI = new a("BIZO_INSIGHT", 55, "_bzi");
        str2 = "_qcm";
        aJ = new a("QUANTCAST_MEASUREMENT", 56, "_qcm");
        str2 = "_ta";
        aK = new a("TARGUS_ADVISOR", 57, "_ta");
        str2 = "_mpr";
        aL = new a("MEDIAPLEX_ROI", 58, "_mpr");
        str2 = "_csm";
        aM = new a("COMSCORE_MEASUREMENT", 59, "_csm");
        str2 = "_tc";
        aN = new a("TURN_CONVERSION", 60, "_tc");
        str2 = "_tdc";
        aO = new a("TURN_DATA_COLLECTION", 61, "_tdc");
        str2 = "_m6d";
        aP = new a("MEDIA6DEGREES_UNIVERSAL_PIXEL", 62, "_m6d");
        str2 = "_ua";
        aQ = new a("UNIVERSAL_ANALYTICS", 63, "_ua");
        str2 = "_mpm";
        aR = new a("MEDIAPLEX_MCT", 64, "_mpm");
        str2 = "_vdc";
        aS = new a("VISUAL_DNA_CONVERSION", 65, "_vdc");
        str2 = "_gan";
        aT = new a("GOOGLE_AFFILIATE_NETWORK", 66, "_gan");
        str2 = "_ms";
        aU = new a("MARIN_SOFTWARE", 67, "_ms");
        str2 = "_asp";
        aV = new a("ADROLL_SMART_PIXEL", 68, "_asp");
        str2 = "_cv";
        aW = new a("CONFIGURATION_VALUE", 69, "_cv");
        str2 = "_crt";
        aX = new a("CRITEO", 70, "_crt");
        str2 = "_ts";
        aY = new a("TRUSTED_STORES", 71, "_ts");
        str2 = "_cts";
        aZ = new a("CLICK_TALE_STANDARD", 72, "_cts");
        str2 = "_lcl";
        ba = new a("LINK_CLICK_LISTENER", 73, "_lcl");
        str2 = "_fsl";
        bb = new a("FORM_SUBMIT_LISTENER", 74, "_fsl");
        str2 = "_tl";
        bc = new a("TIMER_LISTENER", 75, "_tl");
        str2 = "_cl";
        bd = new a("CLICK_LISTENER", 76, "_cl");
        str2 = "_jel";
        be = new a("JS_ERROR_LISTENER", 77, "_jel");
        bf = new a[]{F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, aa, ab, ac, ad, ae, af, ag, ah, ai, aj, ak, al, am, an, ao, ap, aq, ar, as, at, au, av, aw, ax, ay, az, aA, aB, aC, aD, aE, aF, aG, aH, aI, aJ, aK, aL, aM, aN, aO, aP, aQ, aR, aS, aT, aU, aV, aW, aX, aY, aZ, ba, bb, bc, bd, be};
    }

    private a(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }
}