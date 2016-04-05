package org.codehaus.jackson.map.deser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.map.deser.impl.ValueInjector;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BeanDeserializerBuilder
{
  protected SettableAnyProperty _anySetter;
  protected HashMap<String, SettableBeanProperty> _backRefProperties;
  protected final BasicBeanDescription _beanDesc;
  protected HashSet<String> _ignorableProps;
  protected boolean _ignoreAllUnknown;
  protected List<ValueInjector> _injectables;
  protected final HashMap<String, SettableBeanProperty> _properties = new LinkedHashMap();
  protected ValueInstantiator _valueInstantiator;
  
  protected BeanDeserializerBuilder(BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    _beanDesc = _beanDesc;
    _anySetter = _anySetter;
    _ignoreAllUnknown = _ignoreAllUnknown;
    _properties.putAll(_properties);
    _backRefProperties = _copy(_backRefProperties);
    _ignorableProps = _ignorableProps;
    _valueInstantiator = _valueInstantiator;
  }
  
  public BeanDeserializerBuilder(BasicBeanDescription paramBasicBeanDescription)
  {
    _beanDesc = paramBasicBeanDescription;
  }
  
  private static HashMap<String, SettableBeanProperty> _copy(HashMap<String, SettableBeanProperty> paramHashMap)
  {
    if (paramHashMap == null) {
      return null;
    }
    return new HashMap(paramHashMap);
  }
  
  public void addBackReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty)
  {
    if (_backRefProperties == null) {
      _backRefProperties = new HashMap(4);
    }
    _backRefProperties.put(paramString, paramSettableBeanProperty);
    if (_properties != null) {
      _properties.remove(paramSettableBeanProperty.getName());
    }
  }
  
  public void addCreatorProperty(BeanPropertyDefinition paramBeanPropertyDefinition) {}
  
  public void addIgnorable(String paramString)
  {
    if (_ignorableProps == null) {
      _ignorableProps = new HashSet();
    }
    _ignorableProps.add(paramString);
  }
  
  public void addInjectable(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, Object paramObject)
  {
    if (_injectables == null) {
      _injectables = new ArrayList();
    }
    _injectables.add(new ValueInjector(paramString, paramJavaType, paramAnnotations, paramAnnotatedMember, paramObject));
  }
  
  public void addOrReplaceProperty(SettableBeanProperty paramSettableBeanProperty, boolean paramBoolean)
  {
    _properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
  }
  
  public void addProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)_properties.put(paramSettableBeanProperty.getName(), paramSettableBeanProperty);
    if ((localSettableBeanProperty != null) && (localSettableBeanProperty != paramSettableBeanProperty)) {
      throw new IllegalArgumentException("Duplicate property '" + paramSettableBeanProperty.getName() + "' for " + _beanDesc.getType());
    }
  }
  
  public JsonDeserializer<?> build(BeanProperty paramBeanProperty)
  {
    BeanPropertyMap localBeanPropertyMap = new BeanPropertyMap(_properties.values());
    localBeanPropertyMap.assignIndexes();
    return new BeanDeserializer(_beanDesc, paramBeanProperty, _valueInstantiator, localBeanPropertyMap, _backRefProperties, _ignorableProps, _ignoreAllUnknown, _anySetter, _injectables);
  }
  
  public Iterator<SettableBeanProperty> getProperties()
  {
    return _properties.values().iterator();
  }
  
  public ValueInstantiator getValueInstantiator()
  {
    return _valueInstantiator;
  }
  
  public boolean hasProperty(String paramString)
  {
    return _properties.containsKey(paramString);
  }
  
  public SettableBeanProperty removeProperty(String paramString)
  {
    return (SettableBeanProperty)_properties.remove(paramString);
  }
  
  public void setAnySetter(SettableAnyProperty paramSettableAnyProperty)
  {
    if ((_anySetter != null) && (paramSettableAnyProperty != null)) {
      throw new IllegalStateException("_anySetter already set to non-null");
    }
    _anySetter = paramSettableAnyProperty;
  }
  
  public void setIgnoreUnknownProperties(boolean paramBoolean)
  {
    _ignoreAllUnknown = paramBoolean;
  }
  
  public void setValueInstantiator(ValueInstantiator paramValueInstantiator)
  {
    _valueInstantiator = paramValueInstantiator;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.BeanDeserializerBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */