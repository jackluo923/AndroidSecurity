package android.support.v4.b;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

// compiled from: ProGuard
public class a {
    public static Creator a_(c cVar) {
        if (VERSION.SDK_INT >= 13) {
            e.a(cVar);
        }
        return new b(cVar);
    }
}