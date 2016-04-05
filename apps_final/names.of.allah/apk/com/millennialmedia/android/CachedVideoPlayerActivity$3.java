package com.millennialmedia.android;

import android.widget.VideoView;

class CachedVideoPlayerActivity$3
  extends MMWebViewClient.MMWebViewClientListener
{
  CachedVideoPlayerActivity$3(CachedVideoPlayerActivity paramCachedVideoPlayerActivity) {}
  
  public void onPageFinished(String paramString)
  {
    MMSDK.Log.d("@@ ON PAGE FINISHED" + paramString);
    if ((this$0.mVideoView != null) && (CachedVideoPlayerActivity.access$000(this$0) != null) && (!this$0.mVideoView.isPlaying()) && (paramString.equalsIgnoreCase(access$000this$0).webOverlayURL))) {
      this$0.playVideo(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedVideoPlayerActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */