package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AutomaticCaptureConfig
{
  private boolean a = true;
  private boolean b = false;
  
  public boolean getAutoPurchaseCapture()
  {
    return b;
  }
  
  public boolean getAutoSessionCapture()
  {
    return a;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getBooleanFromMap(paramMap, "session");
    b = InternalSDKUtil.getBooleanFromMap(paramMap, "purchase");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.bootstrapper.AutomaticCaptureConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */