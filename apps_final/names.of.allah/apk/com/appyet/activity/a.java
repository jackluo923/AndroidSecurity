package com.appyet.activity;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class a
  implements AdapterView.OnItemClickListener
{
  a(CustomizeActivity paramCustomizeActivity) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (c)paramAdapterView.getItemAtPosition(paramInt);
    a.b.a(c, d, h);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */