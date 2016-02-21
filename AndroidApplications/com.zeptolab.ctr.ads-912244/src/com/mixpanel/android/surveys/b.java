package com.mixpanel.android.surveys;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class b implements OnEditorActionListener {
    final /* synthetic */ CardCarouselLayout a;
    final /* synthetic */ d b;

    b(d dVar, CardCarouselLayout cardCarouselLayout) {
        this.b = dVar;
        this.a = cardCarouselLayout;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        int i2 = keyEvent != null && keyEvent.getKeyCode() == 66 && keyEvent.getAction() == 0 && (keyEvent.getFlags() & 32) == 0;
        if (i2 == 0 && i != 6) {
            return false;
        }
        textView.clearComposingText();
        if (CardCarouselLayout.a(this.b.a) != null) {
            CardCarouselLayout.a(this.b.a).a(d.a(this.b), textView.getText().toString());
        }
        return true;
    }
}