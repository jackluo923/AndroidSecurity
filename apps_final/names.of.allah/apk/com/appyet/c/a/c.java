package com.appyet.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.a.a.b.f;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.List;

public final class c
  extends ArrayAdapter<com.appyet.a.a.a>
{
  private ApplicationContext b;
  private int c;
  private LayoutInflater d;
  private List<com.appyet.a.a.a> e;
  
  public c(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramInt1, 2130903109, paramInt2);
    b = ((ApplicationContext)paramInt1.getApplicationContext());
    e = paramInt2;
    c = 2130903110;
    d = ((LayoutInflater)b.getSystemService("layout_inflater"));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    try
    {
      paramViewGroup = d.inflate(c, null, false);
      paramView = paramViewGroup;
      try
      {
        locald = new d(a);
        paramView = paramViewGroup;
        b = ((ImageView)paramViewGroup.findViewById(2131361911));
        paramView = paramViewGroup;
        a = ((TextView)paramViewGroup.findViewById(2131361908));
        paramView = paramViewGroup;
        paramViewGroup.setTag(locald);
        paramView = paramViewGroup;
        com.appyet.a.a.a locala = (com.appyet.a.a.a)e.get(paramInt);
        paramView = paramViewGroup;
        a.setText(b);
        paramView = paramViewGroup;
        if (b.m.a.PrimaryBgColor.equals("DARK"))
        {
          paramView = paramViewGroup;
          a.setTextColor(b.getResources().getColor(2131296321));
        }
        for (;;)
        {
          paramView = paramViewGroup;
          if (e == null) {
            break label250;
          }
          paramView = paramViewGroup;
          if (e.length() <= 0) {
            break label250;
          }
          paramView = paramViewGroup;
          a.k(a).a(e, b, a.j(a));
          return paramViewGroup;
          locald = (d)paramView.getTag();
          paramViewGroup = paramView;
          break;
          paramView = paramViewGroup;
          a.setTextColor(b.getResources().getColor(2131296323));
        }
        com.appyet.d.d.a(paramViewGroup);
      }
      catch (Exception paramViewGroup) {}
    }
    catch (Exception paramViewGroup)
    {
      d locald;
      for (;;) {}
    }
    return paramView;
    label250:
    paramView = paramViewGroup;
    b.setImageResource(2130837685);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */