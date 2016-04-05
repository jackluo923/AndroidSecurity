package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.StrictLineReader;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.RawHeaders;
import com.squareup.okhttp.internal.http.ResponseHeaders;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

final class HttpResponseCache$Entry
{
  private final String cipherSuite;
  private final Certificate[] localCertificates;
  private final Certificate[] peerCertificates;
  private final String requestMethod;
  private final RawHeaders responseHeaders;
  private final String uri;
  private final RawHeaders varyHeaders;
  
  public HttpResponseCache$Entry(InputStream paramInputStream)
    throws IOException
  {
    try
    {
      StrictLineReader localStrictLineReader1 = new StrictLineReader(paramInputStream, Util.US_ASCII);
      uri = localStrictLineReader1.readLine();
      requestMethod = localStrictLineReader1.readLine();
      varyHeaders = new RawHeaders();
      int j = localStrictLineReader1.readInt();
      int i = 0;
      while (i < j)
      {
        varyHeaders.addLine(localStrictLineReader1.readLine());
        i += 1;
      }
      responseHeaders = new RawHeaders();
      responseHeaders.setStatusLine(localStrictLineReader1.readLine());
      j = localStrictLineReader1.readInt();
      i = 0;
      while (i < j)
      {
        responseHeaders.addLine(localStrictLineReader1.readLine());
        i += 1;
      }
      if (!isHttps()) {
        break label226;
      }
      String str = localStrictLineReader1.readLine();
      if (str.length() > 0) {
        throw new IOException("expected \"\" but was \"" + str + "\"");
      }
    }
    finally
    {
      paramInputStream.close();
    }
    cipherSuite = localStrictLineReader2.readLine();
    peerCertificates = readCertArray(localStrictLineReader2);
    for (localCertificates = readCertArray(localStrictLineReader2);; localCertificates = null)
    {
      paramInputStream.close();
      return;
      label226:
      cipherSuite = null;
      peerCertificates = null;
    }
  }
  
  public HttpResponseCache$Entry(URI paramURI, RawHeaders paramRawHeaders, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    uri = paramURI.toString();
    varyHeaders = paramRawHeaders;
    requestMethod = paramHttpURLConnection.getRequestMethod();
    responseHeaders = RawHeaders.fromMultimap(paramHttpURLConnection.getHeaderFields(), true);
    if (isHttps())
    {
      paramHttpURLConnection = (HttpsURLConnection)paramHttpURLConnection;
      cipherSuite = paramHttpURLConnection.getCipherSuite();
      paramURI = null;
    }
    try
    {
      paramRawHeaders = paramHttpURLConnection.getServerCertificates();
      paramURI = paramRawHeaders;
    }
    catch (SSLPeerUnverifiedException paramRawHeaders)
    {
      for (;;) {}
    }
    peerCertificates = paramURI;
    localCertificates = paramHttpURLConnection.getLocalCertificates();
    return;
    cipherSuite = null;
    peerCertificates = null;
    localCertificates = null;
  }
  
  private boolean isHttps()
  {
    return uri.startsWith("https://");
  }
  
  /* Error */
  private Certificate[] readCertArray(StrictLineReader paramStrictLineReader)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 52	com/squareup/okhttp/internal/StrictLineReader:readInt	()I
    //   4: istore 5
    //   6: iload 5
    //   8: iconst_m1
    //   9: if_icmpne +7 -> 16
    //   12: aconst_null
    //   13: astore_2
    //   14: aload_2
    //   15: areturn
    //   16: ldc -103
    //   18: invokestatic 159	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   21: astore 4
    //   23: iload 5
    //   25: anewarray 161	java/security/cert/Certificate
    //   28: astore_3
    //   29: iconst_0
    //   30: istore 5
    //   32: aload_3
    //   33: astore_2
    //   34: iload 5
    //   36: aload_3
    //   37: arraylength
    //   38: if_icmpge -24 -> 14
    //   41: aload_3
    //   42: iload 5
    //   44: aload 4
    //   46: new 163	java/io/ByteArrayInputStream
    //   49: dup
    //   50: aload_1
    //   51: invokevirtual 39	com/squareup/okhttp/internal/StrictLineReader:readLine	()Ljava/lang/String;
    //   54: ldc -91
    //   56: invokevirtual 169	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   59: invokestatic 175	com/squareup/okhttp/internal/Base64:decode	([B)[B
    //   62: invokespecial 178	java/io/ByteArrayInputStream:<init>	([B)V
    //   65: invokevirtual 182	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   68: aastore
    //   69: iload 5
    //   71: iconst_1
    //   72: iadd
    //   73: istore 5
    //   75: goto -43 -> 32
    //   78: astore_1
    //   79: new 21	java/io/IOException
    //   82: dup
    //   83: aload_1
    //   84: invokevirtual 185	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
    //   87: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	Entry
    //   0	91	1	paramStrictLineReader	StrictLineReader
    //   13	21	2	localObject	Object
    //   28	14	3	arrayOfCertificate	Certificate[]
    //   21	24	4	localCertificateFactory	java.security.cert.CertificateFactory
    //   4	70	5	i	int
    // Exception table:
    //   from	to	target	type
    //   16	29	78	java/security/cert/CertificateException
    //   34	69	78	java/security/cert/CertificateException
  }
  
  /* Error */
  private void writeCertArray(Writer paramWriter, Certificate[] paramArrayOfCertificate)
    throws IOException
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +10 -> 11
    //   4: aload_1
    //   5: ldc -65
    //   7: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   10: return
    //   11: aload_1
    //   12: new 72	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   19: aload_2
    //   20: arraylength
    //   21: invokestatic 201	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   24: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: bipush 10
    //   29: invokevirtual 204	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   32: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   38: aload_2
    //   39: arraylength
    //   40: istore 5
    //   42: iconst_0
    //   43: istore 4
    //   45: iload 4
    //   47: iload 5
    //   49: if_icmpge -39 -> 10
    //   52: aload_2
    //   53: iload 4
    //   55: aaload
    //   56: invokevirtual 208	java/security/cert/Certificate:getEncoded	()[B
    //   59: invokestatic 212	com/squareup/okhttp/internal/Base64:encode	([B)Ljava/lang/String;
    //   62: astore_3
    //   63: aload_1
    //   64: new 72	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   71: aload_3
    //   72: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: bipush 10
    //   77: invokevirtual 204	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   80: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokevirtual 196	java/io/Writer:write	(Ljava/lang/String;)V
    //   86: iload 4
    //   88: iconst_1
    //   89: iadd
    //   90: istore 4
    //   92: goto -47 -> 45
    //   95: astore_1
    //   96: new 21	java/io/IOException
    //   99: dup
    //   100: aload_1
    //   101: invokevirtual 213	java/security/cert/CertificateEncodingException:getMessage	()Ljava/lang/String;
    //   104: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	Entry
    //   0	108	1	paramWriter	Writer
    //   0	108	2	paramArrayOfCertificate	Certificate[]
    //   62	10	3	str	String
    //   43	48	4	i	int
    //   40	10	5	j	int
    // Exception table:
    //   from	to	target	type
    //   11	42	95	java/security/cert/CertificateEncodingException
    //   52	86	95	java/security/cert/CertificateEncodingException
  }
  
  public boolean matches(URI paramURI, String paramString, Map<String, List<String>> paramMap)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (uri.equals(paramURI.toString()))
    {
      bool1 = bool2;
      if (requestMethod.equals(paramString))
      {
        bool1 = bool2;
        if (new ResponseHeaders(paramURI, responseHeaders).varyMatches(varyHeaders.toMultimap(false), paramMap)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public void writeTo(DiskLruCache.Editor paramEditor)
    throws IOException
  {
    paramEditor = new BufferedWriter(new OutputStreamWriter(paramEditor.newOutputStream(0), Util.UTF_8));
    paramEditor.write(uri + '\n');
    paramEditor.write(requestMethod + '\n');
    paramEditor.write(Integer.toString(varyHeaders.length()) + '\n');
    int i = 0;
    while (i < varyHeaders.length())
    {
      paramEditor.write(varyHeaders.getFieldName(i) + ": " + varyHeaders.getValue(i) + '\n');
      i += 1;
    }
    paramEditor.write(responseHeaders.getStatusLine() + '\n');
    paramEditor.write(Integer.toString(responseHeaders.length()) + '\n');
    i = 0;
    while (i < responseHeaders.length())
    {
      paramEditor.write(responseHeaders.getFieldName(i) + ": " + responseHeaders.getValue(i) + '\n');
      i += 1;
    }
    if (isHttps())
    {
      paramEditor.write(10);
      paramEditor.write(cipherSuite + '\n');
      writeCertArray(paramEditor, peerCertificates);
      writeCertArray(paramEditor, localCertificates);
    }
    paramEditor.close();
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.HttpResponseCache.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */