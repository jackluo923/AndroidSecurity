package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.Properties;

class DefaultTypeAdapters$PropertiesCreator
  implements InstanceCreator<Properties>
{
  private DefaultTypeAdapters$PropertiesCreator() {}
  
  DefaultTypeAdapters$PropertiesCreator(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object createInstance(Type paramType)
  {
    Properties localProperties = createInstance(paramType);
    return localProperties;
  }
  
  public Properties createInstance(Type paramType)
  {
    Properties localProperties = new java/util/Properties;
    localProperties.<init>();
    return localProperties;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.PropertiesCreator
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */