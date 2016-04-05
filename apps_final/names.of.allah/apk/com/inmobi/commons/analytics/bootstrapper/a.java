package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class a
  implements CacheController.Validator
{
  public final boolean validate(Map<String, Object> paramMap)
  {
    return AnalyticsInitializer.a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.bootstrapper.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */