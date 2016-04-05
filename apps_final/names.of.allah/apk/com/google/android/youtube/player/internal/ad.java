package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import com.google.android.youtube.player.YouTubeThumbnailLoader;
import com.google.android.youtube.player.YouTubeThumbnailView;

public final class ad
  extends ab
{
  public final YouTubeThumbnailLoader a(b paramb, YouTubeThumbnailView paramYouTubeThumbnailView)
  {
    return new p(paramb, paramYouTubeThumbnailView);
  }
  
  public final b a(Context paramContext, String paramString, t.a parama, t.b paramb)
  {
    return new o(paramContext, paramString, paramContext.getPackageName(), z.d(paramContext), parama, paramb);
  }
  
  public final d a(Activity paramActivity, b paramb)
  {
    return w.a(paramActivity, paramb.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */