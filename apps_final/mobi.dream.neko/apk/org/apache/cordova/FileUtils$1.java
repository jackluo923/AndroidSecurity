package org.apache.cordova;

import android.util.Base64;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class FileUtils$1
  implements Runnable
{
  FileUtils$1(FileUtils paramFileUtils, String paramString1, int paramInt1, int paramInt2, int paramInt3, String paramString2, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        arrayOfByte = FileUtils.access$000(this$0, val$filename, val$start, val$end);
        switch (val$resultType)
        {
        case 1: 
          localObject = FileHelper.getMimeType(val$filename, this$0.cordova);
          arrayOfByte = Base64.encode(arrayOfByte, 2);
          localObject = "data:" + (String)localObject + ";base64," + new String(arrayOfByte, "US-ASCII");
          localObject = new PluginResult(PluginResult.Status.OK, (String)localObject);
          val$callbackContext.sendPluginResult((PluginResult)localObject);
          return;
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        byte[] arrayOfByte;
        Object localObject;
        val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, FileUtils.NOT_FOUND_ERR));
        return;
      }
      catch (IOException localIOException)
      {
        Log.d("FileUtils", localIOException.getLocalizedMessage());
        val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.IO_EXCEPTION, FileUtils.NOT_READABLE_ERR));
        return;
      }
      localObject = new PluginResult(PluginResult.Status.OK, new String(arrayOfByte, val$encoding));
      continue;
      localObject = new PluginResult(PluginResult.Status.OK, arrayOfByte);
      continue;
      localObject = new PluginResult(PluginResult.Status.OK, arrayOfByte, true);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */