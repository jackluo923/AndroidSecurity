package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class b
  implements CacheController.Validator
{
  public final boolean validate(Map<String, Object> paramMap)
  {
    return PkInitilaizer.a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */