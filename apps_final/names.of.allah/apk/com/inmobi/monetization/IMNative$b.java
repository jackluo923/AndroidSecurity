package com.inmobi.monetization;

import android.util.Log;
import android.view.ViewGroup;
import com.inmobi.monetization.internal.TrackerView;

class IMNative$b
  implements Runnable
{
  IMNative$b(IMNative paramIMNative, ViewGroup paramViewGroup) {}
  
  public void run()
  {
    try
    {
      b.a = new TrackerView(a.getContext(), IMNative.a(b), IMNative.b(b));
      a.addView(b.a);
      return;
    }
    catch (Exception localException)
    {
      Log.e("[InMobi]-[Monetization]", "Failed to attach the view");
      IMNative.a(b, IMNative.a.f);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMNative.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */