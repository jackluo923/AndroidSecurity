package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.integer;

public final class ResourcesCompat
{
  private static final String TAG = "ResourcesCompat";
  
  public static boolean getResources_getBoolean(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return paramContext.getResources().getBoolean(paramInt);
    }
    paramContext = paramContext.getResources().getDisplayMetrics();
    float f2 = widthPixels / density;
    float f3 = heightPixels / density;
    float f1 = f3;
    if (f2 < f3) {
      f1 = f2;
    }
    if (paramInt == R.bool.abs__action_bar_embed_tabs) {
      return f2 >= 480.0F;
    }
    if (paramInt == R.bool.abs__split_action_bar_is_narrow) {
      return f2 < 480.0F;
    }
    if (paramInt == R.bool.abs__action_bar_expanded_action_views_exclusive) {
      return f1 < 600.0F;
    }
    if (paramInt == R.bool.abs__config_allowActionMenuItemTextWithIcon) {
      return f2 >= 480.0F;
    }
    throw new IllegalArgumentException("Unknown boolean resource ID " + paramInt);
  }
  
  public static int getResources_getInteger(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return paramContext.getResources().getInteger(paramInt);
    }
    paramContext = paramContext.getResources().getDisplayMetrics();
    float f = widthPixels / density;
    if (paramInt == R.integer.abs__max_action_buttons)
    {
      if (f >= 600.0F) {
        return 5;
      }
      if (f >= 500.0F) {
        return 4;
      }
      if (f >= 360.0F) {
        return 3;
      }
      return 2;
    }
    throw new IllegalArgumentException("Unknown integer resource ID " + paramInt);
  }
  
  public static int loadLogoFromManifest(Activity paramActivity)
  {
    for (;;)
    {
      try
      {
        str2 = paramActivity.getClass().getName();
        str3 = getApplicationInfopackageName;
        localXmlResourceParser = paramActivity.createPackageContext(str3, 0).getAssets().openXmlResourceParser("AndroidManifest.xml");
        m = localXmlResourceParser.getEventType();
        i = 0;
        j = i;
        if (m != 1)
        {
          k = i;
          if (m == 2) {
            j = i;
          }
        }
      }
      catch (Exception paramActivity)
      {
        String str2;
        String str3;
        XmlResourceParser localXmlResourceParser;
        String str1;
        String str4;
        boolean bool;
        i = 0;
        paramActivity.printStackTrace();
        j = i;
      }
      try
      {
        paramActivity = localXmlResourceParser.getName();
        j = i;
        if ("application".equals(paramActivity))
        {
          j = i;
          k = localXmlResourceParser.getAttributeCount() - 1;
          if (k >= 0)
          {
            j = i;
            if ("logo".equals(localXmlResourceParser.getAttributeName(k)))
            {
              j = i;
              i = localXmlResourceParser.getAttributeResourceValue(k, 0);
            }
          }
        }
      }
      catch (Exception paramActivity)
      {
        i = j;
        continue;
      }
      try
      {
        m = localXmlResourceParser.nextToken();
      }
      catch (Exception paramActivity)
      {
        continue;
        k -= 1;
        i = j;
        m = n;
        paramActivity = (Activity)localObject;
        continue;
      }
      k -= 1;
      continue;
      continue;
      k = i;
      j = i;
      if ("activity".equals(paramActivity))
      {
        j = i;
        k = localXmlResourceParser.getAttributeCount() - 1;
        m = 0;
        str1 = null;
        paramActivity = null;
        if (k >= 0)
        {
          j = i;
          str4 = localXmlResourceParser.getAttributeName(k);
          j = i;
          if ("logo".equals(str4))
          {
            j = i;
            localObject = Integer.valueOf(localXmlResourceParser.getAttributeResourceValue(k, 0));
            n = m;
            j = i;
            if (localObject == null) {
              break label410;
            }
            j = i;
            if (str1 == null) {
              break label410;
            }
            j = i;
            i = ((Integer)localObject).intValue();
            j = i;
            break label410;
          }
          n = m;
          localObject = paramActivity;
          j = i;
          if (!"name".equals(str4)) {
            continue;
          }
          j = i;
          str1 = ActionBarSherlockCompat.cleanActivityName(str3, localXmlResourceParser.getAttributeValue(k));
          j = i;
          bool = str2.equals(str1);
          if (bool)
          {
            n = 1;
            localObject = paramActivity;
            continue;
          }
        }
        j = i;
        if (m != 0) {
          break label395;
        }
        k = i;
      }
      i = k;
    }
    label395:
    return j;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ResourcesCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */