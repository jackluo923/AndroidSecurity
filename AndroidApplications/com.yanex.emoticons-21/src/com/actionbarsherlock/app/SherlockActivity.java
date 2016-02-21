package com.actionbarsherlock.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.ActionBarSherlock.OnCreatePanelMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnMenuItemSelectedListener;
import com.actionbarsherlock.ActionBarSherlock.OnPreparePanelListener;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;

public abstract class SherlockActivity extends Activity implements OnActionModeFinishedListener, OnActionModeStartedListener, OnCreatePanelMenuListener, OnMenuItemSelectedListener, OnPreparePanelListener {
    private ActionBarSherlock mSherlock;

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
        return getSherlock().dispatchCreateOptionsMenu(menu);
    }

    public boolean onCreateOptionsMenu(com.actionbarsherlock.view.Menu menu) {
        return true;
    }

    public boolean onCreatePanelMenu(int i, com.actionbarsherlock.view.Menu menu) {
        return i == 0 ? onCreateOptionsMenu(menu) : false;
    }

    protected void onDestroy() {
        getSherlock().dispatchDestroy();
        super.onDestroy();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return i == 0 ? onOptionsItemSelected(menuItem) : false;
    }

    public final boolean onMenuOpened(int i, Menu menu) {
        return getSherlock().dispatchMenuOpened(i, menu) ? true : super.onMenuOpened(i, menu);
    }

    public final boolean onOptionsItemSelected(android.view.MenuItem menuItem) {
        return getSherlock().dispatchOptionsItemSelected(menuItem);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
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
        return getSherlock().dispatchPrepareOptionsMenu(menu);
    }

    public boolean onPrepareOptionsMenu(com.actionbarsherlock.view.Menu menu) {
        return true;
    }

    public boolean onPreparePanel(int i, View view, com.actionbarsherlock.view.Menu menu) {
        return i == 0 ? onPrepareOptionsMenu(menu) : false;
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