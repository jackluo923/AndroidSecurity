package com.google.android.gms.ads;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.eu;

public final class AdSize
{
  public static final int AUTO_HEIGHT = -2;
  public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
  public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
  public static final int FULL_WIDTH = -1;
  public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
  public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
  public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
  public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
  public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
  private final int ks;
  private final int kt;
  private final String ku;
  
  public AdSize(int paramInt1, int paramInt2) {}
  
  AdSize(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 < 0) && (paramInt1 != -1)) {
      throw new IllegalArgumentException("Invalid width for AdSize: " + paramInt1);
    }
    if ((paramInt2 < 0) && (paramInt2 != -2)) {
      throw new IllegalArgumentException("Invalid height for AdSize: " + paramInt2);
    }
    ks = paramInt1;
    kt = paramInt2;
    ku = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof AdSize)) {
        return false;
      }
      paramObject = (AdSize)paramObject;
    } while ((ks == ks) && (kt == kt) && (ku.equals(ku)));
    return false;
  }
  
  public final int getHeight()
  {
    return kt;
  }
  
  public final int getHeightInPixels(Context paramContext)
  {
    if (kt == -2) {
      return am.b(paramContext.getResources().getDisplayMetrics());
    }
    return eu.a(paramContext, kt);
  }
  
  public final int getWidth()
  {
    return ks;
  }
  
  public final int getWidthInPixels(Context paramContext)
  {
    if (ks == -1) {
      return am.a(paramContext.getResources().getDisplayMetrics());
    }
    return eu.a(paramContext, ks);
  }
  
  public final int hashCode()
  {
    return ku.hashCode();
  }
  
  public final boolean isAutoHeight()
  {
    return kt == -2;
  }
  
  public final boolean isFullWidth()
  {
    return ks == -1;
  }
  
  public final String toString()
  {
    return ku;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdSize
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */