package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.AttributeSet;
import android.view.LayoutInflater;

public final class aa
  extends y
{
  private static final Class<?>[] a = { Context.class, AttributeSet.class };
  private final Resources b;
  private final LayoutInflater c;
  private final Resources.Theme d;
  
  public aa(Activity paramActivity, Resources paramResources, ClassLoader paramClassLoader, int paramInt)
  {
    super(paramActivity);
    b = ((Resources)ac.a(paramResources, "resources cannot be null"));
    paramActivity = ((LayoutInflater)super.getSystemService("layout_inflater")).cloneInContext(this);
    paramActivity.setFactory(new aa.a(paramClassLoader));
    c = paramActivity;
    d = paramResources.newTheme();
    d.applyStyle(paramInt, false);
  }
  
  public final Context getApplicationContext()
  {
    return super.getApplicationContext();
  }
  
  public final Context getBaseContext()
  {
    return super.getBaseContext();
  }
  
  public final Resources getResources()
  {
    return b;
  }
  
  public final Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString)) {
      return c;
    }
    return super.getSystemService(paramString);
  }
  
  public final Resources.Theme getTheme()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */