package com.appyet.c;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.w;
import com.appyet.manager.ar;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import com.appyet.view.BadgeView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

public final class ba
  extends ArrayAdapter<bb>
{
  private Context b;
  
  public ba(ay paramay, Context paramContext)
  {
    super(paramContext, 0);
    b = paramContext;
  }
  
  public final int getItemViewType(int paramInt)
  {
    if (getItemf) {
      return 0;
    }
    return 1;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    bb localbb = (bb)getItem(paramInt);
    if (paramView == null) {
      if (f)
      {
        paramView = LayoutInflater.from(getContext()).inflate(2130903126, null);
        paramViewGroup = new bd();
        b = ((TextView)paramView.findViewById(2131361908));
        d = paramView.findViewById(2131361909);
        d.setBackgroundColor(Color.parseColor(a.a.m.a.LeftMenuDividerColor));
        b.setTextColor(Color.parseColor(a.a.m.a.LeftMenuGroupTextColor));
        b.setTextSize(2, a.a.m.a.LeftMenuGroupTextSize);
        paramView.setTag(paramViewGroup);
        if ((f) || ((!c.equals("Feed")) && (!c.equals("FeedQuery"))) || (b == null) || (b.trim().length() <= 0)) {
          break label842;
        }
        c.setText(w.b(a.a, b));
        c.show();
        label240:
        if ((!f) && ((a != null) && (e == null))) {
          break label934;
        }
      }
    }
    for (;;)
    {
      try
      {
        localInputStream = a.getResources().getAssets().open("module/" + e);
        localObject1 = localInputStream;
        localObject2 = localInputStream;
        Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream);
        localObject1 = localInputStream;
        localObject2 = localInputStream;
        a.setImageBitmap(localBitmap);
      }
      catch (IOException localIOException4)
      {
        InputStream localInputStream;
        int i;
        label842:
        localObject2 = localObject1;
        d.a(localIOException4);
        localObject2 = localObject1;
        a.setImageResource(2130837724);
        if (localObject1 == null) {
          continue;
        }
        try
        {
          ((InputStream)localObject1).close();
        }
        catch (IOException localIOException1)
        {
          d.a(localIOException1);
          localImageView1 = a;
        }
        localImageView1.setImageResource(2130837724);
        continue;
      }
      finally
      {
        if (localObject2 == null) {}
      }
      try
      {
        localInputStream.close();
        d.setVisibility(0);
        b.setText(w.b(a.a, a));
        if (g) {
          d.setVisibility(8);
        }
        return paramView;
      }
      catch (IOException localIOException3)
      {
        d.a(localIOException3);
        ImageView localImageView2 = a;
        continue;
      }
      paramView = LayoutInflater.from(getContext()).inflate(2130903127, null);
      paramViewGroup = new bd();
      e = ((RelativeLayout)paramView.findViewById(2131361910));
      paramInt = (int)TypedValue.applyDimension(1, a.a.m.a.LeftMenuItemVerticalPadding, a.getResources().getDisplayMetrics());
      i = (int)TypedValue.applyDimension(1, a.a.m.a.LeftMenuItemVerticalPadding + 1, a.getResources().getDisplayMetrics());
      e.setPadding(0, i, 0, paramInt);
      b = ((TextView)paramView.findViewById(2131361908));
      d = paramView.findViewById(2131361909);
      c = new BadgeView(b, b);
      if (ar.b(a.a).getLanguage().equalsIgnoreCase("ar"))
      {
        c.setBadgePosition(6);
        c.setBadgeMargin(0, 10);
        c.setBadgeBackgroundColor(Color.parseColor(a.a.m.a.LeftMenuBadgeBgColor));
        c.setTextColor(Color.parseColor(a.a.m.a.LeftMenuBadgeTextColor));
        c.setTextSize(2, a.a.m.a.LeftMenuBadgeTextSize);
        d.setBackgroundColor(Color.parseColor(a.a.m.a.LeftMenuDividerColor));
        b.setTextColor(Color.parseColor(a.a.m.a.LeftMenuItemTextColor));
        b.setTextSize(2, a.a.m.a.LeftMenuItemTextSize);
        a = ((ImageView)paramView.findViewById(2131361911));
        paramInt = (int)TypedValue.applyDimension(1, a.a.m.a.LeftMenuIconSize, a.getResources().getDisplayMetrics());
        a.getLayoutParams().height = paramInt;
        a.getLayoutParams().width = paramInt;
        paramView.setTag(paramViewGroup);
        break;
      }
      c.setBadgePosition(7);
      continue;
      paramViewGroup = (bd)paramView.getTag();
      break;
      if (c == null) {
        break label240;
      }
      c.hide();
      break label240;
      try
      {
        ImageView localImageView1;
        ((InputStream)localObject2).close();
        throw paramView;
        label934:
        a.setImageResource(2130837724);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          d.a(localIOException2);
          a.setImageResource(2130837724);
        }
      }
    }
  }
  
  public final int getViewTypeCount()
  {
    return 2;
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return !getItemf;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */