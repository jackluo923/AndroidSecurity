package com.inmobi.monetization;

import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.TrackerView;
import java.util.HashMap;

class IMNative$d
  implements Runnable
{
  IMNative$d(IMNative paramIMNative, HashMap paramHashMap) {}
  
  public void run()
  {
    try
    {
      b.a.click(a);
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[Monetization]", "Failed to track click");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMNative.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */