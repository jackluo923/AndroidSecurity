package com.inmobi.commons.internal;

import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;

final class ThinICE$b
  implements ApplicationFocusManager.FocusChangedListener
{
  public final void onFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      IceDataCollector.start(InternalSDKUtil.getContext());
      return;
    }
    ThinICE.a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ThinICE.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */