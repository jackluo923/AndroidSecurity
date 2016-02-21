package android.support.v4.view;

import android.support.v4.view.ViewPager.LayoutParams;
import android.view.View;
import java.util.Comparator;

final class bc implements Comparator {
    bc() {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        LayoutParams layoutParams = (LayoutParams) ((View) obj).getLayoutParams();
        LayoutParams layoutParams2 = (LayoutParams) ((View) obj2).getLayoutParams();
        if (layoutParams.a == layoutParams2.a) {
            return layoutParams.e - layoutParams2.e;
        }
        return layoutParams.a ? 1 : -1;
    }
}