package com.millennialmedia.android;

import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;

class BridgeMMMedia$1
  implements MediaScannerConnection.MediaScannerConnectionClient
{
  BridgeMMMedia$1(BridgeMMMedia paramBridgeMMMedia, String paramString) {}
  
  public void onMediaScannerConnected()
  {
    if (this$0.mediaScanner != null) {
      this$0.mediaScanner.scanFile(val$path, null);
    }
  }
  
  public void onScanCompleted(String paramString, Uri paramUri)
  {
    if (paramUri == null) {
      MMSDK.Log.d("Failed to scan " + paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */