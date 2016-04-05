package com.inmobi.commons;

import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.internal.ApplicationFocusManager.FocusChangedListener;
import com.inmobi.commons.uid.UIDHelper;

final class InMobi$a
  implements ApplicationFocusManager.FocusChangedListener
{
  public final void onFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      UIDHelper.setAdvertisingId();
      AnalyticsEventsWrapper.getInstance().startSession(InMobi.a(), null);
      return;
    }
    AnalyticsEventsWrapper.getInstance().endSession(null);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.InMobi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */