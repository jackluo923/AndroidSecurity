package com.inmobi.commons.cache;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

class ProductCacheConfig$a
  implements RetryMechanism.RetryRunnable
{
  ProductCacheConfig$a(ProductCacheConfig paramProductCacheConfig) {}
  
  public void completed()
  {
    ProductCacheConfig.b(a).set(false);
  }
  
  public void run()
  {
    try
    {
      if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
      {
        ProductCacheConfig.a(a);
        return;
      }
      throw new IOException("Network unavailable");
    }
    catch (Exception localException)
    {
      throw localException;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.ProductCacheConfig.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */