package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.TypedValue;
import android.view.View;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;
import com.actionbarsherlock.view.SubMenu;
import com.actionbarsherlock.widget.ActivityChooserModel.OnChooseActivityListener;
import com.actionbarsherlock.widget.ActivityChooserView.OnShareActionButtonClickedListener;

// compiled from: ProGuard
public class ShareActionProvider extends ActionProvider {
    private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
    private final Context mContext;
    private int mMaxShownActivityCount;
    private OnChooseActivityListener mOnChooseActivityListener;
    private final ShareMenuItemOnMenuItemClickListener mOnMenuItemClickListener;
    private OnShareButtonMainClickedListener mOnShareButtonMainClickedListener;
    private OnShareTargetSelectedListener mOnShareTargetSelectedListener;
    private String mShareHistoryFileName;

    // compiled from: ProGuard
    public interface OnShareButtonMainClickedListener {
        void onShareButtonMainClicked();
    }

    // compiled from: ProGuard
    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    // compiled from: ProGuard
    class ShareAcitivityChooserModelPolicy implements OnChooseActivityListener {
        private ShareAcitivityChooserModelPolicy() {
        }

        public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
            return ShareActionProvider.this.mOnShareTargetSelectedListener != null ? ShareActionProvider.this.mOnShareTargetSelectedListener.onShareTargetSelected(ShareActionProvider.this, intent) : false;
        }
    }

    // compiled from: ProGuard
    class ShareMenuItemOnMenuItemClickListener implements OnMenuItemClickListener {
        private ShareMenuItemOnMenuItemClickListener() {
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            Intent chooseActivity = ActivityChooserModel.get(ShareActionProvider.this.mContext, ShareActionProvider.this.mShareHistoryFileName).chooseActivity(menuItem.getItemId());
            if (chooseActivity != null) {
                ShareActionProvider.this.mContext.startActivity(chooseActivity);
            }
            return true;
        }
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.mMaxShownActivityCount = 4;
        this.mOnMenuItemClickListener = new ShareMenuItemOnMenuItemClickListener(null);
        this.mShareHistoryFileName = DEFAULT_SHARE_HISTORY_FILE_NAME;
        this.mContext = context;
    }

    private void setActivityChooserPolicyIfNeeded() {
        if (this.mOnShareTargetSelectedListener != null) {
            if (this.mOnChooseActivityListener == null) {
                this.mOnChooseActivityListener = new ShareAcitivityChooserModelPolicy(null);
            }
            ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setOnChooseActivityListener(this.mOnChooseActivityListener);
        }
    }

    public boolean hasSubMenu() {
        return true;
    }

    public View onCreateActionView() {
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName);
        View activityChooserView = new ActivityChooserView(this.mContext);
        activityChooserView.setActivityChooserModel(activityChooserModel);
        activityChooserView.setOnShareActionButtonClickedListener(new OnShareActionButtonClickedListener() {
            public void onShareActionButtonClicked() {
                if (ShareActionProvider.this.mOnShareButtonMainClickedListener != null) {
                    ShareActionProvider.this.mOnShareButtonMainClickedListener.onShareButtonMainClicked();
                }
            }
        });
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, typedValue, true);
        activityChooserView.setExpandActivityOverflowButtonDrawable(this.mContext.getResources().getDrawable(typedValue.resourceId));
        activityChooserView.setProvider(this);
        activityChooserView.setDefaultActionButtonContentDescription(R.string.abs__shareactionprovider_share_with_application);
        activityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abs__shareactionprovider_share_with);
        return activityChooserView;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        ActivityChooserModel activityChooserModel = ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName);
        PackageManager packageManager = this.mContext.getPackageManager();
        int activityCount = activityChooserModel.getActivityCount();
        int min = Math.min(activityCount, this.mMaxShownActivityCount);
        int i = 0;
        while (i < min) {
            ResolveInfo activity = activityChooserModel.getActivity(i);
            subMenu.add(0, i, i, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
            i++;
        }
        if (min < activityCount) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.mContext.getString(R.string.abs__activity_chooser_view_see_all));
            i = 0;
            while (i < activityCount) {
                activity = activityChooserModel.getActivity(i);
                addSubMenu.add(0, i, i, activity.loadLabel(packageManager)).setIcon(activity.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
                i++;
            }
        }
    }

    public void setOnShareButtonMainClickedListener(OnShareButtonMainClickedListener onShareButtonMainClickedListener) {
        this.mOnShareButtonMainClickedListener = onShareButtonMainClickedListener;
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener onShareTargetSelectedListener) {
        this.mOnShareTargetSelectedListener = onShareTargetSelectedListener;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareHistoryFileName(String str) {
        this.mShareHistoryFileName = str;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareIntent(Intent intent) {
        ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setIntent(intent);
    }
}