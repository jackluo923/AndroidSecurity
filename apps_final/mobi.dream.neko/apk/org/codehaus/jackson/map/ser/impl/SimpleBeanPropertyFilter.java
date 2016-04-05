package org.codehaus.jackson.map.ser.impl;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.BeanPropertyFilter;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;

public abstract class SimpleBeanPropertyFilter
  implements BeanPropertyFilter
{
  public static SimpleBeanPropertyFilter filterOutAllExcept(Set<String> paramSet)
  {
    return new FilterExceptFilter(paramSet);
  }
  
  public static SimpleBeanPropertyFilter filterOutAllExcept(String... paramVarArgs)
  {
    HashSet localHashSet = new HashSet(paramVarArgs.length);
    Collections.addAll(localHashSet, paramVarArgs);
    return new FilterExceptFilter(localHashSet);
  }
  
  public static SimpleBeanPropertyFilter serializeAllExcept(Set<String> paramSet)
  {
    return new SerializeExceptFilter(paramSet);
  }
  
  public static SimpleBeanPropertyFilter serializeAllExcept(String... paramVarArgs)
  {
    HashSet localHashSet = new HashSet(paramVarArgs.length);
    Collections.addAll(localHashSet, paramVarArgs);
    return new SerializeExceptFilter(localHashSet);
  }
  
  public static class FilterExceptFilter
    extends SimpleBeanPropertyFilter
  {
    protected final Set<String> _propertiesToInclude;
    
    public FilterExceptFilter(Set<String> paramSet)
    {
      _propertiesToInclude = paramSet;
    }
    
    public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter)
      throws Exception
    {
      if (_propertiesToInclude.contains(paramBeanPropertyWriter.getName())) {
        paramBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
  
  public static class SerializeExceptFilter
    extends SimpleBeanPropertyFilter
  {
    protected final Set<String> _propertiesToExclude;
    
    public SerializeExceptFilter(Set<String> paramSet)
    {
      _propertiesToExclude = paramSet;
    }
    
    public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter)
      throws Exception
    {
      if (!_propertiesToExclude.contains(paramBeanPropertyWriter.getName())) {
        paramBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SimpleBeanPropertyFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */