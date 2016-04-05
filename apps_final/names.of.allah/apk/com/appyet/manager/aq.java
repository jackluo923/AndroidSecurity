package com.appyet.manager;

import com.appyet.d.d;
import com.appyet.f.a;
import com.google.analytics.tracking.android.MapBuilder;
import com.google.analytics.tracking.android.Tracker;

final class aq
  extends a<Void, Void, Void>
{
  String a;
  
  public aq(ap paramap, String paramString)
  {
    a = paramString;
  }
  
  private Void f()
  {
    try
    {
      if (b.a != null)
      {
        b.a.set("&cd", a);
        b.a.send(MapBuilder.createAppView().build());
      }
    }
    catch (Exception localException1)
    {
      try
      {
        for (;;)
        {
          if (b.b != null)
          {
            b.b.set("&cd", a);
            b.b.send(MapBuilder.createAppView().build());
          }
          return null;
          localException1 = localException1;
          d.a(localException1);
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          d.a(localException2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */