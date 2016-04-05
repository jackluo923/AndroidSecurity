package com.inmobi.commons.cache;

import com.inmobi.commons.internal.Log;
import java.util.Map;
import org.json.JSONException;

final class CacheController$b
  implements CacheController.Committer
{
  CacheController$b(String paramString) {}
  
  public final void onCommit()
  {
    try
    {
      ProductCacheConfig localProductCacheConfig = (ProductCacheConfig)CacheController.b().get(a);
      if (localProductCacheConfig == null) {
        return;
      }
      LocalCache.addToCache(a, localProductCacheConfig.toJSON());
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.internal("[InMobi]-4.4.1", "Unable to add json to persistent memory", localJSONException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.CacheController.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */