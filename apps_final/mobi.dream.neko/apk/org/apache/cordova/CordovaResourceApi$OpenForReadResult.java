package org.apache.cordova;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.InputStream;

public final class CordovaResourceApi$OpenForReadResult
{
  public final AssetFileDescriptor assetFd;
  public final InputStream inputStream;
  public final long length;
  public final String mimeType;
  public final Uri uri;
  
  CordovaResourceApi$OpenForReadResult(Uri paramUri, InputStream paramInputStream, String paramString, long paramLong, AssetFileDescriptor paramAssetFileDescriptor)
  {
    uri = paramUri;
    inputStream = paramInputStream;
    mimeType = paramString;
    length = paramLong;
    assetFd = paramAssetFileDescriptor;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaResourceApi.OpenForReadResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */