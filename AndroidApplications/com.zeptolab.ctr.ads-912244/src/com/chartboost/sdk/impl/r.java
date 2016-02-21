package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.database.DataSetObserver;
import android.support.v4.media.TransportMediator;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.List;

public final class r {
    private ScrollView a;
    private HorizontalScrollView b;
    private ViewGroup c;
    private LinearLayout d;
    private BaseAdapter e;
    private List f;
    private List g;
    private List h;
    private int i;
    private DataSetObserver j;

    public r(Context context, int i) {
        this.j = new DataSetObserver() {
            public void onChanged() {
                int childCount = r.this.d.getChildCount();
                int i = 0;
                while (i < childCount) {
                    List list = (List) r.this.g.get(((Integer) r.this.h.get(i)).intValue());
                    List list2 = (List) r.this.f.get(((Integer) r.this.h.get(i)).intValue());
                    View childAt = r.this.d.getChildAt(i);
                    list.remove(childAt);
                    list2.add(childAt);
                    i++;
                }
                r.this.h.clear();
                r.this.d.removeAllViews();
                int count = r.this.e.getCount();
                childCount = 0;
                while (childCount < count) {
                    LayoutParams layoutParams;
                    i = r.this.e.getItemViewType(childCount);
                    list = (List) r.this.g.get(i);
                    list2 = (List) r.this.f.get(i);
                    r.this.h.add(Integer.valueOf(i));
                    View view = null;
                    if (!list2.isEmpty()) {
                        view = (View) list2.get(0);
                        list2.remove(0);
                    }
                    View view2 = r.this.e.getView(childCount, view, r.this.d);
                    list.add(view2);
                    layoutParams = r.this.i == 0 ? new LinearLayout.LayoutParams(-2, -1) : new LinearLayout.LayoutParams(-1, -2);
                    if (childCount < count - 1) {
                        layoutParams.setMargins(0, 0, 0, 1);
                    }
                    r.this.d.addView(view2, layoutParams);
                    childCount++;
                }
                r.this.d.requestLayout();
            }
        };
        this.d = new LinearLayout(context);
        this.i = i;
        this.d.setOrientation(i);
        if (i == 0) {
            this.c = a(context);
        } else {
            this.c = b(context);
        }
        this.c.addView(this.d);
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.d.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                try {
                    View currentFocus = ((Activity) r.this.d.getContext()).getCurrentFocus();
                    if (currentFocus != null) {
                        ((InputMethodManager) r.this.d.getContext().getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getApplicationWindowToken(), 0);
                    }
                } catch (Exception e) {
                }
                return false;
            }
        });
    }

    private HorizontalScrollView a(Context context) {
        if (this.b == null) {
            this.b = new HorizontalScrollView(context);
            this.b.setFillViewport(true);
        }
        return this.b;
    }

    private ScrollView b(Context context) {
        if (this.a == null) {
            this.a = new ScrollView(context);
            this.a.setFillViewport(true);
        }
        return this.a;
    }

    private Context d() {
        return this.d.getContext();
    }

    public ViewGroup a() {
        return this.c;
    }

    public void a(int i) {
        if (i != this.i) {
            this.i = i;
            this.d.setOrientation(i);
            this.c.removeView(this.d);
            if (i == 0) {
                this.c = a(d());
            } else {
                this.c = b(d());
            }
            this.c.addView(this.d);
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (this.e != null) {
            this.e.unregisterDataSetObserver(this.j);
        }
        this.e = baseAdapter;
        this.e.registerDataSetObserver(this.j);
        this.d.removeAllViews();
        this.f.clear();
        this.g.clear();
        int i = 0;
        while (i < this.e.getViewTypeCount()) {
            this.f.add(new ArrayList());
            this.g.add(new ArrayList());
            i++;
        }
        this.h.clear();
        this.e.notifyDataSetChanged();
    }

    public LinearLayout b() {
        return this.d;
    }

    public void c() {
        if (this.c == this.a && this.a != null) {
            this.a.fullScroll(TransportMediator.KEYCODE_MEDIA_RECORD);
        } else if (this.c == this.b && this.b != null) {
            this.b.fullScroll(66);
        }
    }
}