package com.actionbarsherlock.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Watson;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.MenuInflater;

// compiled from: ProGuard
public class SherlockFragmentActivity extends Watson implements OnActionModeFinishedListener, OnActionModeStartedListener {
    private static final String TAG = "SherlockFragmentActivity";
    private boolean mIgnoreNativeCreate;
    private boolean mIgnoreNativePrepare;
    private boolean mIgnoreNativeSelected;
    private ActionBarSherlock mSherlock;

    public SherlockFragmentActivity() {
        this.mIgnoreNativeCreate = false;
        this.mIgnoreNativePrepare = false;
        this.mIgnoreNativeSelected = false;
    }

    public void addContentView(View view, LayoutParams layoutParams) {
        getSherlock().addContentView(view, layoutParams);
    }

    public void closeOptionsMenu() {
        if (!getSherlock().dispatchCloseOptionsMenu()) {
            super.closeOptionsMenu();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return getSherlock().dispatchKeyEvent(keyEvent) ? true : super.dispatchKeyEvent(keyEvent);
    }

    public View findViewById(int i) {
        getSherlock().ensureActionBar();
        return super.findViewById(i);
    }

    protected final ActionBarSherlock getSherlock() {
        if (this.mSherlock == null) {
            this.mSherlock = ActionBarSherlock.wrap(this, 1);
        }
        return this.mSherlock;
    }

    public ActionBar getSupportActionBar() {
        return getSherlock().getActionBar();
    }

    public MenuInflater getSupportMenuInflater() {
        return getSherlock().getMenuInflater();
    }

    public void invalidateOptionsMenu() {
        getSherlock().dispatchInvalidateOptionsMenu();
    }

    public void onActionModeFinished(ActionMode actionMode) {
    }

    public void onActionModeStarted(ActionMode actionMode) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getSherlock().dispatchConfigurationChanged(configuration);
    }

    public final boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu menu) {
        return true;
    }

    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || this.mIgnoreNativeCreate) {
            return super.onCreatePanelMenu(i, menu);
        }
        this.mIgnoreNativeCreate = true;
        boolean dispatchCreateOptionsMenu = getSherlock().dispatchCreateOptionsMenu(menu);
        this.mIgnoreNativeCreate = false;
        return dispatchCreateOptionsMenu;
    }

    protected void onDestroy() {
        getSherlock().dispatchDestroy();
        super.onDestroy();
    }

    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (i != 0 || this.mIgnoreNativeSelected) {
            return super.onMenuItemSelected(i, menuItem);
        }
        this.mIgnoreNativeSelected = true;
        boolean dispatchOptionsItemSelected = getSherlock().dispatchOptionsItemSelected(menuItem);
        this.mIgnoreNativeSelected = false;
        return dispatchOptionsItemSelected;
    }

    public final boolean onMenuOpened(int i, Menu menu) {
        return getSherlock().dispatchMenuOpened(i, menu) ? true : super.onMenuOpened(i, menu);
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem menuItem) {
        return false;
    }

    public void onPanelClosed(int i, Menu menu) {
        getSherlock().dispatchPanelClosed(i, menu);
        super.onPanelClosed(i, menu);
    }

    protected void onPause() {
        getSherlock().dispatchPause();
        super.onPause();
    }

    protected void onPostCreate(Bundle bundle) {
        getSherlock().dispatchPostCreate(bundle);
        super.onPostCreate(bundle);
    }

    protected void onPostResume() {
        super.onPostResume();
        getSherlock().dispatchPostResume();
    }

    public final boolean onPrepareOptionsMenu(Menu menu) {
        return true;
    }

    public boolean onPrepareOptionsMenu(com.actionbarsherlock.view.Menu menu) {
        return true;
    }

    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || this.mIgnoreNativePrepare) {
            return super.onPreparePanel(i, view, menu);
        }
        this.mIgnoreNativePrepare = true;
        boolean dispatchPrepareOptionsMenu = getSherlock().dispatchPrepareOptionsMenu(menu);
        this.mIgnoreNativePrepare = false;
        return dispatchPrepareOptionsMenu;
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        getSherlock().dispatchRestoreInstanceState(bundle);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getSherlock().dispatchSaveInstanceState(bundle);
    }

    protected void onStop() {
        getSherlock().dispatchStop();
        super.onStop();
    }

    protected void onTitleChanged(CharSequence charSequence, int i) {
        getSherlock().dispatchTitleChanged(charSequence, i);
        super.onTitleChanged(charSequence, i);
    }

    public void openOptionsMenu() {
        if (!getSherlock().dispatchOpenOptionsMenu()) {
            super.openOptionsMenu();
        }
    }

    public void requestWindowFeature(long j) {
        getSherlock().requestFeature((int) j);
    }

    public void setContentView(int i) {
        getSherlock().setContentView(i);
    }

    public void setContentView(View view) {
        getSherlock().setContentView(view);
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        getSherlock().setContentView(view, layoutParams);
    }

    public void setSupportProgress(int i) {
        getSherlock().setProgress(i);
    }

    public void setSupportProgressBarIndeterminate(boolean z) {
        getSherlock().setProgressBarIndeterminate(z);
    }

    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
        getSherlock().setProgressBarIndeterminateVisibility(z);
    }

    public void setSupportProgressBarVisibility(boolean z) {
        getSherlock().setProgressBarVisibility(z);
    }

    public void setSupportSecondaryProgress(int i) {
        getSherlock().setSecondaryProgress(i);
    }

    public ActionMode startActionMode(Callback callback) {
        return getSherlock().startActionMode(callback);
    }

    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }
}