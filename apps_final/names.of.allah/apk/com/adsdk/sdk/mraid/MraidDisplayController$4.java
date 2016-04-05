package com.adsdk.sdk.mraid;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.os.Handler;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

class MraidDisplayController$4
  implements Runnable
{
  private MediaScannerConnection mediaScannerConnection;
  private InputStream pictureInputStream;
  private OutputStream pictureOutputStream;
  private URI uri;
  
  MraidDisplayController$4(MraidDisplayController paramMraidDisplayController, String paramString, File paramFile) {}
  
  private void loadPictureIntoGalleryApp(String paramString)
  {
    paramString = new MraidDisplayController.MoPubMediaScannerConnectionClient(this$0, paramString, null, null);
    mediaScannerConnection = new MediaScannerConnection(MraidDisplayController.access$5(this$0).getApplicationContext(), paramString);
    MraidDisplayController.MoPubMediaScannerConnectionClient.access$1(paramString, mediaScannerConnection);
    mediaScannerConnection.connect();
  }
  
  public void run()
  {
    try
    {
      uri = URI.create(val$uriString);
      Object localObject1 = HttpClientFactory.create().execute(new HttpGet(uri));
      pictureInputStream = ((HttpResponse)localObject1).getEntity().getContent();
      String str = HttpResponses.extractHeader((HttpResponse)localObject1, ResponseHeader.LOCATION);
      if (str != null) {
        uri = URI.create(str);
      }
      localObject1 = MraidDisplayController.access$6(this$0, uri, (HttpResponse)localObject1);
      localObject1 = new File(val$pictureStoragePath, (String)localObject1);
      str = ((File)localObject1).toString();
      pictureOutputStream = new FileOutputStream((File)localObject1);
      Streams.copyContent(pictureInputStream, pictureOutputStream);
      loadPictureIntoGalleryApp(str);
      return;
    }
    catch (Exception localException)
    {
      MraidDisplayController.access$2(this$0).post(new MraidDisplayController.4.1(this));
      return;
    }
    finally
    {
      Streams.closeStream(pictureInputStream);
      Streams.closeStream(pictureOutputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidDisplayController.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */