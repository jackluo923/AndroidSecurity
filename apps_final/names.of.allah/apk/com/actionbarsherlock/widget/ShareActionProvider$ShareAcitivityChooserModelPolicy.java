package com.actionbarsherlock.widget;

import android.content.Intent;

class ShareActionProvider$ShareAcitivityChooserModelPolicy
  implements ActivityChooserModel.OnChooseActivityListener
{
  private ShareActionProvider$ShareAcitivityChooserModelPolicy(ShareActionProvider paramShareActionProvider) {}
  
  public boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent)
  {
    if (ShareActionProvider.access$400(this$0) != null) {
      return ShareActionProvider.access$400(this$0).onShareTargetSelected(this$0, paramIntent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider.ShareAcitivityChooserModelPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */