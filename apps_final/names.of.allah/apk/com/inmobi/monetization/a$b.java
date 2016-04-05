package com.inmobi.monetization;

import com.inmobi.commons.internal.Log;

class a$b
  implements Runnable
{
  a$b(a parama) {}
  
  public void run()
  {
    try
    {
      if (IMNative.d(a.a) != null) {
        IMNative.d(a.a).onNativeRequestSucceeded(a.a);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */