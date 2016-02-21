package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;

public class ActivityRecognitionResultCreator implements Creator {
    public static final int CONTENT_DESCRIPTION = 0;

    static void a(ActivityRecognitionResult activityRecognitionResult, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.b(parcel, 1, activityRecognitionResult.KP, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, activityRecognitionResult.getVersionCode());
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, activityRecognitionResult.KQ);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, activityRecognitionResult.KR);
        b.D(parcel, p);
    }

    public ActivityRecognitionResult createFromParcel(Parcel parcel) {
        long j = 0;
        int o = a.o(parcel);
        int i = 0;
        List list = null;
        long j2 = 0;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    list = a.c(parcel, n, DetectedActivity.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    j2 = a.h(parcel, n);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    j = a.h(parcel, n);
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    i = a.g(parcel, n);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ActivityRecognitionResult(i, list, j2, j);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ActivityRecognitionResult[] newArray(int i) {
        return new ActivityRecognitionResult[i];
    }
}