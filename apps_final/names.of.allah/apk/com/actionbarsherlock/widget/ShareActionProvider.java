package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.View;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.string;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;

public class ShareActionProvider
  extends ActionProvider
{
  private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
  public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
  private final Context mContext;
  private int mMaxShownActivityCount = 4;
  private ActivityChooserModel.OnChooseActivityListener mOnChooseActivityListener;
  private final ShareActionProvider.ShareMenuItemOnMenuItemClickListener mOnMenuItemClickListener = new ShareActionProvider.ShareMenuItemOnMenuItemClickListener(this, null);
  private ShareActionProvider.OnShareTargetSelectedListener mOnShareTargetSelectedListener;
  private String mShareHistoryFileName = "share_history.xml";
  
  public ShareActionProvider(Context paramContext)
  {
    super(paramContext);
    mContext = paramContext;
  }
  
  private void setActivityChooserPolicyIfNeeded()
  {
    if (mOnShareTargetSelectedListener == null) {
      return;
    }
    if (mOnChooseActivityListener == null) {
      mOnChooseActivityListener = new ShareActionProvider.ShareAcitivityChooserModelPolicy(this, null);
    }
    ActivityChooserModel.get(mContext, mShareHistoryFileName).setOnChooseActivityListener(mOnChooseActivityListener);
  }
  
  public boolean hasSubMenu()
  {
    return true;
  }
  
  public View onCreateActionView()
  {
    Object localObject = ActivityChooserModel.get(mContext, mShareHistoryFileName);
    ActivityChooserView localActivityChooserView = new ActivityChooserView(mContext);
    localActivityChooserView.setActivityChooserModel((ActivityChooserModel)localObject);
    localObject = new TypedValue();
    mContext.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, (TypedValue)localObject, true);
    localActivityChooserView.setExpandActivityOverflowButtonDrawable(mContext.getResources().getDrawable(resourceId));
    localActivityChooserView.setProvider(this);
    localActivityChooserView.setDefaultActionButtonContentDescription(R.string.abs__shareactionprovider_share_with_application);
    localActivityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abs__shareactionprovider_share_with);
    return localActivityChooserView;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    paramSubMenu.clear();
    ActivityChooserModel localActivityChooserModel = ActivityChooserModel.get(mContext, mShareHistoryFileName);
    PackageManager localPackageManager = mContext.getPackageManager();
    int j = localActivityChooserModel.getActivityCount();
    int k = Math.min(j, mMaxShownActivityCount);
    int i = 0;
    ResolveInfo localResolveInfo;
    while (i < k)
    {
      localResolveInfo = localActivityChooserModel.getActivity(i);
      paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(mOnMenuItemClickListener);
      i += 1;
    }
    if (k < j)
    {
      paramSubMenu = paramSubMenu.addSubMenu(0, k, k, mContext.getString(R.string.abs__activity_chooser_view_see_all));
      i = 0;
      while (i < j)
      {
        localResolveInfo = localActivityChooserModel.getActivity(i);
        paramSubMenu.add(0, i, i, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setOnMenuItemClickListener(mOnMenuItemClickListener);
        i += 1;
      }
    }
  }
  
  public void setOnShareTargetSelectedListener(ShareActionProvider.OnShareTargetSelectedListener paramOnShareTargetSelectedListener)
  {
    mOnShareTargetSelectedListener = paramOnShareTargetSelectedListener;
    setActivityChooserPolicyIfNeeded();
  }
  
  public void setShareHistoryFileName(String paramString)
  {
    mShareHistoryFileName = paramString;
    setActivityChooserPolicyIfNeeded();
  }
  
  public void setShareIntent(Intent paramIntent)
  {
    ActivityChooserModel.get(mContext, mShareHistoryFileName).setIntent(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */