package com.inmobi.androidsdk.impl.net;

import com.inmobi.commons.internal.Log;
import java.net.HttpURLConnection;

class RequestResponseManager$a
  extends Thread
{
  RequestResponseManager$a(RequestResponseManager paramRequestResponseManager) {}
  
  public void run()
  {
    try
    {
      RequestResponseManager.a(a).disconnect();
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception in closing connection ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.RequestResponseManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */