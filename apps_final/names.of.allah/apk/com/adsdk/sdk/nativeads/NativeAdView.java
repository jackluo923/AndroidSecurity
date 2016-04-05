package com.adsdk.sdk.nativeads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.adsdk.sdk.Log;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SuppressLint({"ViewConstructor"})
public class NativeAdView
  extends FrameLayout
{
  private View adView;
  private Handler handler;
  private boolean impressionReported;
  private NativeAdListener listener;
  private List<NativeAd.Tracker> trackers;
  
  public NativeAdView(Context paramContext, NativeAd paramNativeAd, NativeViewBinder paramNativeViewBinder, NativeAdListener paramNativeAdListener)
  {
    super(paramContext);
    if ((paramNativeAd == null) || (paramNativeViewBinder == null)) {
      return;
    }
    adView = inflate(paramContext, paramNativeViewBinder.getAdLayoutId(), null);
    trackers = paramNativeAd.getTrackers();
    handler = new Handler();
    listener = paramNativeAdListener;
    fillAdView(paramNativeAd, paramNativeViewBinder);
    addView(adView);
  }
  
  private void notifyImpression()
  {
    if (listener != null) {
      handler.post(new NativeAdView.1(this));
    }
  }
  
  private void trackImpression(String paramString)
  {
    new NativeAdView.2(this, paramString).execute(new Void[0]);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    Iterator localIterator;
    if (!impressionReported)
    {
      impressionReported = true;
      notifyImpression();
      localIterator = trackers.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        super.dispatchDraw(paramCanvas);
        return;
      }
      NativeAd.Tracker localTracker = (NativeAd.Tracker)localIterator.next();
      if (type.equals("impression")) {
        trackImpression(url);
      }
    }
  }
  
  public void fillAdView(NativeAd paramNativeAd, NativeViewBinder paramNativeViewBinder)
  {
    Iterator localIterator = paramNativeViewBinder.getTextAssetsBindingsKeySet().iterator();
    if (!localIterator.hasNext()) {
      localIterator = paramNativeViewBinder.getImageAssetsBindingsKeySet().iterator();
    }
    for (;;)
    {
      label145:
      Object localObject1;
      Object localObject2;
      if (!localIterator.hasNext())
      {
        return;
        str = (String)localIterator.next();
        i = paramNativeViewBinder.getIdForTextAsset(str);
        if (i == 0) {
          break;
        }
        try
        {
          if (!str.equals("rating")) {
            break label145;
          }
          RatingBar localRatingBar = (RatingBar)adView.findViewById(i);
          if (localRatingBar == null) {
            break;
          }
          i = Integer.parseInt(paramNativeAd.getTextAsset(str));
          localRatingBar.setIsIndicator(true);
          localRatingBar.setRating(i);
        }
        catch (ClassCastException localClassCastException1)
        {
          Log.e("Cannot fill view for " + str);
        }
        break;
        localObject1 = (TextView)adView.findViewById(i);
        localObject2 = paramNativeAd.getTextAsset(str);
        if ((localObject1 == null) || (localObject2 == null)) {
          break;
        }
        ((TextView)localObject1).setText((CharSequence)localObject2);
        break;
      }
      String str = (String)localIterator.next();
      int i = paramNativeViewBinder.getIdForImageAsset(str);
      if (i != 0) {
        try
        {
          localObject1 = (ImageView)adView.findViewById(i);
          localObject2 = getImageAssetbitmap;
          if ((localObject1 != null) && (localObject2 != null)) {
            ((ImageView)localObject1).setImageBitmap((Bitmap)localObject2);
          }
        }
        catch (ClassCastException localClassCastException2)
        {
          Log.e("Cannot fill view for " + str);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */