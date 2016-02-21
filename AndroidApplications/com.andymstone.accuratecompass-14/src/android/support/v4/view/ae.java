package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;

public abstract class ae {
    private DataSetObservable a;

    public float a(int i) {
        return 1.0f;
    }

    public abstract int a();

    public int a(Object obj) {
        return -1;
    }

    public Object a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object a(View view, int i) {
        return a(view, i);
    }

    public void a(DataSetObserver dataSetObserver) {
        this.a.registerObserver(dataSetObserver);
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public void a(View view) {
    }

    public void a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void a(View view) {
        a(view);
    }

    public void a(View view, int i, Object obj) {
        a(view, i, obj);
    }

    public abstract boolean a(View view, Object obj);

    public Parcelable b() {
        return null;
    }

    public void b(DataSetObserver dataSetObserver) {
        this.a.unregisterObserver(dataSetObserver);
    }

    public void b(View view) {
    }

    public void b(View view, int i, Object obj) {
    }

    public void b(View view) {
        b(view);
    }

    public void b(View view, int i, Object obj) {
        b(view, i, obj);
    }
}