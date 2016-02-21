package com.google.android.gms.analytics;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.SortedSet;
import java.util.TreeSet;

class u {
    private static final u sk;
    private SortedSet sh;
    private StringBuilder si;
    private boolean sj;

    public enum a {
        MAP_BUILDER_SET,
        MAP_BUILDER_SET_ALL,
        MAP_BUILDER_GET,
        MAP_BUILDER_SET_CAMPAIGN_PARAMS,
        BLANK_04,
        BLANK_05,
        BLANK_06,
        BLANK_07,
        BLANK_08,
        GET,
        SET,
        SEND,
        BLANK_12,
        BLANK_13,
        BLANK_14,
        BLANK_15,
        BLANK_16,
        BLANK_17,
        BLANK_18,
        BLANK_19,
        BLANK_20,
        BLANK_21,
        BLANK_22,
        BLANK_23,
        BLANK_24,
        BLANK_25,
        BLANK_26,
        BLANK_27,
        BLANK_28,
        BLANK_29,
        SET_EXCEPTION_PARSER,
        GET_EXCEPTION_PARSER,
        CONSTRUCT_TRANSACTION,
        CONSTRUCT_EXCEPTION,
        CONSTRUCT_RAW_EXCEPTION,
        CONSTRUCT_TIMING,
        CONSTRUCT_SOCIAL,
        BLANK_37,
        BLANK_38,
        GET_TRACKER,
        GET_DEFAULT_TRACKER,
        SET_DEFAULT_TRACKER,
        SET_APP_OPT_OUT,
        GET_APP_OPT_OUT,
        DISPATCH,
        SET_DISPATCH_PERIOD,
        BLANK_46,
        REPORT_UNCAUGHT_EXCEPTIONS,
        SET_AUTO_ACTIVITY_TRACKING,
        SET_SESSION_TIMEOUT,
        CONSTRUCT_EVENT,
        CONSTRUCT_ITEM,
        BLANK_52,
        BLANK_53,
        SET_DRY_RUN,
        GET_DRY_RUN,
        SET_LOGGER,
        SET_FORCE_LOCAL_DISPATCH,
        GET_TRACKER_NAME,
        CLOSE_TRACKER,
        EASY_TRACKER_ACTIVITY_START,
        EASY_TRACKER_ACTIVITY_STOP,
        CONSTRUCT_APP_VIEW;

        static {
            sl = new com.google.android.gms.analytics.u.a("MAP_BUILDER_SET", 0);
            sm = new com.google.android.gms.analytics.u.a("MAP_BUILDER_SET_ALL", 1);
            sn = new com.google.android.gms.analytics.u.a("MAP_BUILDER_GET", 2);
            so = new com.google.android.gms.analytics.u.a("MAP_BUILDER_SET_CAMPAIGN_PARAMS", 3);
            sp = new com.google.android.gms.analytics.u.a("BLANK_04", 4);
            sq = new com.google.android.gms.analytics.u.a("BLANK_05", 5);
            sr = new com.google.android.gms.analytics.u.a("BLANK_06", 6);
            ss = new com.google.android.gms.analytics.u.a("BLANK_07", 7);
            st = new com.google.android.gms.analytics.u.a("BLANK_08", 8);
            su = new com.google.android.gms.analytics.u.a("GET", 9);
            sv = new com.google.android.gms.analytics.u.a("SET", 10);
            sw = new com.google.android.gms.analytics.u.a("SEND", 11);
            sx = new com.google.android.gms.analytics.u.a("BLANK_12", 12);
            sy = new com.google.android.gms.analytics.u.a("BLANK_13", 13);
            sz = new com.google.android.gms.analytics.u.a("BLANK_14", 14);
            sA = new com.google.android.gms.analytics.u.a("BLANK_15", 15);
            sB = new com.google.android.gms.analytics.u.a("BLANK_16", 16);
            sC = new com.google.android.gms.analytics.u.a("BLANK_17", 17);
            sD = new com.google.android.gms.analytics.u.a("BLANK_18", 18);
            sE = new com.google.android.gms.analytics.u.a("BLANK_19", 19);
            sF = new com.google.android.gms.analytics.u.a("BLANK_20", 20);
            sG = new com.google.android.gms.analytics.u.a("BLANK_21", 21);
            sH = new com.google.android.gms.analytics.u.a("BLANK_22", 22);
            sI = new com.google.android.gms.analytics.u.a("BLANK_23", 23);
            sJ = new com.google.android.gms.analytics.u.a("BLANK_24", 24);
            sK = new com.google.android.gms.analytics.u.a("BLANK_25", 25);
            sL = new com.google.android.gms.analytics.u.a("BLANK_26", 26);
            sM = new com.google.android.gms.analytics.u.a("BLANK_27", 27);
            sN = new com.google.android.gms.analytics.u.a("BLANK_28", 28);
            sO = new com.google.android.gms.analytics.u.a("BLANK_29", 29);
            sP = new com.google.android.gms.analytics.u.a("SET_EXCEPTION_PARSER", 30);
            sQ = new com.google.android.gms.analytics.u.a("GET_EXCEPTION_PARSER", 31);
            sR = new com.google.android.gms.analytics.u.a("CONSTRUCT_TRANSACTION", 32);
            sS = new com.google.android.gms.analytics.u.a("CONSTRUCT_EXCEPTION", 33);
            sT = new com.google.android.gms.analytics.u.a("CONSTRUCT_RAW_EXCEPTION", 34);
            sU = new com.google.android.gms.analytics.u.a("CONSTRUCT_TIMING", 35);
            sV = new com.google.android.gms.analytics.u.a("CONSTRUCT_SOCIAL", 36);
            sW = new com.google.android.gms.analytics.u.a("BLANK_37", 37);
            sX = new com.google.android.gms.analytics.u.a("BLANK_38", 38);
            sY = new com.google.android.gms.analytics.u.a("GET_TRACKER", 39);
            sZ = new com.google.android.gms.analytics.u.a("GET_DEFAULT_TRACKER", 40);
            ta = new com.google.android.gms.analytics.u.a("SET_DEFAULT_TRACKER", 41);
            tb = new com.google.android.gms.analytics.u.a("SET_APP_OPT_OUT", 42);
            tc = new com.google.android.gms.analytics.u.a("GET_APP_OPT_OUT", 43);
            td = new com.google.android.gms.analytics.u.a("DISPATCH", 44);
            te = new com.google.android.gms.analytics.u.a("SET_DISPATCH_PERIOD", 45);
            tf = new com.google.android.gms.analytics.u.a("BLANK_46", 46);
            tg = new com.google.android.gms.analytics.u.a("REPORT_UNCAUGHT_EXCEPTIONS", 47);
            th = new com.google.android.gms.analytics.u.a("SET_AUTO_ACTIVITY_TRACKING", 48);
            ti = new com.google.android.gms.analytics.u.a("SET_SESSION_TIMEOUT", 49);
            tj = new com.google.android.gms.analytics.u.a("CONSTRUCT_EVENT", 50);
            tk = new com.google.android.gms.analytics.u.a("CONSTRUCT_ITEM", 51);
            tl = new com.google.android.gms.analytics.u.a("BLANK_52", 52);
            tm = new com.google.android.gms.analytics.u.a("BLANK_53", 53);
            tn = new com.google.android.gms.analytics.u.a("SET_DRY_RUN", 54);
            to = new com.google.android.gms.analytics.u.a("GET_DRY_RUN", 55);
            tp = new com.google.android.gms.analytics.u.a("SET_LOGGER", 56);
            tq = new com.google.android.gms.analytics.u.a("SET_FORCE_LOCAL_DISPATCH", 57);
            tr = new com.google.android.gms.analytics.u.a("GET_TRACKER_NAME", 58);
            ts = new com.google.android.gms.analytics.u.a("CLOSE_TRACKER", 59);
            tt = new com.google.android.gms.analytics.u.a("EASY_TRACKER_ACTIVITY_START", 60);
            tu = new com.google.android.gms.analytics.u.a("EASY_TRACKER_ACTIVITY_STOP", 61);
            tv = new com.google.android.gms.analytics.u.a("CONSTRUCT_APP_VIEW", 62);
            tw = new com.google.android.gms.analytics.u.a[]{sl, sm, sn, so, sp, sq, sr, ss, st, su, sv, sw, sx, sy, sz, sA, sB, sC, sD, sE, sF, sG, sH, sI, sJ, sK, sL, sM, sN, sO, sP, sQ, sR, sS, sT, sU, sV, sW, sX, sY, sZ, ta, tb, tc, td, te, tf, tg, th, ti, tj, tk, tl, tm, tn, to, tp, tq, tr, ts, tt, tu, tv};
        }
    }

    static {
        sk = new u();
    }

    private u() {
        this.sh = new TreeSet();
        this.si = new StringBuilder();
        this.sj = false;
    }

    public static u bR() {
        return sk;
    }

    public synchronized void a(a aVar) {
        if (!this.sj) {
            this.sh.add(aVar);
            this.si.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(aVar.ordinal()));
        }
    }

    public synchronized String bS() {
        StringBuilder stringBuilder;
        stringBuilder = new StringBuilder();
        int i = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
        int i2 = 0;
        while (this.sh.size() > 0) {
            a aVar = (a) this.sh.first();
            this.sh.remove(aVar);
            int ordinal = aVar.ordinal();
            while (ordinal >= i) {
                stringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i2));
                i += 6;
                i2 = 0;
            }
            i2 += 1 << (aVar.ordinal() % 6);
        }
        if (i2 > 0 || stringBuilder.length() == 0) {
            stringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i2));
        }
        this.sh.clear();
        return stringBuilder.toString();
    }

    public synchronized String bT() {
        String toString;
        if (this.si.length() > 0) {
            this.si.insert(0, ".");
        }
        toString = this.si.toString();
        this.si = new StringBuilder();
        return toString;
    }

    public synchronized void r(boolean z) {
        this.sj = z;
    }
}