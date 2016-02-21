package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

// compiled from: ProGuard
class ax implements Comparator {
    ax() {
    }

    public int a(View view, View view2) {
        ar arVar = (ar) view.getLayoutParams();
        ar arVar2 = (ar) view2.getLayoutParams();
        if (arVar.a == arVar2.a) {
            return arVar.e - arVar2.e;
        }
        return arVar.a ? 1 : -1;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((View) obj, (View) obj2);
    }
}