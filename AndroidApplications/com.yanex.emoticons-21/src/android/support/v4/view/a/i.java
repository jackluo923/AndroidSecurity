package android.support.v4.view.a;

import java.util.ArrayList;
import java.util.List;

final class i implements m {
    final /* synthetic */ f a;
    final /* synthetic */ h b;

    i(h hVar, f fVar) {
        this.b = hVar;
        this.a = fVar;
    }

    public final boolean a() {
        f fVar = this.a;
        return f.c();
    }

    public final List b() {
        f fVar = this.a;
        f.d();
        List arrayList = new ArrayList();
        int size = null.size();
        int i = 0;
        while (i < size) {
            arrayList.add(((a) null.get(i)).a());
            i++;
        }
        return arrayList;
    }

    public final Object c() {
        f fVar = this.a;
        f.b();
        return null;
    }
}