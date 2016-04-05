package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.TreeSet;

class DefaultTypeAdapters$TreeSetCreator
  implements InstanceCreator<TreeSet<?>>
{
  private DefaultTypeAdapters$TreeSetCreator() {}
  
  DefaultTypeAdapters$TreeSetCreator(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object createInstance(Type paramType)
  {
    TreeSet localTreeSet = createInstance(paramType);
    return localTreeSet;
  }
  
  public TreeSet<?> createInstance(Type paramType)
  {
    TreeSet localTreeSet = new java/util/TreeSet;
    localTreeSet.<init>();
    return localTreeSet;
  }
  
  public String toString()
  {
    Object localObject = TreeSetCreator.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.TreeSetCreator
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */