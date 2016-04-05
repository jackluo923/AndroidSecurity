package org.ksoap2.transport;

import java.io.IOException;

public class AndroidHttpTransport
  extends HttpTransportSE
{
  public AndroidHttpTransport(String paramString)
  {
    super(paramString);
  }
  
  protected ServiceConnection getServiceConnection()
    throws IOException
  {
    AndroidServiceConnection localAndroidServiceConnection = new org/ksoap2/transport/AndroidServiceConnection;
    String str = url;
    localAndroidServiceConnection.<init>(str);
    return localAndroidServiceConnection;
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.transport.AndroidHttpTransport
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */