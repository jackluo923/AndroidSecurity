package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class eq
{
  private final Context mContext;
  private int mState = 0;
  private String sl;
  private final float sm;
  private float sn;
  private float so;
  private float sp;
  
  public eq(Context paramContext)
  {
    mContext = paramContext;
    sm = getResourcesgetDisplayMetricsdensity;
  }
  
  public eq(Context paramContext, String paramString)
  {
    this(paramContext);
    sl = paramString;
  }
  
  private void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    if (paramInt == 0)
    {
      mState = 0;
      sn = paramFloat1;
      so = paramFloat2;
      sp = paramFloat2;
    }
    label24:
    label224:
    do
    {
      do
      {
        break label24;
        do
        {
          return;
        } while (mState == -1);
        if (paramInt != 2) {
          break;
        }
        if (paramFloat2 > so) {
          so = paramFloat2;
        }
        while (so - sp > 30.0F * sm)
        {
          mState = -1;
          return;
          if (paramFloat2 < sp) {
            sp = paramFloat2;
          }
        }
        if ((mState == 0) || (mState == 2)) {
          if (paramFloat1 - sn >= 50.0F * sm) {
            sn = paramFloat1;
          }
        }
        for (mState += 1;; mState += 1)
        {
          do
          {
            if ((mState != 1) && (mState != 3)) {
              break label224;
            }
            if (paramFloat1 <= sn) {
              break;
            }
            sn = paramFloat1;
            return;
          } while (((mState != 1) && (mState != 3)) || (paramFloat1 - sn > -50.0F * sm));
          sn = paramFloat1;
        }
      } while ((mState != 2) || (paramFloat1 >= sn));
      sn = paramFloat1;
      return;
    } while ((paramInt != 1) || (mState != 4));
    showDialog();
  }
  
  private void showDialog()
  {
    Object localObject2;
    Object localObject1;
    if (!TextUtils.isEmpty(sl))
    {
      localObject2 = new Uri.Builder().encodedQuery(sl).build();
      localObject1 = new StringBuilder();
      localObject2 = ep.b((Uri)localObject2);
      Iterator localIterator = ((Map)localObject2).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((StringBuilder)localObject1).append(str).append(" = ").append((String)((Map)localObject2).get(str)).append("\n\n");
      }
      localObject1 = ((StringBuilder)localObject1).toString().trim();
      if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    }
    for (;;)
    {
      localObject2 = new AlertDialog.Builder(mContext);
      ((AlertDialog.Builder)localObject2).setMessage((CharSequence)localObject1);
      ((AlertDialog.Builder)localObject2).setTitle("Ad Information");
      ((AlertDialog.Builder)localObject2).setPositiveButton("Share", new eq.1(this, (String)localObject1));
      ((AlertDialog.Builder)localObject2).setNegativeButton("Close", new eq.2(this));
      ((AlertDialog.Builder)localObject2).create().show();
      return;
      localObject1 = "No debug information";
      continue;
      localObject1 = "No debug information";
    }
  }
  
  public final void c(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getHistorySize();
    int i = 0;
    while (i < j)
    {
      a(paramMotionEvent.getActionMasked(), paramMotionEvent.getHistoricalX(0, i), paramMotionEvent.getHistoricalY(0, i));
      i += 1;
    }
    a(paramMotionEvent.getActionMasked(), paramMotionEvent.getX(), paramMotionEvent.getY());
  }
  
  public final void x(String paramString)
  {
    sl = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */