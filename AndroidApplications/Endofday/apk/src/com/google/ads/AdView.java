package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import d;
import t;

public class AdView
  extends RelativeLayout
  implements Ad
{
  private d a;
  
  public AdView(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    super(localContext);
    a(paramActivity, paramAdSize, paramString);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    String str1 = "http://schemas.android.com/apk/res/";
    localObject1 = ((StringBuilder)localObject1).append(str1);
    str1 = paramContext.getPackageName();
    localObject1 = ((StringBuilder)localObject1).append(str1);
    localObject1 = ((StringBuilder)localObject1).toString();
    str1 = "adSize";
    int m = -1;
    int i = paramAttributeSet.getAttributeIntValue((String)localObject1, str1, m);
    switch (i)
    {
    default: 
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      Object localObject4 = "Invalid adSize parameter in XML layout: ";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      Object localObject2 = ((StringBuilder)localObject3).append(i);
      localObject3 = ". Defaulting to BANNER.";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      t.e((String)localObject2);
      localObject2 = AdSize.BANNER;
      localObject3 = "adUnitId";
      localObject1 = paramAttributeSet.getAttributeValue((String)localObject1, (String)localObject3);
      if (localObject1 == null)
      {
        localObject3 = "AdView missing required XML attribute adUnitId.";
        t.b((String)localObject3);
      }
      boolean bool1 = isInEditMode();
      if (bool1)
      {
        localObject1 = new android/widget/TextView;
        ((TextView)localObject1).<init>(paramContext, paramAttributeSet);
        ((TextView)localObject1).setGravity(i3);
        String str2 = "Ads by Google";
        ((TextView)localObject1).setText(str2);
        setGravity(i3);
        int n = ((AdSize)localObject2).getWidth();
        float f2 = n;
        localObject4 = paramContext.getResources();
        localObject4 = ((Resources)localObject4).getDisplayMetrics();
        f2 = TypedValue.applyDimension(i2, f2, (DisplayMetrics)localObject4);
        int i1 = (int)f2;
        int j = ((AdSize)localObject2).getHeight();
        float f1 = j;
        localObject4 = paramContext.getResources();
        localObject4 = ((Resources)localObject4).getDisplayMetrics();
        f1 = TypedValue.applyDimension(i2, f1, (DisplayMetrics)localObject4);
        int k = (int)f1;
        addView((View)localObject1, i1, k);
      }
      break;
    }
    for (;;)
    {
      return;
      AdSize localAdSize = AdSize.BANNER;
      break;
      localAdSize = AdSize.IAB_MRECT;
      break;
      localAdSize = AdSize.IAB_BANNER;
      break;
      localAdSize = AdSize.IAB_LEADERBOARD;
      break;
      boolean bool2 = paramContext instanceof Activity;
      if (bool2)
      {
        paramContext = (Activity)paramContext;
        a(paramContext, localAdSize, (String)localObject1);
      }
      else
      {
        localObject1 = "AdView was initialized with a Context that wasn't an Activity.";
        t.b((String)localObject1);
      }
    }
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet);
  }
  
  private void a(Activity paramActivity, AdSize paramAdSize, String paramString)
  {
    int i2 = 1;
    int m = -2;
    d locald = new d;
    locald.<init>(paramActivity, this, paramAdSize, paramString);
    a = locald;
    int i = 17;
    setGravity(i);
    RelativeLayout.LayoutParams localLayoutParams = new android/widget/RelativeLayout$LayoutParams;
    localLayoutParams.<init>(m, m);
    setLayoutParams(localLayoutParams);
    int j = paramAdSize.getWidth();
    float f1 = j;
    Object localObject1 = paramActivity.getResources();
    localObject1 = ((Resources)localObject1).getDisplayMetrics();
    f1 = TypedValue.applyDimension(i2, f1, (DisplayMetrics)localObject1);
    int k = (int)f1;
    int n = paramAdSize.getHeight();
    float f2 = n;
    Object localObject2 = paramActivity.getResources();
    localObject2 = ((Resources)localObject2).getDisplayMetrics();
    f2 = TypedValue.applyDimension(i2, f2, (DisplayMetrics)localObject2);
    int i1 = (int)f2;
    localObject2 = a;
    localObject2 = ((d)localObject2).f();
    addView((View)localObject2, k, i1);
  }
  
  public boolean isReady()
  {
    d locald1 = a;
    if (locald1 == null) {}
    d locald2;
    boolean bool2;
    for (boolean bool1 = false;; bool2 = locald2.k())
    {
      return bool1;
      locald2 = a;
    }
  }
  
  public boolean isRefreshing()
  {
    d locald = a;
    boolean bool = locald.l();
    return bool;
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    int n = 17;
    int m = -1;
    Object localObject = a;
    localObject = ((d)localObject).b();
    localObject = ((Activity)localObject).getApplicationContext();
    PackageManager localPackageManager = ((Context)localObject).getPackageManager();
    String str1 = ((Context)localObject).getPackageName();
    String str2 = "android.permission.INTERNET";
    int k = localPackageManager.checkPermission(str2, str1);
    if (k != m)
    {
      String str3 = "android.permission.ACCESS_NETWORK_STATE";
      int j = localPackageManager.checkPermission(str3, str1);
      if (j != m) {}
    }
    else
    {
      TextView localTextView = new android/widget/TextView;
      localTextView.<init>((Context)localObject);
      localTextView.setGravity(n);
      localObject = "You must have INTERNET and ACCESS_NETWORK_STATE permissions to serve ads.";
      localTextView.setText((CharSequence)localObject);
      int i = -65536;
      localTextView.setTextColor(i);
      setGravity(n);
      addView(localTextView);
    }
    for (;;)
    {
      return;
      d locald = a;
      locald.a(paramAdRequest);
    }
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    d locald = a;
    locald.a(paramAdListener);
  }
  
  public void stopLoading()
  {
    d locald = a;
    locald.s();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */