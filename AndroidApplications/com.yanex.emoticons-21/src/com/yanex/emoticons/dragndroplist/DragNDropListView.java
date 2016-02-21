package com.yanex.emoticons.dragndroplist;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem;

public class DragNDropListView extends ListView {
    boolean a;
    int b;
    int c;
    int d;
    ImageView e;
    d f;
    a g;

    public DragNDropListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(int i) {
        if (this.e != null) {
            LayoutParams layoutParams = (LayoutParams) this.e.getLayoutParams();
            layoutParams.x = 0;
            layoutParams.y = i - this.d;
            ((WindowManager) getContext().getSystemService("window")).updateViewLayout(this.e, layoutParams);
            if (this.g != null) {
                a aVar = this.g;
            }
        }
    }

    private void b(int i) {
        if (this.e != null) {
            if (this.g != null) {
                a aVar = this.g;
                getChildAt(i);
            }
            this.e.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            ((WindowManager) getContext().getSystemService("window")).removeView(this.e);
            this.e.setImageDrawable(null);
            this.e = null;
        }
    }

    public final void a(d dVar) {
        this.f = dVar;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && x < getWidth() / 4) {
            this.a = true;
        }
        if (!this.a) {
            return super.onTouchEvent(motionEvent);
        }
        switch (action) {
            case IcsToast.LENGTH_SHORT:
                this.b = pointToPosition(x, y);
                if (this.b != -1) {
                    action = this.b - getFirstVisiblePosition();
                    this.d = y - getChildAt(action).getTop();
                    this.d -= ((int) motionEvent.getRawY()) - y;
                    b(action);
                    View childAt = getChildAt(action);
                    if (childAt != null) {
                        childAt.setDrawingCacheEnabled(true);
                        if (this.g != null) {
                            a aVar = this.g;
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
                        ViewGroup.LayoutParams layoutParams = new LayoutParams();
                        layoutParams.gravity = 48;
                        layoutParams.x = 0;
                        layoutParams.y = y - this.d;
                        layoutParams.height = -2;
                        layoutParams.width = -2;
                        layoutParams.flags = 920;
                        layoutParams.format = -3;
                        layoutParams.windowAnimations = 0;
                        Context context = getContext();
                        View imageView = new ImageView(context);
                        imageView.setImageBitmap(createBitmap);
                        ((WindowManager) context.getSystemService("window")).addView(imageView, layoutParams);
                        this.e = imageView;
                    }
                    a(y);
                }
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                a(y);
                break;
            default:
                this.a = false;
                this.c = pointToPosition(x, y);
                b(this.b - getFirstVisiblePosition());
                if (!(this.f == null || this.b == -1 || this.c == -1)) {
                    this.f.a(this.b, this.c);
                }
                break;
        }
        return true;
    }
}