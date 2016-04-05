package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.av;

public final class PublisherAdView
  extends ViewGroup
{
  private final av kv;
  
  public PublisherAdView(Context paramContext)
  {
    super(paramContext);
    kv = new av(this);
  }
  
  public PublisherAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    kv = new av(this, paramAttributeSet, true);
  }
  
  public PublisherAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    kv = new av(this, paramAttributeSet, true);
  }
  
  public final void destroy()
  {
    kv.destroy();
  }
  
  public final AdListener getAdListener()
  {
    return kv.getAdListener();
  }
  
  public final AdSize getAdSize()
  {
    return kv.getAdSize();
  }
  
  public final AdSize[] getAdSizes()
  {
    return kv.getAdSizes();
  }
  
  public final String getAdUnitId()
  {
    return kv.getAdUnitId();
  }
  
  public final AppEventListener getAppEventListener()
  {
    return kv.getAppEventListener();
  }
  
  public final void loadAd(PublisherAdRequest paramPublisherAdRequest)
  {
    kv.a(paramPublisherAdRequest.O());
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = getChildAt(0);
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      int i = localView.getMeasuredWidth();
      int j = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1 - i) / 2;
      paramInt2 = (paramInt4 - paramInt2 - j) / 2;
      localView.layout(paramInt1, paramInt2, i + paramInt1, j + paramInt2);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    Object localObject = getChildAt(0);
    AdSize localAdSize = getAdSize();
    int j;
    if ((localObject != null) && (((View)localObject).getVisibility() != 8))
    {
      measureChild((View)localObject, paramInt1, paramInt2);
      j = ((View)localObject).getMeasuredWidth();
      i = ((View)localObject).getMeasuredHeight();
    }
    for (;;)
    {
      j = Math.max(j, getSuggestedMinimumWidth());
      i = Math.max(i, getSuggestedMinimumHeight());
      setMeasuredDimension(View.resolveSize(j, paramInt1), View.resolveSize(i, paramInt2));
      return;
      if (localAdSize != null)
      {
        localObject = getContext();
        j = localAdSize.getWidthInPixels((Context)localObject);
        i = localAdSize.getHeightInPixels((Context)localObject);
      }
      else
      {
        j = 0;
      }
    }
  }
  
  public final void pause()
  {
    kv.pause();
  }
  
  public final void recordManualImpression()
  {
    kv.recordManualImpression();
  }
  
  public final void resume()
  {
    kv.resume();
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    kv.setAdListener(paramAdListener);
  }
  
  public final void setAdSizes(AdSize... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length <= 0)) {
      throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }
    kv.a(paramVarArgs);
  }
  
  public final void setAdUnitId(String paramString)
  {
    kv.setAdUnitId(paramString);
  }
  
  public final void setAppEventListener(AppEventListener paramAppEventListener)
  {
    kv.setAppEventListener(paramAppEventListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */