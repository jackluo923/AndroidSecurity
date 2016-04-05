package com.adsdk.sdk.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;

public class MraidVideoPlayerActivity
  extends BaseInterstitialActivity
  implements BaseVideoView.BaseVideoViewListener
{
  private static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
  static final String VIDEO_URL = "video_url";
  private BaseVideoView mVideoView;
  
  private void broadcastVastInterstitialAction(String paramString) {}
  
  static Intent createIntentMraid(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, MraidVideoPlayerActivity.class);
    paramContext.setFlags(268435456);
    paramContext.putExtra("video_view_class_name", "mraid");
    paramContext.putExtra("video_url", paramString);
    return paramContext;
  }
  
  static Intent createIntentVast(Context paramContext, String paramString1, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3, ArrayList<String> paramArrayList4, ArrayList<String> paramArrayList5, ArrayList<String> paramArrayList6, String paramString2, ArrayList<String> paramArrayList7)
  {
    return new Intent(paramContext, MraidVideoPlayerActivity.class);
  }
  
  private BaseVideoView createVideoView()
  {
    String str = getIntent().getStringExtra("video_view_class_name");
    if ("vast".equals(str)) {
      return null;
    }
    if ("mraid".equals(str)) {
      return new MraidVideoView(this, getIntent(), this);
    }
    broadcastInterstitialAction("com.mopub.action.interstitial.fail");
    finish();
    return new MraidVideoPlayerActivity.1(this, this);
  }
  
  static void startMraid(Context paramContext, String paramString)
  {
    paramString = createIntentMraid(paramContext, paramString);
    try
    {
      paramContext.startActivity(paramString);
      return;
    }
    catch (ActivityNotFoundException paramContext)
    {
      Log.d("MraidVideoPlayerActivity", "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
    }
  }
  
  static void startVast(Context paramContext, String paramString1, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3, ArrayList<String> paramArrayList4, ArrayList<String> paramArrayList5, ArrayList<String> paramArrayList6, String paramString2, ArrayList<String> paramArrayList7)
  {
    if (paramString1 == null) {
      return;
    }
    paramString1 = createIntentVast(paramContext, paramString1, paramArrayList1, paramArrayList2, paramArrayList3, paramArrayList4, paramArrayList5, paramArrayList6, paramString2, paramArrayList7);
    try
    {
      paramContext.startActivity(paramString1);
      return;
    }
    catch (ActivityNotFoundException paramContext)
    {
      Log.d("MoPub", "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
    }
  }
  
  public View getAdView()
  {
    mVideoView = createVideoView();
    return mVideoView;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    hideInterstitialCloseButton();
    mVideoView.start();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onPause()
  {
    mVideoView.onPause();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    mVideoView.onResume();
  }
  
  public void showCloseButton()
  {
    showInterstitialCloseButton();
  }
  
  public void videoClicked()
  {
    broadcastInterstitialAction("com.mopub.action.interstitial.click");
  }
  
  public void videoCompleted(boolean paramBoolean)
  {
    showInterstitialCloseButton();
    if (paramBoolean) {
      finish();
    }
  }
  
  public void videoError(boolean paramBoolean)
  {
    Log.d("MoPub", "Error: video can not be played.");
    showInterstitialCloseButton();
    broadcastInterstitialAction("com.mopub.action.interstitial.fail");
    if (paramBoolean) {
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidVideoPlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */