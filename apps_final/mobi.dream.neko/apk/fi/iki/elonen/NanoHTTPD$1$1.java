package fi.iki.elonen;

import java.io.IOException;
import java.net.Socket;

class NanoHTTPD$1$1
  implements Runnable
{
  NanoHTTPD$1$1(NanoHTTPD.1 param1, NanoHTTPD.HTTPSession paramHTTPSession, Socket paramSocket) {}
  
  public void run()
  {
    val$session.run();
    try
    {
      val$finalAccept.close();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */