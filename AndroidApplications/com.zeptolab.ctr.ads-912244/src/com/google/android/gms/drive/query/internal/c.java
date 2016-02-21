package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class c implements Creator {
    static void a(FilterHolder filterHolder, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.a(parcel, 1, filterHolder.ER, i, false);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, filterHolder.wj);
        b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, filterHolder.ES, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, filterHolder.ET, i, false);
        b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, filterHolder.EU, i, false);
        b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, filterHolder.EV, i, false);
        b.D(parcel, p);
    }

    public FilterHolder[] aJ(int i) {
        return new FilterHolder[i];
    }

    public FilterHolder ae(Parcel parcel) {
        InFilter inFilter = null;
        int o = a.o(parcel);
        int i = 0;
        NotFilter notFilter = null;
        LogicalFilter logicalFilter = null;
        FieldOnlyFilter fieldOnlyFilter = null;
        ComparisonFilter comparisonFilter = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    comparisonFilter = (ComparisonFilter) a.a(parcel, n, ComparisonFilter.CREATOR);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    fieldOnlyFilter = (FieldOnlyFilter) a.a(parcel, n, FieldOnlyFilter.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    logicalFilter = (LogicalFilter) a.a(parcel, n, LogicalFilter.CREATOR);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    notFilter = (NotFilter) a.a(parcel, n, NotFilter.CREATOR);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    inFilter = (InFilter) a.a(parcel, n, InFilter.CREATOR);
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
            return new FilterHolder(i, comparisonFilter, fieldOnlyFilter, logicalFilter, notFilter, inFilter);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ae(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aJ(i);
    }
}