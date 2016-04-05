package org.apache.cordova;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpHandler
{
  private HttpEntity getHttpEntity(String paramString)
  {
    try
    {
      paramString = new DefaultHttpClient().execute(new HttpGet(paramString)).getEntity();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  private void writeToDisk(HttpEntity paramHttpEntity, String paramString)
    throws IllegalStateException, IOException
  {
    paramString = "/sdcard/" + paramString;
    paramHttpEntity = paramHttpEntity.getContent();
    byte[] arrayOfByte = new byte['Ѐ'];
    paramString = new FileOutputStream(paramString);
    for (;;)
    {
      int i = paramHttpEntity.read(arrayOfByte);
      if (i <= 0)
      {
        paramString.flush();
        paramString.close();
        return;
      }
      paramString.write(arrayOfByte, 0, i);
    }
  }
  
  protected Boolean get(String paramString1, String paramString2)
  {
    paramString1 = getHttpEntity(paramString1);
    try
    {
      writeToDisk(paramString1, paramString2);
      return Boolean.valueOf(false);
    }
    catch (Exception paramString1)
    {
      try
      {
        paramString1.consumeContent();
        return Boolean.valueOf(true);
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
      }
      paramString1 = paramString1;
      paramString1.printStackTrace();
      return Boolean.valueOf(false);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.HttpHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */