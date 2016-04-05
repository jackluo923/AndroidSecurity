package com.google.kagegamesgson;

final class ObjectNavigatorFactory
{
  private final FieldNamingStrategy2 fieldNamingPolicy;
  private final ExclusionStrategy strategy;
  
  public ObjectNavigatorFactory(ExclusionStrategy paramExclusionStrategy, FieldNamingStrategy2 paramFieldNamingStrategy2)
  {
    Preconditions.checkNotNull(paramFieldNamingStrategy2);
    Object localObject;
    if (paramExclusionStrategy == null)
    {
      localObject = new com/google/kagegamesgson/NullExclusionStrategy;
      ((NullExclusionStrategy)localObject).<init>();
    }
    for (;;)
    {
      strategy = ((ExclusionStrategy)localObject);
      fieldNamingPolicy = paramFieldNamingStrategy2;
      return;
      localObject = paramExclusionStrategy;
    }
  }
  
  public ObjectNavigator create(ObjectTypePair paramObjectTypePair)
  {
    ObjectNavigator localObjectNavigator = new com/google/kagegamesgson/ObjectNavigator;
    ExclusionStrategy localExclusionStrategy = strategy;
    localObjectNavigator.<init>(paramObjectTypePair, localExclusionStrategy);
    return localObjectNavigator;
  }
  
  FieldNamingStrategy2 getFieldNamingPolicy()
  {
    FieldNamingStrategy2 localFieldNamingStrategy2 = fieldNamingPolicy;
    return localFieldNamingStrategy2;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ObjectNavigatorFactory
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */