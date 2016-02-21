package com.yanex.emoticons.gui;

import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.aa;
import android.view.View;
import java.util.List;

public final class f extends aa {
    List a;

    public f(List list) {
        this.a = null;
        this.a = list;
    }

    public final void destroyItem(View view, int i, Object obj) {
        ((ViewPager) view).removeView((View) obj);
    }

    public final void finishUpdate(View view) {
    }

    public final int getCount() {
        return this.a.size();
    }

    public final Object instantiateItem(View view, int i) {
        View view2 = (View) this.a.get(i);
        ((ViewPager) view).addView(view2, 0);
        return view2;
    }

    public final boolean isViewFromObject(View view, Object obj) {
        return view.equals(obj);
    }

    public final void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    public final Parcelable saveState() {
        return null;
    }

    public final void startUpdate(View view) {
    }
}