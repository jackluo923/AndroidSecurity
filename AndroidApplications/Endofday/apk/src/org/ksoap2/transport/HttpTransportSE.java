package org.ksoap2.transport;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.ksoap2.SoapEnvelope;
import org.xmlpull.v1.XmlPullParserException;

public class HttpTransportSE
  extends Transport
{
  public HttpTransportSE(String paramString)
  {
    super(paramString);
  }
  
  public void call(String paramString, SoapEnvelope paramSoapEnvelope)
    throws IOException, XmlPullParserException
  {
    Object localObject3 = null;
    int i2 = 256;
    int i1 = 0;
    if (paramString == null) {
      paramString = "\"\"";
    }
    byte[] arrayOfByte2 = createRequestData(paramSoapEnvelope);
    boolean bool1 = debug;
    ServiceConnection localServiceConnection;
    if (bool1)
    {
      String str1 = new java/lang/String;
      str1.<init>(arrayOfByte2);
      requestDump = str1;
      responseDump = ((String)localObject3);
      localServiceConnection = getServiceConnection();
      str1 = "User-Agent";
      localObject3 = "kSOAP/2.0";
      localServiceConnection.setRequestProperty(str1, (String)localObject3);
      str1 = "SOAPAction";
      localServiceConnection.setRequestProperty(str1, paramString);
      str1 = "Content-Type";
      localObject3 = "text/xml";
      localServiceConnection.setRequestProperty(str1, (String)localObject3);
      str1 = "Connection";
      localObject3 = "close";
      localServiceConnection.setRequestProperty(str1, (String)localObject3);
      str1 = "Content-Length";
      localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      String str2 = "";
      localObject3 = ((StringBuilder)localObject3).append(str2);
      int n = arrayOfByte2.length;
      localObject3 = ((StringBuilder)localObject3).append(n);
      localObject3 = ((StringBuilder)localObject3).toString();
      localServiceConnection.setRequestProperty(str1, (String)localObject3);
      str1 = "POST";
      localServiceConnection.setRequestMethod(str1);
      localServiceConnection.connect();
      OutputStream localOutputStream = localServiceConnection.openOutputStream();
      int k = arrayOfByte2.length;
      localOutputStream.write(arrayOfByte2, i1, k);
      localOutputStream.flush();
      localOutputStream.close();
      int j = 0;
    }
    try
    {
      localServiceConnection.connect();
      localObject1 = localServiceConnection.openInputStream();
    }
    catch (IOException localIOException2)
    {
      Object localObject1;
      do
      {
        boolean bool2;
        localIOException1 = localIOException2;
        localObject1 = localServiceConnection.getErrorStream();
      } while (localObject1 != null);
      localServiceConnection.disconnect();
      throw localIOException1;
    }
    bool2 = debug;
    ByteArrayOutputStream localByteArrayOutputStream;
    byte[] arrayOfByte1;
    if (bool2)
    {
      localByteArrayOutputStream = new java/io/ByteArrayOutputStream;
      localByteArrayOutputStream.<init>();
      arrayOfByte1 = new byte[i2];
    }
    for (;;)
    {
      int i = ((InputStream)localObject1).read(arrayOfByte1, i1, i2);
      int m = -1;
      if (i == m)
      {
        localByteArrayOutputStream.flush();
        arrayOfByte1 = localByteArrayOutputStream.toByteArray();
        Object localObject2 = new java/lang/String;
        ((String)localObject2).<init>(arrayOfByte1);
        responseDump = ((String)localObject2);
        ((InputStream)localObject1).close();
        localObject1 = new java/io/ByteArrayInputStream;
        ((ByteArrayInputStream)localObject1).<init>(arrayOfByte1);
        parseResponse(paramSoapEnvelope, (InputStream)localObject1);
        return;
        localObject2 = localObject3;
        break;
      }
      IOException localIOException1;
      localByteArrayOutputStream.write(arrayOfByte1, i1, i);
    }
  }
  
  protected ServiceConnection getServiceConnection()
    throws IOException
  {
    ServiceConnectionSE localServiceConnectionSE = new org/ksoap2/transport/ServiceConnectionSE;
    String str = url;
    localServiceConnectionSE.<init>(str);
    return localServiceConnectionSE;
  }
}

/* Location:
 * Qualified Name:     org.ksoap2.transport.HttpTransportSE
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */