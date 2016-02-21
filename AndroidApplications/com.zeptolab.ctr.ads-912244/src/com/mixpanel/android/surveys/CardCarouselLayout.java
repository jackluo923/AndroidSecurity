package com.mixpanel.android.surveys;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class CardCarouselLayout extends ViewGroup {
    private static int a = 0;
    private static float b = 0.0f;
    private static float c = 0.0f;
    private static float d = 0.0f;
    private static final long i = 330;
    private static final long j = 198;
    private final List e;
    private d f;
    private d g;
    private c h;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.mixpanel.android.surveys.CardCarouselLayout.b.values().length];
            try {
                a[com.mixpanel.android.surveys.CardCarouselLayout.b.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[com.mixpanel.android.surveys.CardCarouselLayout.b.b.ordinal()] = 2;
        }
    }

    private static class a implements ListAdapter {
        private static final int c = 0;
        private static final int d = 1;
        private static final int e = 2;
        private static final int f = 3;
        private final List a;
        private final LayoutInflater b;

        public a(List list, LayoutInflater layoutInflater) {
            this.a = list;
            this.b = layoutInflater;
        }

        public String a_(int i) {
            return (String) this.a.get(i);
        }

        public boolean areAllItemsEnabled() {
            return true;
        }

        public int getCount() {
            return this.a.size();
        }

        public /* synthetic */ Object getItem(int i) {
            return a(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public int getItemViewType(int i) {
            if (i == 0) {
                return c;
            }
            return i == this.a.size() + -1 ? d : e;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = -1;
            if (view == null) {
                switch (getItemViewType(i)) {
                    case c:
                        i2 = com.mixpanel.android.a.d.com_mixpanel_android_first_choice_answer;
                        break;
                    case d:
                        i2 = com.mixpanel.android.a.d.com_mixpanel_android_last_choice_answer;
                        break;
                    case e:
                        i2 = com.mixpanel.android.a.d.com_mixpanel_android_middle_choice_answer;
                        break;
                }
                view = this.b.inflate(i2, viewGroup, false);
            }
            ((TextView) view.findViewById(com.mixpanel.android.a.c.com_mixpanel_android_multiple_choice_answer_text)).setText((String) this.a.get(i));
            return view;
        }

        public int getViewTypeCount() {
            return f;
        }

        public boolean hasStableIds() {
            return true;
        }

        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        public boolean isEnabled(int i) {
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        }
    }

    public enum b {
        FORWARD,
        BACKWARD;

        static {
            a = new com.mixpanel.android.surveys.CardCarouselLayout.b("FORWARD", 0);
            b = new com.mixpanel.android.surveys.CardCarouselLayout.b("BACKWARD", 1);
            c = new com.mixpanel.android.surveys.CardCarouselLayout.b[]{a, b};
        }
    }

    public static interface c {
        void a(com.mixpanel.android.mpmetrics.aa.b bVar, String str);
    }

    private class d {
        private com.mixpanel.android.mpmetrics.aa.b b;
        private final View c;
        private final TextView d;
        private final TextView e;
        private final ListView f;

        public d(View view) {
            this.c = view;
            this.d = (TextView) view.findViewWithTag("com_mixpanel_android_TAG_prompt_text");
            this.e = (EditText) view.findViewWithTag("com_mixpanel_android_TAG_text_answer");
            this.f = (ListView) view.findViewWithTag("com_mixpanel_android_TAG_choice_list");
            this.e.setText(AdTrackerConstants.BLANK);
            this.e.setOnEditorActionListener(new b(this, CardCarouselLayout.this));
            this.f.setOnItemClickListener(new c(this, CardCarouselLayout.this));
        }

        public View a() {
            return this.c;
        }

        public void a(com.mixpanel.android.mpmetrics.aa.b bVar, String str) {
            this.b = bVar;
            this.d.setText(this.b.b());
            InputMethodManager inputMethodManager = (InputMethodManager) this.c.getContext().getSystemService("input_method");
            com.mixpanel.android.mpmetrics.aa.c d = bVar.d();
            if (com.mixpanel.android.mpmetrics.aa.c.c == d) {
                this.f.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                this.e.setVisibility(0);
                if (str != null) {
                    this.e.setText(str);
                }
                if (CardCarouselLayout.this.getResources().getConfiguration().orientation == 1) {
                    this.e.requestFocus();
                    inputMethodManager.showSoftInput(this.e, 0);
                } else {
                    inputMethodManager.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
                }
            } else if (com.mixpanel.android.mpmetrics.aa.c.b == d) {
                inputMethodManager.hideSoftInputFromWindow(this.c.getWindowToken(), 0);
                this.f.setVisibility(0);
                this.e.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                a aVar = new a(bVar.c(), LayoutInflater.from(CardCarouselLayout.this.getContext()));
                this.f.setAdapter(aVar);
                this.f.clearChoices();
                if (str != null) {
                    int i = 0;
                    while (i < aVar.getCount()) {
                        if (aVar.a(i).equals(str)) {
                            this.f.setItemChecked(i, true);
                        }
                        i++;
                    }
                }
            } else {
                throw new com.mixpanel.android.surveys.CardCarouselLayout.e(null);
            }
            this.c.invalidate();
        }
    }

    public static class e extends Exception {
        private static final long a = -6040399928243560328L;

        private e(String str) {
            super(str);
        }
    }

    static {
        a = 45;
        b = 0.8f;
        c = 0.5f;
        d = 0.5f;
    }

    public CardCarouselLayout(Context context) {
        super(context);
        this.e = new ArrayList(1);
        this.h = null;
        a(context);
    }

    public CardCarouselLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new ArrayList(1);
        this.h = null;
        a(context);
    }

    public CardCarouselLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new ArrayList(1);
        this.h = null;
        a(context);
    }

    private Animation a() {
        Animation animationSet = new AnimationSet(false);
        Animation rotateAnimation = new RotateAnimation((float) a, 0.0f, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new ScaleAnimation(b, 1.0f, b, 1.0f, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new TranslateAnimation(2, 1.3f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        rotateAnimation.setDuration(i);
        animationSet.addAnimation(rotateAnimation);
        return animationSet;
    }

    private void a(Context context) {
        LayoutInflater from = LayoutInflater.from(context);
        View inflate = from.inflate(com.mixpanel.android.a.d.com_mixpanel_android_question_card, this, false);
        this.f = new d(inflate);
        View inflate2 = from.inflate(com.mixpanel.android.a.d.com_mixpanel_android_question_card, this, false);
        this.g = new d(inflate2);
        addView(inflate);
        addView(inflate2);
    }

    private Animation b() {
        Animation animationSet = new AnimationSet(false);
        Animation rotateAnimation = new RotateAnimation(0.0f, (float) a, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        rotateAnimation.setStartOffset(132);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new ScaleAnimation(1.0f, b, 1.0f, b, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        rotateAnimation.setStartOffset(132);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new TranslateAnimation(2, -1.0f, 2, 0.3f, 2, 0.0f, 2, 0.0f);
        rotateAnimation.setInterpolator(new AccelerateInterpolator());
        rotateAnimation.setDuration(i);
        animationSet.addAnimation(rotateAnimation);
        return animationSet;
    }

    private Animation c() {
        Animation animationSet = new AnimationSet(false);
        Animation rotateAnimation = new RotateAnimation((float) (-a), 0.0f, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new ScaleAnimation(b, 1.0f, b, 1.0f, 1, c, 1, d);
        rotateAnimation.setDuration(j);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new TranslateAnimation(2, -1.3f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        rotateAnimation.setDuration(i);
        animationSet.addAnimation(rotateAnimation);
        return animationSet;
    }

    private Animation d() {
        Animation animationSet = new AnimationSet(false);
        Animation rotateAnimation = new RotateAnimation(0.0f, (float) (-a), 1, c, 1, d);
        rotateAnimation.setDuration(i);
        rotateAnimation.setStartOffset(132);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new ScaleAnimation(1.0f, b, 1.0f, b, 1, c, 1, d);
        rotateAnimation.setDuration(i);
        rotateAnimation.setStartOffset(132);
        animationSet.addAnimation(rotateAnimation);
        rotateAnimation = new TranslateAnimation(2, -1.0f, 2, -2.3f, 2, 0.0f, 2, 0.0f);
        rotateAnimation.setInterpolator(new AccelerateInterpolator());
        rotateAnimation.setDuration(i);
        animationSet.addAnimation(rotateAnimation);
        return animationSet;
    }

    public void a(com.mixpanel.android.mpmetrics.aa.b bVar, String str) {
        this.f.a(bVar, str);
        removeAllViews();
        addView(this.f.a());
        addView(this.g.a());
        invalidate();
    }

    public void a(com.mixpanel.android.mpmetrics.aa.b bVar, String str, b bVar2) {
        Animation d;
        Animation animation = null;
        d dVar = this.g;
        this.g = this.f;
        this.f = dVar;
        this.f.a(bVar, str);
        View a = this.g.a();
        View a2 = this.f.a();
        a.setVisibility(0);
        a2.setVisibility(0);
        switch (AnonymousClass_1.a[bVar2.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                d = d();
                animation = a();
                break;
            case GoogleScorer.CLIENT_PLUS:
                d = b();
                animation = c();
                break;
            default:
                d = null;
                break;
        }
        d.setAnimationListener(new a(this, a));
        a.startAnimation(d);
        a2.startAnimation(animation);
        invalidate();
    }

    public void a(c cVar) {
        this.h = cVar;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        View a = this.f.a();
        if (a.getVisibility() != 8) {
            measuredWidth = a.getMeasuredWidth();
            a.layout(0, 0, measuredWidth, a.getMeasuredHeight());
        } else {
            measuredWidth = 0;
        }
        a = this.g.a();
        if (a.getVisibility() != 8) {
            a.layout(measuredWidth, 0, a.getMeasuredWidth() + measuredWidth, a.getMeasuredHeight());
        }
    }

    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = (MeasureSpec.getMode(i) == 1073741824 && MeasureSpec.getMode(i2) == 1073741824) ? false : 1;
        this.e.clear();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < childCount) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = childAt.getLayoutParams();
                childAt.measure(getChildMeasureSpec(i, 0, layoutParams.width), getChildMeasureSpec(i2, 0, layoutParams.height));
                i5 = Math.max(i5, childAt.getMeasuredWidth());
                i6 = Math.max(i6, childAt.getMeasuredHeight());
                if (i3 != 0) {
                    if (layoutParams.width == -1 || layoutParams.height == -1) {
                        this.e.add(childAt);
                    }
                }
            }
            i4++;
        }
        setMeasuredDimension(resolveSize(Math.max(i5, getSuggestedMinimumWidth()), i), resolveSize(Math.max(i6, getSuggestedMinimumHeight()), i2));
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            LayoutParams layoutParams2 = view.getLayoutParams();
            view.measure(layoutParams2.width == -1 ? MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824) : getChildMeasureSpec(i, 0, layoutParams2.width), layoutParams2.height == -1 ? MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824) : getChildMeasureSpec(i2, 0, layoutParams2.height));
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}