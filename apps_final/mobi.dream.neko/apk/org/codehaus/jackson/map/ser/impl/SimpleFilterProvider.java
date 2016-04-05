package org.codehaus.jackson.map.ser.impl;

import java.util.HashMap;
import java.util.Map;
import org.codehaus.jackson.map.ser.BeanPropertyFilter;
import org.codehaus.jackson.map.ser.FilterProvider;

public class SimpleFilterProvider
  extends FilterProvider
{
  protected boolean _cfgFailOnUnknownId = true;
  protected BeanPropertyFilter _defaultFilter;
  protected final Map<String, BeanPropertyFilter> _filtersById;
  
  public SimpleFilterProvider()
  {
    this(new HashMap());
  }
  
  public SimpleFilterProvider(Map<String, BeanPropertyFilter> paramMap)
  {
    _filtersById = paramMap;
  }
  
  public SimpleFilterProvider addFilter(String paramString, BeanPropertyFilter paramBeanPropertyFilter)
  {
    _filtersById.put(paramString, paramBeanPropertyFilter);
    return this;
  }
  
  public BeanPropertyFilter findFilter(Object paramObject)
  {
    BeanPropertyFilter localBeanPropertyFilter2 = (BeanPropertyFilter)_filtersById.get(paramObject);
    BeanPropertyFilter localBeanPropertyFilter1 = localBeanPropertyFilter2;
    if (localBeanPropertyFilter2 == null)
    {
      localBeanPropertyFilter2 = _defaultFilter;
      localBeanPropertyFilter1 = localBeanPropertyFilter2;
      if (localBeanPropertyFilter2 == null)
      {
        localBeanPropertyFilter1 = localBeanPropertyFilter2;
        if (_cfgFailOnUnknownId) {
          throw new IllegalArgumentException("No filter configured with id '" + paramObject + "' (type " + paramObject.getClass().getName() + ")");
        }
      }
    }
    return localBeanPropertyFilter1;
  }
  
  public BeanPropertyFilter getDefaultFilter()
  {
    return _defaultFilter;
  }
  
  public BeanPropertyFilter removeFilter(String paramString)
  {
    return (BeanPropertyFilter)_filtersById.remove(paramString);
  }
  
  public SimpleFilterProvider setDefaultFilter(BeanPropertyFilter paramBeanPropertyFilter)
  {
    _defaultFilter = paramBeanPropertyFilter;
    return this;
  }
  
  public SimpleFilterProvider setFailOnUnknownId(boolean paramBoolean)
  {
    _cfgFailOnUnknownId = paramBoolean;
    return this;
  }
  
  public boolean willFailOnUnknownId()
  {
    return _cfgFailOnUnknownId;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SimpleFilterProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */