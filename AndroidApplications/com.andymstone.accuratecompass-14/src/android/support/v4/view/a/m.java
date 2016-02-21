package android.support.v4.view.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class m implements q {
    final /* synthetic */ j a;
    final /* synthetic */ l b;

    m(l lVar, j jVar) {
        this.b = lVar;
        this.a = jVar;
    }

    public Object a(int i) {
        a a = this.a.a(i);
        return a == null ? null : a.a();
    }

    public List a(String str, int i) {
        List a = this.a.a(str, i);
        List arrayList = new ArrayList();
        int size = a.size();
        int i2 = 0;
        while (i2 < size) {
            arrayList.add(((a) a.get(i2)).a());
            i2++;
        }
        return arrayList;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return this.a.a(i, i2, bundle);
    }
}