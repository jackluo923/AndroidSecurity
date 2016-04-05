package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ci
  extends aj
{
  private static final String ID = a.Q.toString();
  private final Context mContext;
  
  public ci(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public boolean lc()
  {
    return true;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    paramMap = new DisplayMetrics();
    ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(paramMap);
    int i = widthPixels;
    int j = heightPixels;
    return dh.r(i + "x" + j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */