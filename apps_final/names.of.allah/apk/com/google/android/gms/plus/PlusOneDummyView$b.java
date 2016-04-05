package com.google.android.gms.plus;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class PlusOneDummyView$b
  implements PlusOneDummyView.d
{
  private Context mContext;
  
  private PlusOneDummyView$b(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public Drawable getDrawable(int paramInt)
  {
    for (;;)
    {
      try
      {
        Resources localResources = mContext.createPackageContext("com.google.android.gms", 4).getResources();
        switch (paramInt)
        {
        case 2: 
          return localResources.getDrawable(localResources.getIdentifier(str1, "drawable", "com.google.android.gms"));
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        String str1;
        return null;
      }
      str1 = "ic_plusone_tall";
      continue;
      String str2 = "ic_plusone_standard";
      continue;
      str2 = "ic_plusone_small";
      continue;
      str2 = "ic_plusone_medium";
    }
  }
  
  public boolean isValid()
  {
    try
    {
      mContext.createPackageContext("com.google.android.gms", 4).getResources();
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusOneDummyView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */