import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public final class af
{
  private static final z a;
  private final Class b;
  private final Field c;
  private final Class d;
  private final boolean e;
  private final int f;
  private final String g;
  private Type h;
  private Collection i;
  
  static
  {
    bb localbb = new bb;
    int j = f();
    localbb.<init>(j);
    a = localbb;
  }
  
  af(Class<?> paramClass, Field paramField)
  {
    bm.a(paramClass);
    b = paramClass;
    Object localObject = paramField.getName();
    g = ((String)localObject);
    localObject = paramField.getType();
    d = ((Class)localObject);
    boolean bool = paramField.isSynthetic();
    e = bool;
    int j = paramField.getModifiers();
    f = j;
    c = paramField;
  }
  
  final Object a(Object paramObject)
    throws IllegalAccessException
  {
    Object localObject = c;
    localObject = ((Field)localObject).get(paramObject);
    return localObject;
  }
  
  public final String a()
  {
    String str = g;
    return str;
  }
  
  public final <T extends Annotation> T a(Class<T> paramClass)
  {
    Object localObject = d();
    localObject = ((Collection)localObject).iterator();
    Class localClass;
    do
    {
      boolean bool = ((Iterator)localObject).hasNext();
      if (!bool) {
        break;
      }
      this = ((Iterator)localObject).next();
      this = (Annotation)this;
      localClass = annotationType();
    } while (localClass != paramClass);
    for (localObject = this;; localObject = null) {
      return (T)localObject;
    }
  }
  
  public final boolean a(int paramInt)
  {
    int j = f;
    j &= paramInt;
    if (j != 0) {}
    for (j = 1;; j = 0) {
      return j;
    }
  }
  
  public final Type b()
  {
    Object localObject = h;
    if (localObject == null)
    {
      localObject = c;
      localObject = ((Field)localObject).getGenericType();
      h = ((Type)localObject);
    }
    localObject = h;
    return (Type)localObject;
  }
  
  public final Class<?> c()
  {
    Class localClass = d;
    return localClass;
  }
  
  public final Collection<Annotation> d()
  {
    Object localObject1 = i;
    if (localObject1 == null)
    {
      bj localbj = new bj;
      localObject1 = b;
      Object localObject2 = g;
      localbj.<init>(localObject1, localObject2);
      localObject1 = a;
      localObject1 = ((z)localObject1).a(localbj);
      localObject1 = (Collection)localObject1;
      i = ((Collection)localObject1);
      localObject1 = i;
      if (localObject1 == null)
      {
        localObject1 = c;
        localObject1 = ((Field)localObject1).getAnnotations();
        localObject1 = Arrays.asList((Object[])localObject1);
        localObject1 = Collections.unmodifiableCollection((Collection)localObject1);
        i = ((Collection)localObject1);
        localObject1 = a;
        localObject2 = i;
        ((z)localObject1).a(localbj, localObject2);
      }
    }
    localObject1 = i;
    return (Collection<Annotation>)localObject1;
  }
  
  final boolean e()
  {
    boolean bool = e;
    return bool;
  }
  
  private static int f()
  {
    localNumberFormatException2 = 2000;
    try
    {
      String str1 = "com.google.gson.annotation_cache_size_hint";
      int k = 2000;
      String str2 = String.valueOf(k);
      str1 = System.getProperty(str1, str2);
      j = Integer.parseInt(str1);
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      for (;;)
      {
        int j;
        localNumberFormatException1 = localNumberFormatException2;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     af
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */