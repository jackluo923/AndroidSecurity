package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

class bp implements Comparator {
    bp() {
    }

    public int a(View view, View view2) {
        bj bjVar = (bj) view.getLayoutParams();
        bj bjVar2 = (bj) view2.getLayoutParams();
        if (bjVar.a == bjVar2.a) {
            return bjVar.e - bjVar2.e;
        }
        return bjVar.a ? 1 : -1;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((View) obj, (View) obj2);
    }
}