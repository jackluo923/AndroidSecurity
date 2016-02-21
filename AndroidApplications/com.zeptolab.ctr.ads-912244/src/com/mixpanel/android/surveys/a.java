package com.mixpanel.android.surveys;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

class a implements AnimationListener {
    final /* synthetic */ View a;
    final /* synthetic */ CardCarouselLayout b;

    a(CardCarouselLayout cardCarouselLayout, View view) {
        this.b = cardCarouselLayout;
        this.a = view;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}