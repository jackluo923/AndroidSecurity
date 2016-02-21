package com.chartboost.sdk.Model;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class CBError {
    private a a;
    private String b;
    private boolean c;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.chartboost.sdk.Model.CBError.a.values().length];
            try {
                a[com.chartboost.sdk.Model.CBError.a.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.chartboost.sdk.Model.CBError.a.f.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.chartboost.sdk.Model.CBError.a.b.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.chartboost.sdk.Model.CBError.a.e.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[com.chartboost.sdk.Model.CBError.a.c.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            a[com.chartboost.sdk.Model.CBError.a.d.ordinal()] = 6;
        }
    }

    public enum CBClickError {
        URI_INVALID,
        URI_UNRECOGNIZED,
        AGE_GATE_FAILURE,
        NO_HOST_ACTIVITY,
        INTERNAL;

        static {
            URI_INVALID = new com.chartboost.sdk.Model.CBError.CBClickError("URI_INVALID", 0);
            URI_UNRECOGNIZED = new com.chartboost.sdk.Model.CBError.CBClickError("URI_UNRECOGNIZED", 1);
            AGE_GATE_FAILURE = new com.chartboost.sdk.Model.CBError.CBClickError("AGE_GATE_FAILURE", 2);
            NO_HOST_ACTIVITY = new com.chartboost.sdk.Model.CBError.CBClickError("NO_HOST_ACTIVITY", 3);
            INTERNAL = new com.chartboost.sdk.Model.CBError.CBClickError("INTERNAL", 4);
            a = new com.chartboost.sdk.Model.CBError.CBClickError[]{URI_INVALID, URI_UNRECOGNIZED, AGE_GATE_FAILURE, NO_HOST_ACTIVITY, INTERNAL};
        }
    }

    public enum CBImpressionError {
        INTERNAL,
        INTERNET_UNAVAILABLE,
        TOO_MANY_CONNECTIONS,
        WRONG_ORIENTATION,
        FIRST_SESSION_INTERSTITIALS_DISABLED,
        NETWORK_FAILURE,
        NO_AD_FOUND,
        SESSION_NOT_STARTED,
        IMPRESSION_ALREADY_VISIBLE,
        NO_HOST_ACTIVITY;

        static {
            INTERNAL = new com.chartboost.sdk.Model.CBError.CBImpressionError("INTERNAL", 0);
            INTERNET_UNAVAILABLE = new com.chartboost.sdk.Model.CBError.CBImpressionError("INTERNET_UNAVAILABLE", 1);
            TOO_MANY_CONNECTIONS = new com.chartboost.sdk.Model.CBError.CBImpressionError("TOO_MANY_CONNECTIONS", 2);
            WRONG_ORIENTATION = new com.chartboost.sdk.Model.CBError.CBImpressionError("WRONG_ORIENTATION", 3);
            FIRST_SESSION_INTERSTITIALS_DISABLED = new com.chartboost.sdk.Model.CBError.CBImpressionError("FIRST_SESSION_INTERSTITIALS_DISABLED", 4);
            NETWORK_FAILURE = new com.chartboost.sdk.Model.CBError.CBImpressionError("NETWORK_FAILURE", 5);
            NO_AD_FOUND = new com.chartboost.sdk.Model.CBError.CBImpressionError("NO_AD_FOUND", 6);
            SESSION_NOT_STARTED = new com.chartboost.sdk.Model.CBError.CBImpressionError("SESSION_NOT_STARTED", 7);
            IMPRESSION_ALREADY_VISIBLE = new com.chartboost.sdk.Model.CBError.CBImpressionError("IMPRESSION_ALREADY_VISIBLE", 8);
            NO_HOST_ACTIVITY = new com.chartboost.sdk.Model.CBError.CBImpressionError("NO_HOST_ACTIVITY", 9);
            a = new com.chartboost.sdk.Model.CBError.CBImpressionError[]{INTERNAL, INTERNET_UNAVAILABLE, TOO_MANY_CONNECTIONS, WRONG_ORIENTATION, FIRST_SESSION_INTERSTITIALS_DISABLED, NETWORK_FAILURE, NO_AD_FOUND, SESSION_NOT_STARTED, IMPRESSION_ALREADY_VISIBLE, NO_HOST_ACTIVITY};
        }
    }

    public enum a {
        MISCELLANEOUS,
        INTERNET_UNAVAILABLE,
        INVALID_RESPONSE,
        UNEXPECTED_RESPONSE,
        NETWORK_FAILURE,
        PUBLIC_KEY_MISSING;

        static {
            a = new com.chartboost.sdk.Model.CBError.a("MISCELLANEOUS", 0);
            b = new com.chartboost.sdk.Model.CBError.a("INTERNET_UNAVAILABLE", 1);
            c = new com.chartboost.sdk.Model.CBError.a("INVALID_RESPONSE", 2);
            d = new com.chartboost.sdk.Model.CBError.a("UNEXPECTED_RESPONSE", 3);
            e = new com.chartboost.sdk.Model.CBError.a("NETWORK_FAILURE", 4);
            f = new com.chartboost.sdk.Model.CBError.a("PUBLIC_KEY_MISSING", 5);
            g = new com.chartboost.sdk.Model.CBError.a[]{a, b, c, d, e, f};
        }
    }

    public CBError(a aVar, String str) {
        this.a = aVar;
        this.b = str;
        this.c = true;
    }

    public String a() {
        return this.b;
    }

    public CBImpressionError b() {
        switch (AnonymousClass_1.a[this.a.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
                return CBImpressionError.INTERNAL;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return CBImpressionError.INTERNET_UNAVAILABLE;
            default:
                return CBImpressionError.NETWORK_FAILURE;
        }
    }
}