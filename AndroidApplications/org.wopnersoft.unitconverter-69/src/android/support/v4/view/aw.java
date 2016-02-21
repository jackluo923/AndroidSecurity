package android.support.v4.view;

import android.os.Parcel;
import android.support.v4.b.c;
import android.support.v4.view.ViewPager.SavedState;

// compiled from: ProGuard
final class aw implements c {
    aw() {
    }

    public /* synthetic */ Object a(Parcel parcel, ClassLoader classLoader) {
        return b(parcel, classLoader);
    }

    public /* synthetic */ Object[] a(int i) {
        return b(i);
    }

    public SavedState b(Parcel parcel, ClassLoader classLoader) {
        return new SavedState(parcel, classLoader);
    }

    public SavedState[] b(int i) {
        return new SavedState[i];
    }
}