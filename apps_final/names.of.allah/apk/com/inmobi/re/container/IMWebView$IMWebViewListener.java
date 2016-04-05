package com.inmobi.re.container;

import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;

public abstract interface IMWebView$IMWebViewListener
{
  public abstract void onDismissAdScreen();
  
  public abstract void onError();
  
  public abstract void onExpand();
  
  public abstract void onExpandClose();
  
  public abstract void onIncentCompleted(Map<Object, Object> paramMap);
  
  public abstract void onLeaveApplication();
  
  public abstract void onResize(ResizeDimensions paramResizeDimensions);
  
  public abstract void onResizeClose();
  
  public abstract void onShowAdScreen();
  
  public abstract void onUserInteraction(Map<String, String> paramMap);
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.IMWebViewListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */