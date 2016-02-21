package com.actionbarsherlock.internal.widget;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

public class CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {
    private final com.actionbarsherlock.view.CollapsibleActionView child;

    public CollapsibleActionViewWrapper(View view) {
        super(view.getContext());
        this.child = (com.actionbarsherlock.view.CollapsibleActionView) view;
        addView(view);
    }

    public void onActionViewCollapsed() {
        this.child.onActionViewCollapsed();
    }

    public void onActionViewExpanded() {
        this.child.onActionViewExpanded();
    }

    public View unwrap() {
        return getChildAt(0);
    }
}