package fi.iki.elonen;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

class NanoHTTPD$1
  implements Runnable
{
  NanoHTTPD$1(NanoHTTPD paramNanoHTTPD) {}
  
  public void run()
  {
    try
    {
      do
      {
        final Socket localSocket = NanoHTTPD.access$100(this$0).accept();
        final Object localObject = localSocket.getInputStream();
        OutputStream localOutputStream = localSocket.getOutputStream();
        NanoHTTPD.TempFileManager localTempFileManager = NanoHTTPD.access$200(this$0).create();
        localObject = new NanoHTTPD.HTTPSession(this$0, localTempFileManager, (InputStream)localObject, localOutputStream);
        NanoHTTPD.access$300(this$0).exec(new Runnable()
        {
          public void run()
          {
            localObject.run();
            try
            {
              localSocket.close();
              return;
            }
            catch (IOException localIOException) {}
          }
        });
      } while (!NanoHTTPD.access$100(this$0).isClosed());
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */