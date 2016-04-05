package com.inmobi.androidsdk.impl.imai;

import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.lang.ref.WeakReference;

final class IMAICore$a
  implements Runnable
{
  IMAICore$a(String paramString, boolean paramBoolean, WeakReference paramWeakReference) {}
  
  public final void run()
  {
    try
    {
      int i = Initializer.getConfigParams().getImai().getMaxRetry();
      ClickData localClickData = new ClickData(a, b, false, i);
      RequestResponseManager localRequestResponseManager = new RequestResponseManager();
      localRequestResponseManager.init();
      RequestResponseManager.mNetworkQueue.add(0, localClickData);
      localRequestResponseManager.processClick(InternalSDKUtil.getContext(), new IMAICore.a.a(this));
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception ping in background", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.imai.IMAICore.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */