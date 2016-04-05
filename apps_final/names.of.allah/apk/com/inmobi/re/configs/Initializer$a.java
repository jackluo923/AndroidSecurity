package com.inmobi.re.configs;

import com.inmobi.commons.cache.CacheController.Validator;
import java.util.Map;

final class Initializer$a
  implements CacheController.Validator
{
  public final boolean validate(Map<String, Object> paramMap)
  {
    return paramMap.get("data") != null;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.configs.Initializer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */