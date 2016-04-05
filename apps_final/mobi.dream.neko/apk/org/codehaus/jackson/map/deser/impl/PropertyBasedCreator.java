package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public final class PropertyBasedCreator
{
  protected Object[] _defaultValues;
  protected final HashMap<String, SettableBeanProperty> _properties;
  protected final SettableBeanProperty[] _propertiesWithInjectables;
  protected final int _propertyCount;
  protected final ValueInstantiator _valueInstantiator;
  
  public PropertyBasedCreator(ValueInstantiator paramValueInstantiator)
  {
    _valueInstantiator = paramValueInstantiator;
    _properties = new HashMap();
    Object localObject1 = null;
    SettableBeanProperty[] arrayOfSettableBeanProperty = paramValueInstantiator.getFromObjectArguments();
    paramValueInstantiator = null;
    int j = arrayOfSettableBeanProperty.length;
    _propertyCount = j;
    int i = 0;
    while (i < j)
    {
      SettableBeanProperty localSettableBeanProperty = arrayOfSettableBeanProperty[i];
      _properties.put(localSettableBeanProperty.getName(), localSettableBeanProperty);
      Object localObject2 = localObject1;
      if (localSettableBeanProperty.getType().isPrimitive())
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new Object[j];
        }
        localObject2[i] = ClassUtil.defaultValue(localSettableBeanProperty.getType().getRawClass());
      }
      Object localObject3 = paramValueInstantiator;
      if (localSettableBeanProperty.getInjectableValueId() != null)
      {
        localObject1 = paramValueInstantiator;
        if (paramValueInstantiator == null) {
          localObject1 = new SettableBeanProperty[j];
        }
        localObject1[i] = localSettableBeanProperty;
        localObject3 = localObject1;
      }
      i += 1;
      localObject1 = localObject2;
      paramValueInstantiator = (ValueInstantiator)localObject3;
    }
    _defaultValues = ((Object[])localObject1);
    _propertiesWithInjectables = paramValueInstantiator;
  }
  
  public void assignDeserializer(SettableBeanProperty paramSettableBeanProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    paramSettableBeanProperty = paramSettableBeanProperty.withValueDeserializer(paramJsonDeserializer);
    _properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
    paramJsonDeserializer = paramJsonDeserializer.getNullValue();
    if (paramJsonDeserializer != null)
    {
      if (_defaultValues == null) {
        _defaultValues = new Object[_properties.size()];
      }
      _defaultValues[paramSettableBeanProperty.getPropertyIndex()] = paramJsonDeserializer;
    }
  }
  
  public Object build(PropertyValueBuffer paramPropertyValueBuffer)
    throws IOException
  {
    Object localObject = _valueInstantiator.createFromObjectWith(paramPropertyValueBuffer.getParameters(_defaultValues));
    for (paramPropertyValueBuffer = paramPropertyValueBuffer.buffered(); paramPropertyValueBuffer != null; paramPropertyValueBuffer = next) {
      paramPropertyValueBuffer.assign(localObject);
    }
    return localObject;
  }
  
  public SettableBeanProperty findCreatorProperty(String paramString)
  {
    return (SettableBeanProperty)_properties.get(paramString);
  }
  
  public Collection<SettableBeanProperty> getCreatorProperties()
  {
    return _properties.values();
  }
  
  public PropertyValueBuffer startBuilding(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    paramJsonParser = new PropertyValueBuffer(paramJsonParser, paramDeserializationContext, _propertyCount);
    if (_propertiesWithInjectables != null) {
      paramJsonParser.inject(_propertiesWithInjectables);
    }
    return paramJsonParser;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyBasedCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */