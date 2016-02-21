package com.actionbarsherlock.view;

import android.content.Context;
import android.view.View;

// compiled from: ProGuard
public abstract class ActionProvider {
    private SubUiVisibilityListener mSubUiVisibilityListener;

    // compiled from: ProGuard
    public interface SubUiVisibilityListener {
        void onSubUiVisibilityChanged(boolean z);
    }

    public ActionProvider(Context context) {
    }

    public boolean hasSubMenu() {
        return false;
    }

    public abstract View onCreateActionView();

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public void setSubUiVisibilityListener(SubUiVisibilityListener subUiVisibilityListener) {
        this.mSubUiVisibilityListener = subUiVisibilityListener;
    }

    public void subUiVisibilityChanged(boolean z) {
        if (this.mSubUiVisibilityListener != null) {
            this.mSubUiVisibilityListener.onSubUiVisibilityChanged(z);
        }
    }
}