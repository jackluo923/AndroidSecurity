package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.drive.DriveId;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class b implements Creator {
    static void a(ConflictEvent conflictEvent, Parcel parcel, int i) {
        int p = com.google.android.gms.common.internal.safeparcel.b.p(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, conflictEvent.wj);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, conflictEvent.CS, i, false);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, p);
    }

    public ConflictEvent B(Parcel parcel) {
        int o = a.o(parcel);
        int i = 0;
        DriveId driveId = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    driveId = (DriveId) a.a(parcel, n, DriveId.CREATOR);
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new ConflictEvent(i, driveId);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public ConflictEvent[] ag(int i) {
        return new ConflictEvent[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return B(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return ag(i);
    }
}