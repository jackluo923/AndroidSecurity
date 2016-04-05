package com.actionbarsherlock.widget;

import android.content.Context;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;

class ShareActionProvider$ShareMenuItemOnMenuItemClickListener
  implements MenuItem.OnMenuItemClickListener
{
  private ShareActionProvider$ShareMenuItemOnMenuItemClickListener(ShareActionProvider paramShareActionProvider) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = ActivityChooserModel.get(ShareActionProvider.access$100(this$0), ShareActionProvider.access$200(this$0)).chooseActivity(paramMenuItem.getItemId());
    if (paramMenuItem != null) {
      ShareActionProvider.access$100(this$0).startActivity(paramMenuItem);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider.ShareMenuItemOnMenuItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */