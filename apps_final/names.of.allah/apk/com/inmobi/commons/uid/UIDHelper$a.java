package com.inmobi.commons.uid;

import android.content.Context;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.lang.reflect.Method;

final class UIDHelper$a
  implements Runnable
{
  public final void run()
  {
    try
    {
      Object localObject2 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
      Object localObject1 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
      localObject2 = ((Class)localObject2).getDeclaredMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(null, new Object[] { InternalSDKUtil.getContext() });
      String str = (String)((Class)localObject1).getDeclaredMethod("getId", null).invoke(localObject2, null);
      UIDHelper.a().a(str);
      FileOperations.setPreferences(InternalSDKUtil.getContext(), "impref", "gpid", str);
      localObject1 = (Boolean)((Class)localObject1).getDeclaredMethod("isLimitAdTrackingEnabled", null).invoke(localObject2, null);
      UIDHelper.a().a(((Boolean)localObject1).booleanValue());
      FileOperations.setPreferences(InternalSDKUtil.getContext(), "impref", "limitadtrck", ((Boolean)localObject1).booleanValue());
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Exception getting advertiser id", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.uid.UIDHelper.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */