package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.string;

class ActivityChooserView$ActivityChooserViewAdapter
  extends BaseAdapter
{
  private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
  private static final int ITEM_VIEW_TYPE_COUNT = 3;
  private static final int ITEM_VIEW_TYPE_FOOTER = 1;
  public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
  public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;
  private ActivityChooserModel mDataModel;
  private boolean mHighlightDefaultActivity;
  private int mMaxActivityCount = 4;
  private boolean mShowDefaultActivity = true;
  private boolean mShowFooterView;
  
  private ActivityChooserView$ActivityChooserViewAdapter(ActivityChooserView paramActivityChooserView) {}
  
  public int getActivityCount()
  {
    return mDataModel.getActivityCount();
  }
  
  public int getCount()
  {
    int j = mDataModel.getActivityCount();
    int i = j;
    if (!mShowDefaultActivity)
    {
      i = j;
      if (mDataModel.getDefaultActivity() != null) {
        i = j - 1;
      }
    }
    j = Math.min(i, mMaxActivityCount);
    i = j;
    if (mShowFooterView) {
      i = j + 1;
    }
    return i;
  }
  
  public ActivityChooserModel getDataModel()
  {
    return mDataModel;
  }
  
  public ResolveInfo getDefaultActivity()
  {
    return mDataModel.getDefaultActivity();
  }
  
  public int getHistorySize()
  {
    return mDataModel.getHistorySize();
  }
  
  public Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      return null;
    }
    int i = paramInt;
    if (!mShowDefaultActivity)
    {
      i = paramInt;
      if (mDataModel.getDefaultActivity() != null) {
        i = paramInt + 1;
      }
    }
    return mDataModel.getActivity(i);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((mShowFooterView) && (paramInt == getCount() - 1)) {
      return 1;
    }
    return 0;
  }
  
  public int getMaxActivityCount()
  {
    return mMaxActivityCount;
  }
  
  public boolean getShowDefaultActivity()
  {
    return mShowDefaultActivity;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    switch (getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      if (paramView != null)
      {
        localObject = paramView;
        if (paramView.getId() == 1) {
          break;
        }
      }
      else
      {
        localObject = LayoutInflater.from(this$0.getContext()).inflate(R.layout.abs__activity_chooser_view_list_item, paramViewGroup, false);
        ((View)localObject).setId(1);
        ((TextView)((View)localObject).findViewById(R.id.abs__title)).setText(ActivityChooserView.access$700(this$0).getString(R.string.abs__activity_chooser_view_see_all));
      }
      break;
    }
    View localView;
    do
    {
      return (View)localObject;
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == R.id.abs__list_item) {}
      }
      else
      {
        localView = LayoutInflater.from(this$0.getContext()).inflate(R.layout.abs__activity_chooser_view_list_item, paramViewGroup, false);
      }
      paramView = ActivityChooserView.access$700(this$0).getPackageManager();
      paramViewGroup = (ImageView)localView.findViewById(R.id.abs__icon);
      localObject = (ResolveInfo)getItem(paramInt);
      paramViewGroup.setImageDrawable(((ResolveInfo)localObject).loadIcon(paramView));
      ((TextView)localView.findViewById(R.id.abs__title)).setText(((ResolveInfo)localObject).loadLabel(paramView));
      localObject = localView;
    } while (!ActivityChooserView.access$1300());
    if ((mShowDefaultActivity) && (paramInt == 0) && (mHighlightDefaultActivity))
    {
      ActivityChooserView.SetActivated.invoke(localView, true);
      return localView;
    }
    ActivityChooserView.SetActivated.invoke(localView, false);
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public int measureContentWidth()
  {
    int i = 0;
    int k = mMaxActivityCount;
    mMaxActivityCount = Integer.MAX_VALUE;
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = getCount();
    View localView = null;
    int j = 0;
    while (i < i1)
    {
      localView = getView(i, localView, null);
      localView.measure(m, n);
      j = Math.max(j, localView.getMeasuredWidth());
      i += 1;
    }
    mMaxActivityCount = k;
    return j;
  }
  
  public void setDataModel(ActivityChooserModel paramActivityChooserModel)
  {
    ActivityChooserModel localActivityChooserModel = ActivityChooserView.access$000(this$0).getDataModel();
    if ((localActivityChooserModel != null) && (this$0.isShown())) {}
    try
    {
      localActivityChooserModel.unregisterObserver(ActivityChooserView.access$1200(this$0));
      mDataModel = paramActivityChooserModel;
      if ((paramActivityChooserModel != null) && (this$0.isShown())) {}
      try
      {
        paramActivityChooserModel.registerObserver(ActivityChooserView.access$1200(this$0));
        notifyDataSetChanged();
        return;
      }
      catch (IllegalStateException paramActivityChooserModel)
      {
        for (;;) {}
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public void setMaxActivityCount(int paramInt)
  {
    if (mMaxActivityCount != paramInt)
    {
      mMaxActivityCount = paramInt;
      notifyDataSetChanged();
    }
  }
  
  public void setShowDefaultActivity(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((mShowDefaultActivity != paramBoolean1) || (mHighlightDefaultActivity != paramBoolean2))
    {
      mShowDefaultActivity = paramBoolean1;
      mHighlightDefaultActivity = paramBoolean2;
      notifyDataSetChanged();
    }
  }
  
  public void setShowFooterView(boolean paramBoolean)
  {
    if (mShowFooterView != paramBoolean)
    {
      mShowFooterView = paramBoolean;
      notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.ActivityChooserViewAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */