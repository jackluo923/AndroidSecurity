package com.google.android.gms.common.api;

import android.util.Log;

public class a
{
  static void a(Result paramResult)
  {
    if ((paramResult instanceof Releasable)) {}
    try
    {
      ((Releasable)paramResult).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("GoogleApi", "Unable to release " + paramResult, localRuntimeException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */