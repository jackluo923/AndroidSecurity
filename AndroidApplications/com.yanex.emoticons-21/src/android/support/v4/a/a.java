package android.support.v4.a;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public final class a {
    public static Creator a_(c cVar) {
        if (VERSION.SDK_INT >= 13) {
        }
        return new b(cVar);
    }
}