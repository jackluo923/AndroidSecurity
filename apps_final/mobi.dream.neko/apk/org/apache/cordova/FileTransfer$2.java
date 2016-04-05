package org.apache.cordova;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

final class FileTransfer$2
  implements HostnameVerifier
{
  public boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */