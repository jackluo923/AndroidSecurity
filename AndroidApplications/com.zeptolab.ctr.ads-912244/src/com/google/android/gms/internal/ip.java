package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Set;

public class ip implements Creator {
    static void a(io ioVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = ioVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, ioVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, ioVar.getId(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, ioVar.hS(), i, true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, ioVar.getStartDate(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, ioVar.hT(), i, true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_ALL, ioVar.getType(), true);
        }
        b.D(parcel, p);
    }

    public io aH(Parcel parcel) {
        String str = null;
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        int i = 0;
        im imVar = null;
        String str2 = null;
        im imVar2 = null;
        String str3 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            im imVar3;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    str3 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    imVar3 = (im) a.a(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    imVar2 = imVar3;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    imVar3 = (im) a.a(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    imVar = imVar3;
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new io(hashSet, i, str3, imVar2, str2, imVar, str);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public io[] bE(int i) {
        return new io[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aH(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bE(i);
    }
}