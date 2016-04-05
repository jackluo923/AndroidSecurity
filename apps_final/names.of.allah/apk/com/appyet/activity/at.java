package com.appyet.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.appyet.d.d;
import com.appyet.data.Module;
import com.appyet.f.w;
import java.util.List;

final class at
  extends ArrayAdapter<Module>
{
  private Context b;
  
  public at(Context paramContext, int paramInt)
  {
    super(paramInt, 2130903081, localList);
    b = paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(2130903081, null);
    }
    for (;;)
    {
      try
      {
        paramViewGroup = (Module)getItem(paramInt);
        ((TextView)paramView).setText(w.b(WidgetConfigureActivity.b(a), paramViewGroup.getName()));
        return paramView;
      }
      catch (Exception paramViewGroup)
      {
        d.a(paramViewGroup);
        return paramView;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */