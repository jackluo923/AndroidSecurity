package org.apache.cordova;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;

final class FileTransfer$RequestContext
{
  boolean aborted;
  CallbackContext callbackContext;
  InputStream currentInputStream;
  OutputStream currentOutputStream;
  String source;
  String target;
  File targetFile;
  
  FileTransfer$RequestContext(String paramString1, String paramString2, CallbackContext paramCallbackContext)
  {
    source = paramString1;
    target = paramString2;
    callbackContext = paramCallbackContext;
  }
  
  void sendPluginResult(PluginResult paramPluginResult)
  {
    try
    {
      if (!aborted) {
        callbackContext.sendPluginResult(paramPluginResult);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.RequestContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */