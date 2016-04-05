package com.millennialmedia.android;

import java.util.HashMap;

class BridgeMMInlineVideo
  extends MMJSObject
{
  public MMJSResponse adjustVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.4(this, paramHashMap));
  }
  
  public MMJSResponse insertVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.1(this, paramHashMap));
  }
  
  public MMJSResponse pauseVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.6(this));
  }
  
  public MMJSResponse playVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.3(this));
  }
  
  public MMJSResponse removeVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.2(this));
  }
  
  public MMJSResponse resumeVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.7(this));
  }
  
  public MMJSResponse setStreamVideoSource(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.8(this, paramHashMap));
  }
  
  public MMJSResponse stopVideo(HashMap<String, String> paramHashMap)
  {
    return runOnUiThreadFuture(new BridgeMMInlineVideo.5(this));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMInlineVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */