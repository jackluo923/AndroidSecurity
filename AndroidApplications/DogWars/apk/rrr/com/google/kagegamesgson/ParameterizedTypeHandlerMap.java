package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

final class ParameterizedTypeHandlerMap<T>
{
  private static final Logger logger;
  private final Map map;
  private boolean modifiable;
  private final List typeHierarchyList;
  
  static
  {
    Object localObject = ParameterizedTypeHandlerMap.class;
    localObject = ((Class)localObject).getName();
    localObject = Logger.getLogger((String)localObject);
    logger = (Logger)localObject;
  }
  
  ParameterizedTypeHandlerMap()
  {
    Object localObject = new java/util/HashMap;
    ((HashMap)localObject).<init>();
    map = ((Map)localObject);
    localObject = new java/util/ArrayList;
    ((ArrayList)localObject).<init>();
    typeHierarchyList = ((List)localObject);
    boolean bool = true;
    modifiable = bool;
  }
  
  public ParameterizedTypeHandlerMap<T> copyOf()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap;
    try
    {
      localParameterizedTypeHandlerMap = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
      localParameterizedTypeHandlerMap.<init>();
      Object localObject3 = map;
      localObject3 = ((Map)localObject3).entrySet();
      localIterator = ((Set)localObject3).iterator();
      for (;;)
      {
        boolean bool1 = localIterator.hasNext();
        if (!bool1) {
          break;
        }
        Object localObject2 = localIterator.next();
        localObject2 = (Map.Entry)localObject2;
        Object localObject4 = ((Map.Entry)localObject2).getKey();
        localObject4 = (Type)localObject4;
        Object localObject6 = ((Map.Entry)localObject2).getValue();
        localParameterizedTypeHandlerMap.register((Type)localObject4, localObject6);
      }
      localList = typeHierarchyList;
    }
    finally {}
    List localList;
    Iterator localIterator = localList.iterator();
    for (;;)
    {
      boolean bool2 = localIterator.hasNext();
      if (!bool2) {
        break;
      }
      Object localObject1 = localIterator.next();
      localObject1 = (Pair)localObject1;
      localParameterizedTypeHandlerMap.registerForTypeHierarchy((Pair)localObject1);
    }
    return localParameterizedTypeHandlerMap;
  }
  
  public T getHandlerFor(Type paramType)
  {
    try
    {
      Map localMap = map;
      Object localObject1 = localMap.get(paramType);
      if (localObject1 == null)
      {
        Class localClass = TypeUtils.toRawClass(paramType);
        if (localClass != paramType) {
          localObject1 = getHandlerFor(localClass);
        }
        if (localObject1 == null) {
          localObject1 = getHandlerForTypeHierarchy(localClass);
        }
      }
      return (T)localObject1;
    }
    finally {}
  }
  
  private T getHandlerForTypeHierarchy(Class<?> paramClass)
  {
    List localList = typeHierarchyList;
    Iterator localIterator = localList.iterator();
    boolean bool;
    Object localObject1;
    do
    {
      bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      localObject1 = localIterator.next();
      localObject1 = (Pair)localObject1;
      this = first;
      this = (Class)this;
      bool = isAssignableFrom(paramClass);
    } while (!bool);
    for (Object localObject2 = second;; localObject2 = null) {
      return (T)localObject2;
    }
  }
  
  private int getIndexOfAnOverriddenHandler(Class<?> paramClass)
  {
    List localList = typeHierarchyList;
    int j = localList.size();
    int n = 1;
    int i = j - n;
    if (i >= 0)
    {
      Object localObject2 = typeHierarchyList;
      Object localObject1 = ((List)localObject2).get(i);
      localObject1 = (Pair)localObject1;
      localObject2 = first;
      localObject2 = (Class)localObject2;
      k = paramClass.isAssignableFrom((Class)localObject2);
      if (k == 0) {}
    }
    int m;
    for (int k = i;; m = -1)
    {
      return k;
      i += -1;
      break;
    }
  }
  
  /* Error */
  private int getIndexOfSpecificHandlerForTypeHierarchy(Class<?> paramClass)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 214	com/google/kagegamesgson/ParameterizedTypeHandlerMap:typeHierarchyList	Ljava/util/List;
    //   7: astore_3
    //   8: aload_3
    //   9: invokeinterface 109 1 0
    //   14: istore_3
    //   15: iconst_1
    //   16: istore 4
    //   18: iload_3
    //   19: iload 4
    //   21: isub
    //   22: istore_2
    //   23: iload_2
    //   24: iflt +49 -> 73
    //   27: aload_0
    //   28: getfield 214	com/google/kagegamesgson/ParameterizedTypeHandlerMap:typeHierarchyList	Ljava/util/List;
    //   31: astore_3
    //   32: aload_3
    //   33: iload_2
    //   34: invokeinterface 27 2 0
    //   39: astore_3
    //   40: aload_3
    //   41: checkcast 147	com/google/kagegamesgson/Pair
    //   44: astore_3
    //   45: aload_3
    //   46: getfield 211	com/google/kagegamesgson/Pair:first	Ljava/lang/Object;
    //   49: astore_3
    //   50: aload_1
    //   51: aload_3
    //   52: invokevirtual 97	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   55: istore_3
    //   56: iload_3
    //   57: ifeq +9 -> 66
    //   60: iload_2
    //   61: istore_3
    //   62: aload_0
    //   63: monitorexit
    //   64: iload_3
    //   65: ireturn
    //   66: iload_2
    //   67: iconst_m1
    //   68: iadd
    //   69: istore_2
    //   70: goto -47 -> 23
    //   73: iconst_m1
    //   74: istore_3
    //   75: goto -13 -> 62
    //   78: astore_3
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_3
    //   82: athrow
    //   83: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	ParameterizedTypeHandlerMap
    //   0	84	1	paramClass	Class<?>
    //   22	48	2	i	int
    //   7	2	3	localList	List
    //   14	8	3	j	int
    //   31	21	3	localObject1	Object
    //   55	10	3	k	int
    //   74	1	3	m	int
    //   78	4	3	localObject2	Object
    //   16	6	4	n	int
    // Exception table:
    //   from	to	target	type
    //   3	8	78	finally
    //   27	32	78	finally
    //   40	45	78	finally
    //   50	55	78	finally
  }
  
  public boolean hasSpecificHandlerFor(Type paramType)
  {
    try
    {
      Map localMap = map;
      boolean bool = localMap.containsKey(paramType);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void makeUnmodifiable()
  {
    boolean bool = false;
    try
    {
      modifiable = bool;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void register(Type paramType, T paramT)
  {
    Object localObject3;
    try
    {
      boolean bool1 = modifiable;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject3 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject3);
        throw localIllegalStateException;
      }
    }
    finally {}
    boolean bool2 = hasSpecificHandlerFor(paramType);
    if (bool2)
    {
      localObject2 = logger;
      localObject3 = Level.WARNING;
      String str = "Overriding the existing type handler for {0}";
      ((Logger)localObject2).log((Level)localObject3, str, paramType);
    }
    Object localObject2 = map;
    ((Map)localObject2).put(paramType, paramT);
  }
  
  public void registerForTypeHierarchy(Pair<Class<?>, T> paramPair)
  {
    Object localObject3;
    try
    {
      boolean bool = modifiable;
      if (!bool)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject3 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject3);
        throw localIllegalStateException;
      }
    }
    finally {}
    Object localObject2 = first;
    localObject2 = (Class)localObject2;
    int i = getIndexOfSpecificHandlerForTypeHierarchy((Class)localObject2);
    Object localObject4;
    if (i >= 0)
    {
      localObject2 = logger;
      localObject3 = Level.WARNING;
      localObject4 = "Overriding the existing type handler for {0}";
      Object localObject5 = first;
      ((Logger)localObject2).log((Level)localObject3, (String)localObject4, localObject5);
      localObject2 = typeHierarchyList;
      ((List)localObject2).remove(i);
    }
    localObject2 = first;
    localObject2 = (Class)localObject2;
    i = getIndexOfAnOverriddenHandler((Class)localObject2);
    if (i >= 0)
    {
      localObject3 = new java/lang/IllegalArgumentException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject4 = "The specified type handler for type ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
      localObject4 = first;
      localObject2 = ((StringBuilder)localObject2).append(localObject4);
      localObject4 = " hides the previously registered type hierarchy handler for ";
      localObject4 = ((StringBuilder)localObject2).append((String)localObject4);
      localObject2 = typeHierarchyList;
      localObject2 = ((List)localObject2).get(i);
      localObject2 = (Pair)localObject2;
      localObject2 = first;
      localObject2 = ((StringBuilder)localObject4).append(localObject2);
      localObject4 = ". Gson does not allow this.";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalArgumentException)localObject3).<init>((String)localObject2);
      throw ((Throwable)localObject3);
    }
    localObject2 = typeHierarchyList;
    int j = 0;
    ((List)localObject2).add(j, paramPair);
  }
  
  public void registerForTypeHierarchy(Class<?> paramClass, T paramT)
  {
    try
    {
      Pair localPair = new com/google/kagegamesgson/Pair;
      localPair.<init>(paramClass, paramT);
      registerForTypeHierarchy(localPair);
      return;
    }
    finally {}
  }
  
  public void registerIfAbsent(ParameterizedTypeHandlerMap<T> paramParameterizedTypeHandlerMap)
  {
    Object localObject7;
    try
    {
      boolean bool1 = modifiable;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localObject7 = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>((String)localObject7);
        throw localIllegalStateException;
      }
    }
    finally {}
    Object localObject4 = map;
    localObject4 = ((Map)localObject4).entrySet();
    Iterator localIterator = ((Set)localObject4).iterator();
    for (;;)
    {
      boolean bool2 = localIterator.hasNext();
      if (!bool2) {
        break;
      }
      Object localObject2 = localIterator.next();
      localObject2 = (Map.Entry)localObject2;
      Map localMap = map;
      localObject7 = ((Map.Entry)localObject2).getKey();
      boolean bool3 = localMap.containsKey(localObject7);
      if (!bool3)
      {
        localObject5 = ((Map.Entry)localObject2).getKey();
        localObject5 = (Type)localObject5;
        localObject7 = ((Map.Entry)localObject2).getValue();
        register((Type)localObject5, localObject7);
      }
    }
    Object localObject5 = typeHierarchyList;
    int k = ((List)localObject5).size();
    int m = 1;
    int i = k - m;
    while (i >= 0)
    {
      Object localObject6 = typeHierarchyList;
      Object localObject1 = ((List)localObject6).get(i);
      localObject1 = (Pair)localObject1;
      localObject6 = first;
      localObject6 = (Class)localObject6;
      int j = getIndexOfSpecificHandlerForTypeHierarchy((Class)localObject6);
      if (j < 0) {
        registerForTypeHierarchy((Pair)localObject1);
      }
      i += -1;
    }
  }
  
  public void registerIfAbsent(Type paramType, T paramT)
  {
    try
    {
      boolean bool1 = modifiable;
      if (!bool1)
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        String str = "Attempted to modify an unmodifiable map.";
        localIllegalStateException.<init>(str);
        throw localIllegalStateException;
      }
    }
    finally {}
    Map localMap = map;
    boolean bool2 = localMap.containsKey(paramType);
    if (!bool2) {
      register(paramType, paramT);
    }
  }
  
  public String toString()
  {
    char c2 = ':';
    char c1 = ',';
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    Object localObject3 = "{mapForTypeHierarchy:{";
    localStringBuilder.<init>((String)localObject3);
    int i = 1;
    localObject3 = typeHierarchyList;
    Iterator localIterator = ((List)localObject3).iterator();
    boolean bool1 = localIterator.hasNext();
    if (bool1)
    {
      Object localObject1 = localIterator.next();
      localObject1 = (Pair)localObject1;
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localObject4 = first;
        localObject4 = (Type)localObject4;
        localObject4 = typeToString((Type)localObject4);
        localObject4 = localStringBuilder.append((String)localObject4);
        ((StringBuilder)localObject4).append(c2);
        localObject4 = second;
        localStringBuilder.append(localObject4);
        break;
        localStringBuilder.append(c1);
      }
    }
    Object localObject4 = "},map:{";
    localStringBuilder.append((String)localObject4);
    i = 1;
    localObject4 = map;
    localObject4 = ((Map)localObject4).entrySet();
    localIterator = ((Set)localObject4).iterator();
    boolean bool2 = localIterator.hasNext();
    if (bool2)
    {
      Object localObject2 = localIterator.next();
      localObject2 = (Map.Entry)localObject2;
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localObject5 = ((Map.Entry)localObject2).getKey();
        localObject5 = (Type)localObject5;
        localObject5 = typeToString((Type)localObject5);
        localObject5 = localStringBuilder.append((String)localObject5);
        ((StringBuilder)localObject5).append(c2);
        localObject5 = ((Map.Entry)localObject2).getValue();
        localStringBuilder.append(localObject5);
        break;
        localStringBuilder.append(c1);
      }
    }
    Object localObject5 = "}";
    localStringBuilder.append((String)localObject5);
    localObject5 = localStringBuilder.toString();
    return (String)localObject5;
  }
  
  private String typeToString(Type paramType)
  {
    Object localObject = TypeUtils.toRawClass(paramType);
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ParameterizedTypeHandlerMap
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */