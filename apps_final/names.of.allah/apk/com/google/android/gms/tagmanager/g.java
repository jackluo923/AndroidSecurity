package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class g
  extends aj
{
  private static final String ID = a.x.toString();
  private final Context mContext;
  
  public g(Context paramContext)
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
    try
    {
      paramMap = mContext.getPackageManager();
      paramMap = dh.r(paramMap.getApplicationLabel(paramMap.getApplicationInfo(mContext.getPackageName(), 0)).toString());
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      bh.b("App name is not found.", paramMap);
    }
    return dh.mY();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */