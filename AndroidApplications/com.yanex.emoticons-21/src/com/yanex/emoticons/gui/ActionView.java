package com.yanex.emoticons.gui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageButton;

public class ActionView extends ImageButton {
    private boolean a;
    private boolean b;
    private int c;

    public ActionView(Context context) {
        super(context);
        this.a = false;
        this.b = false;
        this.c = 0;
        a();
    }

    public ActionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        this.b = false;
        this.c = 0;
        a();
    }

    public ActionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        this.b = false;
        this.c = 0;
        a();
    }

    private void a() {
        setBackgroundColor(16777215);
        setPadding(0, 0, 0, 0);
    }

    private void b(boolean z) {
        if (!z && !this.a) {
            setBackgroundColor(16777215);
        } else if (this.c == 0) {
            setBackgroundResource(2130837566);
        } else {
            setBackgroundColor(this.c);
        }
        setPadding(0, 0, 0, 0);
    }

    public final void a(int i) {
        this.c = i;
    }

    public final void a(boolean z) {
        this.a = z;
        b(false);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.b = false;
            b(true);
        } else if (action == 1) {
            if (!this.b) {
                this.a = true;
            }
            b(false);
        } else if (action == 3) {
            b(false);
        } else if (action == 2) {
            if (motionEvent.getX() < 0.0f || motionEvent.getY() < 0.0f || motionEvent.getX() > ((float) getWidth()) || motionEvent.getY() > ((float) getHeight())) {
                this.b = true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}