package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;
import java.util.Map;

public final class m
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;
  
  public m(Context paramContext)
  {
    paramContext = paramContext.getResources();
    if ((paramContext != null) && (paramContext.getConfiguration() != null) && (getConfigurationlocale != null)) {}
    for (paramContext = getConfigurationlocale;; paramContext = Locale.getDefault())
    {
      paramContext = x.a(paramContext);
      a = ((String)paramContext.get("error_initializing_player"));
      b = ((String)paramContext.get("get_youtube_app_title"));
      c = ((String)paramContext.get("get_youtube_app_text"));
      d = ((String)paramContext.get("get_youtube_app_action"));
      e = ((String)paramContext.get("enable_youtube_app_title"));
      f = ((String)paramContext.get("enable_youtube_app_text"));
      g = ((String)paramContext.get("enable_youtube_app_action"));
      h = ((String)paramContext.get("update_youtube_app_title"));
      i = ((String)paramContext.get("update_youtube_app_text"));
      j = ((String)paramContext.get("update_youtube_app_action"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */