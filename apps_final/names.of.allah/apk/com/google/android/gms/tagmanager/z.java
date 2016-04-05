package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class z
  extends aj
{
  private static final String ID = a.X.toString();
  private final Context mContext;
  
  public z(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  protected String L(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public boolean lc()
  {
    return true;
  }
  
  public d.a w(Map<String, d.a> paramMap)
  {
    paramMap = L(mContext);
    if (paramMap == null) {
      return dh.mY();
    }
    return dh.r(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */