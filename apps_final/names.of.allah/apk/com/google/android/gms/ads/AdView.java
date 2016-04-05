package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.av;

public final class AdView
  extends ViewGroup
{
  private final av kv;
  
  public AdView(Context paramContext)
  {
    super(paramContext);
    kv = new av(this);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    kv = new av(this, paramAttributeSet, false);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    kv = new av(this, paramAttributeSet, false);
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
  
  public final String getAdUnitId()
  {
    return kv.getAdUnitId();
  }
  
  public final InAppPurchaseListener getInAppPurchaseListener()
  {
    return kv.getInAppPurchaseListener();
  }
  
  public final void loadAd(AdRequest paramAdRequest)
  {
    kv.a(paramAdRequest.O());
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
  
  public final void resume()
  {
    kv.resume();
  }
  
  public final void setAdListener(AdListener paramAdListener)
  {
    kv.setAdListener(paramAdListener);
  }
  
  public final void setAdSize(AdSize paramAdSize)
  {
    kv.setAdSizes(new AdSize[] { paramAdSize });
  }
  
  public final void setAdUnitId(String paramString)
  {
    kv.setAdUnitId(paramString);
  }
  
  public final void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    kv.setInAppPurchaseListener(paramInAppPurchaseListener);
  }
  
  public final void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    kv.setPlayStorePurchaseParams(paramPlayStorePurchaseListener, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */