package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdRequest.Gender;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.a;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Date;
import java.util.HashSet;

public final class bk {

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] mW;
        static final /* synthetic */ int[] mX;

        static {
            mX = new int[ErrorCode.values().length];
            try {
                mX[ErrorCode.INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                mX[ErrorCode.INVALID_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                mX[ErrorCode.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                mX[ErrorCode.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            mW = new int[Gender.values().length];
            try {
                mW[Gender.FEMALE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                mW[Gender.MALE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            mW[Gender.UNKNOWN.ordinal()] = 3;
        }
    }

    public static int a(ErrorCode errorCode) {
        switch (AnonymousClass_1.mX[errorCode.ordinal()]) {
            case GoogleScorer.CLIENT_PLUS:
                return 1;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return GoogleScorer.CLIENT_PLUS;
            case GoogleScorer.CLIENT_APPSTATE:
                return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
            default:
                return 0;
        }
    }

    public static int a(Gender gender) {
        switch (AnonymousClass_1.mW[gender.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return GoogleScorer.CLIENT_PLUS;
            case GoogleScorer.CLIENT_PLUS:
                return 1;
            default:
                return 0;
        }
    }

    public static AdSize b(ab abVar) {
        return new AdSize(a.a(abVar.width, abVar.height, abVar.ln));
    }

    public static MediationAdRequest e(z zVar) {
        return new MediationAdRequest(new Date(zVar.le), g(zVar.lf), zVar.lg != null ? new HashSet(zVar.lg) : null, zVar.lh);
    }

    public static Gender g(int i) {
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return Gender.MALE;
            case GoogleScorer.CLIENT_PLUS:
                return Gender.FEMALE;
            default:
                return Gender.UNKNOWN;
        }
    }

    public static final ErrorCode h(int i) {
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return ErrorCode.INVALID_REQUEST;
            case GoogleScorer.CLIENT_PLUS:
                return ErrorCode.NETWORK_ERROR;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return ErrorCode.NO_FILL;
            default:
                return ErrorCode.INTERNAL_ERROR;
        }
    }
}