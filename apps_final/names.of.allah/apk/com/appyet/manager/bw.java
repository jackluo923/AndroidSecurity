package com.appyet.manager;

import android.app.Activity;
import android.content.res.Resources;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataSetting;
import com.appyet.metadata.MetadataTheme;
import java.util.Iterator;
import java.util.List;

public final class bw
{
  public MetadataTheme a = null;
  private ApplicationContext b;
  private int c;
  private int d;
  private int e;
  
  public bw(ApplicationContext paramApplicationContext)
  {
    b = paramApplicationContext;
    a();
  }
  
  private static MetadataTheme c()
  {
    MetadataTheme localMetadataTheme = new MetadataTheme();
    Name = "Light Theme";
    PrimaryBgColor = "LIGHT";
    Guid = "97e6ef36-cf61-43c5-a012-67dcf183c973";
    ActionBarBgColor = "#DDDDDD";
    ActionBarFgColor = false;
    LeftMenuBgColor = "#E2E2E0";
    LeftMenuIconSize = 20;
    LeftMenuGroupTextColor = "#999999";
    LeftMenuGroupTextSize = 14;
    LeftMenuItemTextColor = "#494949";
    LeftMenuItemTextSize = 15;
    LeftMenuItemVerticalPadding = 15;
    LeftMenuBadgeBgColor = "#888888";
    LeftMenuBadgeTextColor = "#FFFFFF";
    LeftMenuBadgeTextSize = 10;
    LeftMenuDividerColor = "#DADAD8";
    return localMetadataTheme;
  }
  
  public final void a()
  {
    if ((b.q.MetadataThemes == null) || (b.q.MetadataThemes.size() == 0))
    {
      a = c();
      return;
    }
    Object localObject1 = b.d.F();
    Object localObject2 = b.q.MetadataThemes.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      MetadataTheme localMetadataTheme = (MetadataTheme)((Iterator)localObject2).next();
      if (Guid.equals(localObject1))
      {
        a = localMetadataTheme;
        return;
      }
    }
    localObject1 = b.q.MetadataThemes.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (MetadataTheme)((Iterator)localObject1).next();
      if (Guid.equals(b.q.MetadataSetting.DefaultThemeGuid))
      {
        a = ((MetadataTheme)localObject2);
        return;
      }
    }
    if (b.q.MetadataThemes.size() > 0)
    {
      a = ((MetadataTheme)b.q.MetadataThemes.get(0));
      return;
    }
    a = c();
  }
  
  public final void a(Activity paramActivity)
  {
    if (a.ActionBarFgColor)
    {
      paramActivity.setTheme(2131165294);
      return;
    }
    paramActivity.setTheme(2131165293);
  }
  
  public final void a(boolean paramBoolean, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, TextView paramTextView4, TextView paramTextView5, TextView paramTextView6)
  {
    if (paramTextView1 != null) {
      paramTextView1.setTextColor(d);
    }
    if (paramTextView6 != null)
    {
      if (a.PrimaryBgColor.equals("DARK")) {
        paramTextView6.setTextColor(d);
      }
    }
    else
    {
      if (paramTextView2 != null) {
        paramTextView2.setTextColor(d);
      }
      if (paramTextView3 != null) {
        paramTextView3.setTextColor(d);
      }
      if (paramTextView4 != null) {
        paramTextView4.setTextColor(d);
      }
      if (paramTextView5 != null) {
        paramTextView5.setTextColor(d);
      }
      if (!paramBoolean)
      {
        if (paramTextView1 != null) {
          paramTextView1.setTextColor(c);
        }
        if (paramTextView6 != null)
        {
          if (!a.PrimaryBgColor.equals("DARK")) {
            break label350;
          }
          paramTextView6.setTextColor(c);
        }
      }
      label140:
      if (!a.PrimaryBgColor.equals("DARK")) {
        break label370;
      }
      if (paramTextView1 != null) {
        paramTextView1.setTextColor(b.getResources().getColor(2131296322));
      }
      if (paramTextView6 != null) {
        paramTextView6.setTextColor(b.getResources().getColor(2131296322));
      }
      if (paramTextView2 != null) {
        paramTextView2.setTextColor(b.getResources().getColor(2131296322));
      }
      if (paramTextView3 != null) {
        paramTextView3.setTextColor(b.getResources().getColor(2131296322));
      }
      if (paramTextView4 != null) {
        paramTextView4.setTextColor(b.getResources().getColor(2131296322));
      }
      if (paramTextView5 != null) {
        paramTextView5.setTextColor(b.getResources().getColor(2131296322));
      }
      if (!paramBoolean)
      {
        if (paramTextView1 != null) {
          paramTextView1.setTextColor(b.getResources().getColor(2131296321));
        }
        if (paramTextView6 != null) {
          paramTextView6.setTextColor(b.getResources().getColor(2131296321));
        }
      }
    }
    label350:
    label370:
    do
    {
      do
      {
        return;
        paramTextView6.setTextColor(b.getResources().getColor(2131296322));
        break;
        paramTextView6.setTextColor(b.getResources().getColor(2131296321));
        break label140;
        if (paramTextView1 != null) {
          paramTextView1.setTextColor(b.getResources().getColor(2131296324));
        }
        if (paramTextView6 != null) {
          paramTextView6.setTextColor(b.getResources().getColor(2131296322));
        }
        if (paramTextView2 != null) {
          paramTextView2.setTextColor(b.getResources().getColor(2131296324));
        }
        if (paramTextView3 != null) {
          paramTextView3.setTextColor(b.getResources().getColor(2131296324));
        }
        if (paramTextView4 != null) {
          paramTextView4.setTextColor(b.getResources().getColor(2131296324));
        }
        if (paramTextView5 != null) {
          paramTextView5.setTextColor(b.getResources().getColor(2131296324));
        }
      } while (paramBoolean);
      if (paramTextView1 != null) {
        paramTextView1.setTextColor(b.getResources().getColor(2131296323));
      }
    } while (paramTextView6 == null);
    paramTextView6.setTextColor(b.getResources().getColor(2131296321));
  }
  
  public final void b()
  {
    c = b.d.G();
    d = b.d.H();
    e = b.getResources().getColor(2131296334);
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */