package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;

public abstract class PagerAdapter {
    public static final int POSITION_NONE = -2;
    public static final int POSITION_UNCHANGED = -1;
    private DataSetObservable mObservable;

    public PagerAdapter() {
        this.mObservable = new DataSetObservable();
    }

    public void destroyItem(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void destroyItem(View view, int i, Object obj) {
        destroyItem(view, i, obj);
    }

    public void finishUpdate(View view) {
    }

    public void finishUpdate(View view) {
        finishUpdate(view);
    }

    public abstract int getCount();

    public int getItemPosition(Object obj) {
        return POSITION_UNCHANGED;
    }

    public CharSequence getPageTitle(int i) {
        return null;
    }

    public float getPageWidth(int i) {
        return 1.0f;
    }

    public Object instantiateItem(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object instantiateItem(View view, int i) {
        return instantiateItem(view, i);
    }

    public abstract boolean isViewFromObject(View view, Object obj);

    public void notifyDataSetChanged() {
        this.mObservable.notifyChanged();
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mObservable.registerObserver(dataSetObserver);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable saveState() {
        return null;
    }

    public void setPrimaryItem(View view, int i, Object obj) {
    }

    public void setPrimaryItem(View view, int i, Object obj) {
        setPrimaryItem(view, i, obj);
    }

    public void startUpdate(View view) {
    }

    public void startUpdate(View view) {
        startUpdate(view);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mObservable.unregisterObserver(dataSetObserver);
    }
}