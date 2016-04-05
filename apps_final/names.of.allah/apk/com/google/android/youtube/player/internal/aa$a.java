package com.google.android.youtube.player.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class aa$a
  implements LayoutInflater.Factory
{
  private final ClassLoader a;
  
  public aa$a(ClassLoader paramClassLoader)
  {
    a = ((ClassLoader)ac.a(paramClassLoader, "remoteClassLoader cannot be null"));
  }
  
  public final View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    try
    {
      paramString = (View)a.loadClass(paramString).asSubclass(View.class).getConstructor(aa.a()).newInstance(new Object[] { paramContext, paramAttributeSet });
      return paramString;
    }
    catch (NoClassDefFoundError paramString)
    {
      return null;
    }
    catch (ClassNotFoundException paramString)
    {
      return null;
    }
    catch (NoSuchMethodException paramString)
    {
      return null;
    }
    catch (IllegalArgumentException paramString)
    {
      return null;
    }
    catch (InstantiationException paramString)
    {
      return null;
    }
    catch (IllegalAccessException paramString)
    {
      return null;
    }
    catch (InvocationTargetException paramString) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.aa.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */