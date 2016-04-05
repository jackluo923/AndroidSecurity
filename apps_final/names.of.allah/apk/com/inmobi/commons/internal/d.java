package com.inmobi.commons.internal;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class d
  implements CacheController.Validator
{
  public final boolean validate(Map<String, Object> paramMap)
  {
    return InternalSDKUtil.a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */