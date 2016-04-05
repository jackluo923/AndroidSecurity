package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<GamesMetadata.LoadGameSearchSuggestionsResult> yO;
  
  GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback(a.d<GamesMetadata.LoadGameSearchSuggestionsResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void l(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadGameSearchSuggestionsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameSearchSuggestionsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */