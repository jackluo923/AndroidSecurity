package com.inmobi.commons.internal;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

final class ApplicationFocusManager$a
  implements InvocationHandler
{
  private final Handler a = new ApplicationFocusManager.b(ApplicationFocusManager.a().getLooper());
  
  public final void a(Activity paramActivity)
  {
    a.sendEmptyMessageDelayed(1001, 3000L);
  }
  
  public final void b(Activity paramActivity)
  {
    a.removeMessages(1001);
    a.sendEmptyMessage(1002);
  }
  
  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null) {
      try
      {
        if (paramMethod.getName().equals("onActivityPaused")) {
          a((Activity)paramArrayOfObject[0]);
        } else if (paramMethod.getName().equals("onActivityResumed")) {
          b((Activity)paramArrayOfObject[0]);
        }
      }
      catch (Exception paramObject)
      {
        Log.internal("[InMobi]-4.4.1", "Unable to invoke method", (Throwable)paramObject);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ApplicationFocusManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */