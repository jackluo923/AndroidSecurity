package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.HashSet;

class DefaultTypeAdapters$HashSetCreator
  implements InstanceCreator<HashSet<?>>
{
  private DefaultTypeAdapters$HashSetCreator() {}
  
  DefaultTypeAdapters$HashSetCreator(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object createInstance(Type paramType)
  {
    HashSet localHashSet = createInstance(paramType);
    return localHashSet;
  }
  
  public HashSet<?> createInstance(Type paramType)
  {
    HashSet localHashSet = new java/util/HashSet;
    localHashSet.<init>();
    return localHashSet;
  }
  
  public String toString()
  {
    Object localObject = HashSetCreator.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.HashSetCreator
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */