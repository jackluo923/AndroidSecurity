package com.actionbarsherlock.internal.widget;

import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;

public class IcsAdapterView$AdapterContextMenuInfo
  implements ContextMenu.ContextMenuInfo
{
  public long id;
  public int position;
  public View targetView;
  
  public IcsAdapterView$AdapterContextMenuInfo(View paramView, int paramInt, long paramLong)
  {
    targetView = paramView;
    position = paramInt;
    id = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView.AdapterContextMenuInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */