package uk.co.senab.a.b;

import android.content.Context;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import uk.co.senab.a.b.b.a;
import uk.co.senab.a.b.b.b;
import uk.co.senab.a.b.b.c;
import uk.co.senab.a.b.b.d;

final class g
{
  private static final Class<?>[] a = new Class[0];
  private static final Class<?>[] b = new Class[0];
  private static final HashMap<Class, Class> c = new HashMap();
  
  static
  {
    a(a.a, a.class);
    a(b.a, b.class);
    a(d.a, d.class);
  }
  
  static <T> T a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = a(paramContext.getClassLoader().loadClass(paramString), a, new Object[0]);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.w("InstanceCreationUtils", "Cannot instantiate class: " + paramString, paramContext);
    }
    return null;
  }
  
  private static <T> T a(Class paramClass, Class[] paramArrayOfClass, Object... paramVarArgs)
  {
    try
    {
      paramArrayOfClass = paramClass.getConstructor(paramArrayOfClass).newInstance(paramVarArgs);
      return paramArrayOfClass;
    }
    catch (Exception paramArrayOfClass)
    {
      Log.w("InstanceCreationUtils", "Cannot instantiate class: " + paramClass.getName(), paramArrayOfClass);
    }
    return null;
  }
  
  static c a(View paramView)
  {
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Class)localEntry.getKey()).isInstance(paramView))
      {
        paramView.getContext();
        return (c)a((Class)localEntry.getValue(), a, new Object[0]);
      }
    }
    return null;
  }
  
  private static void a(Class[] paramArrayOfClass, Class<?> paramClass)
  {
    int i = 0;
    int j = paramArrayOfClass.length;
    while (i < j)
    {
      c.put(paramArrayOfClass[i], paramClass);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */