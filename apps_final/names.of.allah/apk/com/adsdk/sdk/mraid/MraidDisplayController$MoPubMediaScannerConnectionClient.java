package com.adsdk.sdk.mraid;

import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;

class MraidDisplayController$MoPubMediaScannerConnectionClient
  implements MediaScannerConnection.MediaScannerConnectionClient
{
  private final String mFilename;
  private MediaScannerConnection mMediaScannerConnection;
  private final String mMimeType;
  
  private MraidDisplayController$MoPubMediaScannerConnectionClient(MraidDisplayController paramMraidDisplayController, String paramString1, String paramString2)
  {
    mFilename = paramString1;
    mMimeType = paramString2;
  }
  
  private void setMediaScannerConnection(MediaScannerConnection paramMediaScannerConnection)
  {
    mMediaScannerConnection = paramMediaScannerConnection;
  }
  
  public void onMediaScannerConnected()
  {
    if (mMediaScannerConnection != null) {
      mMediaScannerConnection.scanFile(mFilename, mMimeType);
    }
  }
  
  public void onScanCompleted(String paramString, Uri paramUri)
  {
    if (mMediaScannerConnection != null) {
      mMediaScannerConnection.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidDisplayController.MoPubMediaScannerConnectionClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */