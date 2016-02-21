package com.actionbarsherlock.app;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.Watson.OnCreateOptionsMenuListener;
import android.support.v4.app.Watson.OnOptionsItemSelectedListener;
import android.support.v4.app.Watson.OnPrepareOptionsMenuListener;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.actionbarsherlock.internal.view.menu.MenuItemWrapper;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;

public class SherlockFragment extends Fragment implements OnCreateOptionsMenuListener, OnOptionsItemSelectedListener, OnPrepareOptionsMenuListener {
    private SherlockFragmentActivity mActivity;

    public SherlockFragmentActivity getSherlockActivity() {
        return this.mActivity;
    }

    public void onAttach(Activity activity) {
        if (activity instanceof SherlockFragmentActivity) {
            this.mActivity = (SherlockFragmentActivity) activity;
            super.onAttach(activity);
        } else {
            throw new IllegalStateException(getClass().getSimpleName() + " must be attached to a SherlockFragmentActivity.");
        }
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        onCreateOptionsMenu(new MenuWrapper(menu), this.mActivity.getSupportMenuInflater());
    }

    public void onCreateOptionsMenu(com.actionbarsherlock.view.Menu menu, com.actionbarsherlock.view.MenuInflater menuInflater) {
    }

    public void onDetach() {
        this.mActivity = null;
        super.onDetach();
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        return onOptionsItemSelected(new MenuItemWrapper(menuItem));
    }

    public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem menuItem) {
        return false;
    }

    public final void onPrepareOptionsMenu(Menu menu) {
        onPrepareOptionsMenu(new MenuWrapper(menu));
    }

    public void onPrepareOptionsMenu(com.actionbarsherlock.view.Menu menu) {
    }
}