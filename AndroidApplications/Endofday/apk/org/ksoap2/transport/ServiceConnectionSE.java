package org.ksoap2.transport;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class ServiceConnectionSE
  implements ServiceConnection
{
  private HttpURLConnection connection;
  
  public ServiceConnectionSE(String paramString)
    throws IOException
  {
    Object localObject = new java/net/URL;
    ((URL)localObject).<init>(paramString);
    localObject = ((URL)localObject).openConnection();
    localObject = (HttpURLConnection)localObject;
    connection = ((HttpURLConnection)localObject);
    localObject = connection;
    boolean bool1 = false;
    ((HttpURLConnection)localObject).setUseCaches(bool1);
    localObject = connection;
    ((HttpURLConnection)localObject).setDoOutput(bool2);
    localObject = connection;
    ((HttpURLConnection)localObject).setDoInput(bool2);
  }
  
  public void connect()
    throws IOException
  {
    HttpURLConnection localHttpURLConnection = connection;
    localHttpURLConnection.connect();
  }
  
  public void disconnect()
  {
    HttpURLConnection localHttpURLConnection = connection;
    localHttpURLConnection.disconnect();
  }
  
  public InputStream getErrorStream()
  {
    Object localObject = connection;
    localObject = ((HttpURLConnection)localObject).getErrorStream();
    return (InputStream)localObject;
  }
  
  public InputStream openInputStream()
    throws IOException
  {
    Object localObject = connection;
    localObject = ((HttpURLConnection)localObject).getInputStream();
    return (InputStream)localObject;
  }
  
  public OutputStream openOutputStream()
    throws IOException
  {
    Object localObject = connection;
    localObject = ((HttpURLConnection)localObject).getOutputStream();
    return (OutputStream)localObject;
  }
  
  public void setRequestMethod(String paramString)
    throws IOException
  {
    HttpURLConnection localHttpURLConnection = connection;
    localHttpURLConnection.setRequestMethod(paramString);
  }
  
  public void setRequestProperty(String paramString1, String paramString2)
  {
    HttpURLConnection localHttpURLConnection = connection;
    localHttpURLConnection.setRequestProperty(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.transport.ServiceConnectionSE
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */