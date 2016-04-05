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
import com.appyet.a.a.e;
import com.appyet.context.ApplicationContext;
import com.appyet.d.a;
import com.appyet.d.d;
import com.appyet.manager.an;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.Date;

public final class u
  extends ArrayAdapter<e>
{
  private ApplicationContext b;
  private int c;
  private LayoutInflater d;
  
  public u(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramInt1, 2130903115, paramInt2);
    b = ((ApplicationContext)paramInt1.getApplicationContext());
    c = 2130903116;
    d = ((LayoutInflater)b.getSystemService("layout_inflater"));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (;;)
    {
      try
      {
        paramViewGroup = d.inflate(c, null, false);
        paramView = paramViewGroup;
        try
        {
          localv = new v(a);
          paramView = paramViewGroup;
          a = ((TextView)paramViewGroup.findViewById(2131361975));
          paramView = paramViewGroup;
          c = ((TextView)paramViewGroup.findViewById(2131361968));
          paramView = paramViewGroup;
          d = ((TextView)paramViewGroup.findViewById(2131361965));
          paramView = paramViewGroup;
          b = ((TextView)paramViewGroup.findViewById(2131361974));
          paramView = paramViewGroup;
          f = ((TextView)paramViewGroup.findViewById(2131361976));
          paramView = paramViewGroup;
          g = ((TextView)paramViewGroup.findViewById(2131361963));
          paramView = paramViewGroup;
          e = ((ImageView)paramViewGroup.findViewById(2131361961));
          paramView = paramViewGroup;
          h = ((ImageView)paramViewGroup.findViewById(2131361972));
          paramView = paramViewGroup;
          i = ((ImageView)paramViewGroup.findViewById(2131361973));
          paramView = paramViewGroup;
          j = ((ImageView)paramViewGroup.findViewById(2131361971));
          paramView = paramViewGroup;
          paramViewGroup.setTag(localv);
          paramView = paramViewGroup;
          b.p.a(a.b);
          paramView = paramViewGroup;
          locale = (e)r.h(a).getItem(paramInt);
          paramView = paramViewGroup;
          if (b.m.a.PrimaryBgColor.equals("DARK"))
          {
            paramView = paramViewGroup;
            a.setTextColor(b.getResources().getColor(2131296321));
            paramView = paramViewGroup;
            a.setText(c);
            paramView = paramViewGroup;
            if (!b.m.a.PrimaryBgColor.equals("DARK")) {
              continue;
            }
            paramView = paramViewGroup;
            b.setTextColor(b.getResources().getColor(2131296322));
            paramView = paramViewGroup;
            c.setTextColor(b.getResources().getColor(2131296322));
            paramView = paramViewGroup;
            d.setTextColor(b.getResources().getColor(2131296322));
            paramView = paramViewGroup;
            g.setTextColor(b.getResources().getColor(2131296322));
            paramView = paramViewGroup;
            f.setTextColor(b.getResources().getColor(2131296324));
            paramView = paramViewGroup;
            b.setText(d);
            paramView = paramViewGroup;
            c.setText(String.valueOf(h));
            paramView = paramViewGroup;
            d.setText(String.valueOf(i));
            paramView = paramViewGroup;
            if (!a.a(g, new Date())) {
              continue;
            }
            paramView = paramViewGroup;
            g.setText(a.d(b, g));
            paramView = paramViewGroup;
            if (j == null) {
              continue;
            }
            paramView = paramViewGroup;
            if (j.length() <= 0) {
              continue;
            }
            paramView = paramViewGroup;
            f.setText(String.valueOf(j));
            paramView = paramViewGroup;
            f.setVisibility(0);
            paramView = paramViewGroup;
            if (f == null) {
              continue;
            }
            paramView = paramViewGroup;
            if (f.length() <= 0) {
              continue;
            }
            paramView = paramViewGroup;
            r.p(a).a(f, e, r.o(a));
            paramView = paramViewGroup;
            if (!e) {
              continue;
            }
            paramView = paramViewGroup;
            j.setVisibility(0);
            paramView = paramViewGroup;
            if (!l) {
              continue;
            }
            paramView = paramViewGroup;
            h.setVisibility(0);
            paramView = paramViewGroup;
            if (!m) {
              continue;
            }
            paramView = paramViewGroup;
            i.setVisibility(0);
            return paramViewGroup;
            localv = (v)paramView.getTag();
            paramViewGroup = paramView;
            continue;
          }
          paramView = paramViewGroup;
          a.setTextColor(b.getResources().getColor(2131296323));
          continue;
          d.a(paramViewGroup);
        }
        catch (Exception paramViewGroup) {}
      }
      catch (Exception paramViewGroup)
      {
        v localv;
        e locale;
        continue;
      }
      return paramView;
      paramView = paramViewGroup;
      b.setTextColor(b.getResources().getColor(2131296324));
      paramView = paramViewGroup;
      c.setTextColor(b.getResources().getColor(2131296324));
      paramView = paramViewGroup;
      d.setTextColor(b.getResources().getColor(2131296324));
      paramView = paramViewGroup;
      g.setTextColor(b.getResources().getColor(2131296324));
      paramView = paramViewGroup;
      f.setTextColor(b.getResources().getColor(2131296324));
      continue;
      paramView = paramViewGroup;
      g.setText(a.c(b, g));
      continue;
      paramView = paramViewGroup;
      f.setVisibility(8);
      continue;
      paramView = paramViewGroup;
      if (b.m.a.PrimaryBgColor.equals("DARK"))
      {
        paramView = paramViewGroup;
        e.setImageResource(2130837675);
      }
      else
      {
        paramView = paramViewGroup;
        e.setImageResource(2130837676);
        continue;
        paramView = paramViewGroup;
        j.setVisibility(8);
        continue;
        paramView = paramViewGroup;
        h.setVisibility(8);
      }
    }
    paramView = paramViewGroup;
    i.setVisibility(8);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */