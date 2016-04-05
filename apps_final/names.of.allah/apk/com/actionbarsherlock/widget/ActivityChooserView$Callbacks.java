package com.actionbarsherlock.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView$Callbacks
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private ActivityChooserView$Callbacks(ActivityChooserView paramActivityChooserView) {}
  
  private void notifyOnDismissListener()
  {
    if (ActivityChooserView.access$1100(this$0) != null) {
      ActivityChooserView.access$1100(this$0).onDismiss();
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.access$800(this$0))
    {
      this$0.dismissPopup();
      paramView = ActivityChooserView.access$000(this$0).getDefaultActivity();
      int i = ActivityChooserView.access$000(this$0).getDataModel().getActivityIndex(paramView);
      paramView = ActivityChooserView.access$000(this$0).getDataModel().chooseActivity(i);
      if (paramView != null) {
        ActivityChooserView.access$700(this$0).startActivity(paramView);
      }
      return;
    }
    if (paramView == ActivityChooserView.access$900(this$0))
    {
      ActivityChooserView.access$602(this$0, false);
      ActivityChooserView.access$500(this$0, ActivityChooserView.access$1000(this$0));
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public void onDismiss()
  {
    notifyOnDismissListener();
    if (this$0.mProvider != null) {
      this$0.mProvider.subUiVisibilityChanged(false);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((ActivityChooserView.ActivityChooserViewAdapter)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      ActivityChooserView.access$500(this$0, Integer.MAX_VALUE);
    }
    do
    {
      return;
      this$0.dismissPopup();
      if (!ActivityChooserView.access$600(this$0)) {
        break;
      }
    } while (paramInt <= 0);
    ActivityChooserView.access$000(this$0).getDataModel().setDefaultActivity(paramInt);
    return;
    if (ActivityChooserView.access$000(this$0).getShowDefaultActivity()) {}
    for (;;)
    {
      paramAdapterView = ActivityChooserView.access$000(this$0).getDataModel().chooseActivity(paramInt);
      if (paramAdapterView == null) {
        break;
      }
      ActivityChooserView.access$700(this$0).startActivity(paramAdapterView);
      return;
      paramInt += 1;
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.access$800(this$0))
    {
      if (ActivityChooserView.access$000(this$0).getCount() > 0)
      {
        ActivityChooserView.access$602(this$0, true);
        ActivityChooserView.access$500(this$0, ActivityChooserView.access$1000(this$0));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.Callbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */