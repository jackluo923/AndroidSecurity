package com.appyet.d;

import android.util.Log;

public final class d
{
  public static void a(Error paramError)
  {
    if ((paramError != null) && (paramError.getMessage() != null)) {
      Log.e("pixel", paramError.getMessage());
    }
    paramError.printStackTrace();
  }
  
  public static void a(Exception paramException)
  {
    if ((paramException != null) && (paramException.getMessage() != null)) {
      Log.e("pixel", paramException.getMessage());
    }
    paramException.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     com.appyet.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */