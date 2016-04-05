package com.inmobi.monetization.internal;

import com.inmobi.monetization.internal.abstraction.IGetLtvpRuleRequestListener;
import com.inmobi.monetization.internal.abstraction.INativeAdController;
import com.inmobi.monetization.internal.abstraction.IServiceProvider;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ServiceProvider
  implements IServiceProvider
{
  private static ServiceProvider a;
  private ExecutorService b = Executors.newFixedThreadPool(15);
  
  public static ServiceProvider getInstance()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new ServiceProvider();
      }
      return a;
    }
    finally {}
  }
  
  public void getLtvpRule(GetLtvpRulesRequest paramGetLtvpRulesRequest, IGetLtvpRuleRequestListener paramIGetLtvpRuleRequestListener)
  {
    b.execute(new GetLtvpRuleRequestTask(paramGetLtvpRulesRequest, paramIGetLtvpRuleRequestListener));
  }
  
  public void getNativeAd(NativeAdRequest paramNativeAdRequest, INativeAdController paramINativeAdController)
  {
    b.execute(new NativeAdRequestTask(paramNativeAdRequest, paramINativeAdController));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.ServiceProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */