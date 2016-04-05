package com.google.kagegamesgson;

import com.google.kagegamesgson.annotations.Expose;

final class ExposeAnnotationDeserializationExclusionStrategy
  implements ExclusionStrategy
{
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Class localClass2 = 1;
    Class localClass1 = Expose.class;
    Object localObject = paramFieldAttributes.getAnnotation(localClass1);
    localObject = (Expose)localObject;
    if (localObject == null) {
      localClass1 = localClass2;
    }
    for (;;)
    {
      return localClass1;
      boolean bool = ((Expose)localObject).deserialize();
      if (!bool) {
        bool = localClass2;
      } else {
        bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ExposeAnnotationDeserializationExclusionStrategy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */