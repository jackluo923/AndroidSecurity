package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.List;

public class f implements Creator {
    static void a(LogicalFilter logicalFilter, Parcel parcel, int i) {
        int p = b.p(parcel);
        b.c(parcel, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, logicalFilter.wj);
        b.a(parcel, 1, logicalFilter.EO, i, false);
        b.b(parcel, GoogleScorer.CLIENT_PLUS, logicalFilter.EY, false);
        b.D(parcel, p);
    }

    public LogicalFilter[] aL(int i) {
        return new LogicalFilter[i];
    }

    public LogicalFilter ag(Parcel parcel) {
        List list = null;
        int o = a.o(parcel);
        int i = 0;
        Operator operator = null;
        while (parcel.dataPosition() < o) {
            int i2;
            Operator operator2;
            ArrayList c;
            int n = a.n(parcel);
            List list2;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i2 = i;
                    Operator operator3 = (Operator) a.a(parcel, n, Operator.CREATOR);
                    list2 = list;
                    operator2 = operator3;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    c = a.c(parcel, n, FilterHolder.CREATOR);
                    operator2 = operator;
                    i2 = i;
                    break;
                case LocationStatusCodes.GEOFENCE_NOT_AVAILABLE:
                    List list3 = list;
                    operator2 = operator;
                    i2 = a.g(parcel, n);
                    list2 = list3;
                    break;
                default:
                    a.b(parcel, n);
                    list2 = list;
                    operator2 = operator;
                    i2 = i;
                    break;
            }
            i = i2;
            operator = operator2;
            ArrayList arrayList = c;
        }
        if (parcel.dataPosition() == o) {
            return new LogicalFilter(i, operator, list);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return ag(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return aL(i);
    }
}