package com.adsdk.sdk.video;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.adsdk.sdk.Log;

class SDKVideoView$7
  implements SurfaceHolder.Callback
{
  SDKVideoView$7(SDKVideoView paramSDKVideoView) {}
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d("SDKVideoView surfaceChanged");
    SDKVideoView.access$14(this$0, paramInt2);
    SDKVideoView.access$15(this$0, paramInt3);
    SDKVideoView.access$6(this$0);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("Surface created");
    SDKVideoView.access$16(this$0, true);
    if (SDKVideoView.access$17(this$0)) {
      SDKVideoView.access$18(this$0);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("Surface destroyed");
    SDKVideoView.access$16(this$0, false);
    if (SDKVideoView.access$3(this$0) != null) {
      SDKVideoView.access$3(this$0).hide();
    }
    SDKVideoView.access$19(this$0, true);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */