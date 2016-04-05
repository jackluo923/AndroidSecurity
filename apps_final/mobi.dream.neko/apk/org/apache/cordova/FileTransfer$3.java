package org.apache.cordova;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class FileTransfer$3
  implements X509TrustManager
{
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {}
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {}
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return new X509Certificate[0];
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */