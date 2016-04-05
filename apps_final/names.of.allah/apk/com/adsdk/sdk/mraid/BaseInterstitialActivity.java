package com.adsdk.sdk.mraid;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.support.v4.a.i;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

abstract class BaseInterstitialActivity
  extends Activity
{
  public static final String ACTION_INTERSTITIAL_CLICK = "com.mopub.action.interstitial.click";
  public static final String ACTION_INTERSTITIAL_DISMISS = "com.mopub.action.interstitial.dismiss";
  public static final String ACTION_INTERSTITIAL_FAIL = "com.mopub.action.interstitial.fail";
  public static final String ACTION_INTERSTITIAL_SHOW = "com.mopub.action.interstitial.show";
  private static final float CLOSE_BUTTON_PADDING = 8.0F;
  private static final float CLOSE_BUTTON_SIZE = 50.0F;
  public static final IntentFilter HTML_INTERSTITIAL_INTENT_FILTER = ;
  private int mButtonPadding;
  private int mButtonSize;
  private ImageView mCloseButton;
  private RelativeLayout mLayout;
  
  private static IntentFilter createHtmlInterstitialIntentFilter()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.mopub.action.interstitial.fail");
    localIntentFilter.addAction("com.mopub.action.interstitial.show");
    localIntentFilter.addAction("com.mopub.action.interstitial.dismiss");
    localIntentFilter.addAction("com.mopub.action.interstitial.click");
    return localIntentFilter;
  }
  
  private void createInterstitialCloseButton()
  {
    mCloseButton = new ImageButton(this);
    Object localObject = new StateListDrawable();
    BitmapDrawable localBitmapDrawable = Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage(this);
    ((StateListDrawable)localObject).addState(new int[] { -16842919 }, localBitmapDrawable);
    localBitmapDrawable = Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage(this);
    ((StateListDrawable)localObject).addState(new int[] { 16842919 }, localBitmapDrawable);
    mCloseButton.setImageDrawable((Drawable)localObject);
    mCloseButton.setBackgroundDrawable(null);
    mCloseButton.setOnClickListener(new BaseInterstitialActivity.1(this));
    localObject = new RelativeLayout.LayoutParams(mButtonSize, mButtonSize);
    ((RelativeLayout.LayoutParams)localObject).addRule(11);
    ((RelativeLayout.LayoutParams)localObject).setMargins(mButtonPadding, 0, mButtonPadding, 0);
    mLayout.addView(mCloseButton, (ViewGroup.LayoutParams)localObject);
  }
  
  protected void broadcastInterstitialAction(String paramString)
  {
    paramString = new Intent(paramString);
    i.a(this).a(paramString);
  }
  
  public abstract View getAdView();
  
  protected void hideInterstitialCloseButton()
  {
    mCloseButton.setVisibility(4);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().addFlags(1024);
    mButtonSize = Dips.asIntPixels(50.0F, this);
    mButtonPadding = Dips.asIntPixels(8.0F, this);
    mLayout = new RelativeLayout(this);
    paramBundle = new RelativeLayout.LayoutParams(-1, -2);
    paramBundle.addRule(13);
    mLayout.addView(getAdView(), paramBundle);
    setContentView(mLayout);
    createInterstitialCloseButton();
  }
  
  protected void onDestroy()
  {
    mLayout.removeAllViews();
    super.onDestroy();
  }
  
  protected void showInterstitialCloseButton()
  {
    mCloseButton.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.BaseInterstitialActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */