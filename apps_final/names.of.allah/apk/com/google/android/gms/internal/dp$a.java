package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View.MeasureSpec;
import android.webkit.WebView;

public final class dp$a
  extends AsyncTask<Void, Void, Boolean>
{
  private final WebView pO;
  private Bitmap pP;
  
  public dp$a(dp paramdp, WebView paramWebView)
  {
    pO = paramWebView;
  }
  
  protected final Boolean a(Void... paramVarArgs)
  {
    for (;;)
    {
      int i;
      int m;
      try
      {
        int n = pP.getWidth();
        int i1 = pP.getHeight();
        if ((n == 0) || (i1 == 0))
        {
          paramVarArgs = Boolean.valueOf(false);
          return paramVarArgs;
        }
        i = 0;
        j = 0;
        int k;
        if (i < n)
        {
          k = 0;
          if (k >= i1) {
            break label139;
          }
          m = j;
          if (pP.getPixel(i, k) != 0) {
            m = j + 1;
          }
        }
        else
        {
          if (j / (n * i1 / 100.0D) > 0.1D)
          {
            bool = true;
            paramVarArgs = Boolean.valueOf(bool);
            continue;
          }
          boolean bool = false;
          continue;
        }
        k += 10;
      }
      finally {}
      int j = m;
      continue;
      label139:
      i += 10;
    }
  }
  
  protected final void a(Boolean paramBoolean)
  {
    dp.c(pQ);
    if ((paramBoolean.booleanValue()) || (pQ.bl()) || (dp.d(pQ) <= 0L))
    {
      pQ.pN = paramBoolean.booleanValue();
      dp.e(pQ).a(pQ.lL);
    }
    while (dp.d(pQ) <= 0L) {
      return;
    }
    if (ev.p(2)) {
      ev.z("Ad not detected, scheduling another run.");
    }
    dp.g(pQ).postDelayed(pQ, dp.f(pQ));
  }
  
  protected final void onPreExecute()
  {
    try
    {
      pP = Bitmap.createBitmap(dp.a(pQ), dp.b(pQ), Bitmap.Config.ARGB_8888);
      pO.setVisibility(0);
      pO.measure(View.MeasureSpec.makeMeasureSpec(dp.a(pQ), 0), View.MeasureSpec.makeMeasureSpec(dp.b(pQ), 0));
      pO.layout(0, 0, dp.a(pQ), dp.b(pQ));
      Canvas localCanvas = new Canvas(pP);
      pO.draw(localCanvas);
      pO.invalidate();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */