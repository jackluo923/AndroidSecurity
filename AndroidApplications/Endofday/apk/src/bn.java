import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class bn
{
  public static final Map a;
  public static final Map b;
  
  static
  {
    int i = 16;
    Object localObject = new java/util/HashMap;
    ((HashMap)localObject).<init>(i);
    HashMap localHashMap = new java/util/HashMap;
    localHashMap.<init>(i);
    Class localClass1 = Boolean.TYPE;
    Class localClass2 = Boolean.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Byte.TYPE;
    localClass2 = Byte.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Character.TYPE;
    localClass2 = Character.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Double.TYPE;
    localClass2 = Double.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Float.TYPE;
    localClass2 = Float.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Integer.TYPE;
    localClass2 = Integer.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Long.TYPE;
    localClass2 = Long.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Short.TYPE;
    localClass2 = Short.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localClass1 = Void.TYPE;
    localClass2 = Void.class;
    a((Map)localObject, localHashMap, localClass1, localClass2);
    localObject = Collections.unmodifiableMap((Map)localObject);
    a = (Map)localObject;
    localObject = Collections.unmodifiableMap(localHashMap);
    b = (Map)localObject;
  }
  
  public static <T> Class<T> a(Class<T> paramClass)
  {
    bm.a(paramClass);
    Object localObject = b;
    localObject = ((Map)localObject).get(paramClass);
    localObject = (Class)localObject;
    if (localObject == null) {
      localObject = paramClass;
    }
    return (Class<T>)localObject;
  }
  
  private static void a(Map<Class<?>, Class<?>> paramMap1, Map<Class<?>, Class<?>> paramMap2, Class<?> paramClass1, Class<?> paramClass2)
  {
    paramMap1.put(paramClass1, paramClass2);
    paramMap2.put(paramClass2, paramClass1);
  }
}

/* Location:
 * Qualified Name:     bn
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */