package com.google.android.gms.plus;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class PlusOneDummyView$c
  implements PlusOneDummyView.d
{
  private Context mContext;
  
  private PlusOneDummyView$c(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public Drawable getDrawable(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default: 
      str = "ic_plusone_standard_off_client";
    }
    for (;;)
    {
      paramInt = mContext.getResources().getIdentifier(str, "drawable", mContext.getPackageName());
      return mContext.getResources().getDrawable(paramInt);
      str = "ic_plusone_small_off_client";
      continue;
      str = "ic_plusone_medium_off_client";
      continue;
      str = "ic_plusone_tall_off_client";
    }
  }
  
  public boolean isValid()
  {
    int i = mContext.getResources().getIdentifier("ic_plusone_small_off_client", "drawable", mContext.getPackageName());
    int j = mContext.getResources().getIdentifier("ic_plusone_medium_off_client", "drawable", mContext.getPackageName());
    int k = mContext.getResources().getIdentifier("ic_plusone_tall_off_client", "drawable", mContext.getPackageName());
    int m = mContext.getResources().getIdentifier("ic_plusone_standard_off_client", "drawable", mContext.getPackageName());
    return (i != 0) && (j != 0) && (k != 0) && (m != 0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusOneDummyView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */