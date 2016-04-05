package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class am
  implements SafeParcelable
{
  public static final an CREATOR = new an();
  public final int height;
  public final int heightPixels;
  public final String mc;
  public final boolean md;
  public final am[] me;
  public final int versionCode;
  public final int width;
  public final int widthPixels;
  
  public am()
  {
    this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
  }
  
  am(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5, am[] paramArrayOfam)
  {
    versionCode = paramInt1;
    mc = paramString;
    height = paramInt2;
    heightPixels = paramInt3;
    md = paramBoolean;
    width = paramInt4;
    widthPixels = paramInt5;
    me = paramArrayOfam;
  }
  
  public am(Context paramContext, AdSize paramAdSize)
  {
    this(paramContext, new AdSize[] { paramAdSize });
  }
  
  public am(Context paramContext, AdSize[] paramArrayOfAdSize)
  {
    AdSize localAdSize = paramArrayOfAdSize[0];
    versionCode = 2;
    md = false;
    width = localAdSize.getWidth();
    height = localAdSize.getHeight();
    int i;
    int j;
    label60:
    DisplayMetrics localDisplayMetrics;
    int k;
    label97:
    int m;
    if (width == -1)
    {
      i = 1;
      if (height != -2) {
        break label224;
      }
      j = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (i == 0) {
        break label230;
      }
      widthPixels = a(localDisplayMetrics);
      k = (int)(widthPixels / density);
      if (j == 0) {
        break label252;
      }
      m = c(localDisplayMetrics);
      label109:
      heightPixels = eu.a(localDisplayMetrics, m);
      if ((i == 0) && (j == 0)) {
        break label261;
      }
    }
    label224:
    label230:
    label252:
    label261:
    for (mc = (k + "x" + m + "_as");; mc = localAdSize.toString())
    {
      if (paramArrayOfAdSize.length <= 1) {
        break label272;
      }
      me = new am[paramArrayOfAdSize.length];
      i = n;
      while (i < paramArrayOfAdSize.length)
      {
        me[i] = new am(paramContext, paramArrayOfAdSize[i]);
        i += 1;
      }
      i = 0;
      break;
      j = 0;
      break label60;
      k = width;
      widthPixels = eu.a(localDisplayMetrics, width);
      break label97;
      m = height;
      break label109;
    }
    label272:
    me = null;
  }
  
  public am(am paramam, am[] paramArrayOfam)
  {
    this(2, mc, height, heightPixels, md, width, widthPixels, paramArrayOfam);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int i = (int)(heightPixels / density);
    if (i <= 400) {
      return 32;
    }
    if (i <= 720) {
      return 50;
    }
    return 90;
  }
  
  public final AdSize aB()
  {
    return a.a(width, height, mc);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    an.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */