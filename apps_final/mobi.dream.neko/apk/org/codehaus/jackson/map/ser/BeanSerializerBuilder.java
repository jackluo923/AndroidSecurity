package org.codehaus.jackson.map.ser;

import java.util.List;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;

public class BeanSerializerBuilder
{
  private static final BeanPropertyWriter[] NO_PROPERTIES = new BeanPropertyWriter[0];
  protected AnyGetterWriter _anyGetter;
  protected final BasicBeanDescription _beanDesc;
  protected Object _filterId;
  protected BeanPropertyWriter[] _filteredProperties;
  protected List<BeanPropertyWriter> _properties;
  
  public BeanSerializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    _beanDesc = paramBasicBeanDescription;
  }
  
  protected BeanSerializerBuilder(BeanSerializerBuilder paramBeanSerializerBuilder)
  {
    _beanDesc = _beanDesc;
    _properties = _properties;
    _filteredProperties = _filteredProperties;
    _anyGetter = _anyGetter;
    _filterId = _filterId;
  }
  
  public JsonSerializer<?> build()
  {
    if ((_properties == null) || (_properties.isEmpty())) {
      if (_anyGetter == null) {
        return null;
      }
    }
    for (BeanPropertyWriter[] arrayOfBeanPropertyWriter = NO_PROPERTIES;; arrayOfBeanPropertyWriter = (BeanPropertyWriter[])_properties.toArray(new BeanPropertyWriter[_properties.size()])) {
      return new BeanSerializer(_beanDesc.getType(), arrayOfBeanPropertyWriter, _filteredProperties, _anyGetter, _filterId);
    }
  }
  
  public BeanSerializer createDummy()
  {
    return BeanSerializer.createDummy(_beanDesc.getBeanClass());
  }
  
  public BasicBeanDescription getBeanDescription()
  {
    return _beanDesc;
  }
  
  public BeanPropertyWriter[] getFilteredProperties()
  {
    return _filteredProperties;
  }
  
  public List<BeanPropertyWriter> getProperties()
  {
    return _properties;
  }
  
  public boolean hasProperties()
  {
    return (_properties != null) && (_properties.size() > 0);
  }
  
  public void setAnyGetter(AnyGetterWriter paramAnyGetterWriter)
  {
    _anyGetter = paramAnyGetterWriter;
  }
  
  public void setFilterId(Object paramObject)
  {
    _filterId = paramObject;
  }
  
  public void setFilteredProperties(BeanPropertyWriter[] paramArrayOfBeanPropertyWriter)
  {
    _filteredProperties = paramArrayOfBeanPropertyWriter;
  }
  
  public void setProperties(List<BeanPropertyWriter> paramList)
  {
    _properties = paramList;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */