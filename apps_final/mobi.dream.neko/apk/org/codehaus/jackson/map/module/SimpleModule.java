package org.codehaus.jackson.map.module;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.Module;
import org.codehaus.jackson.map.Module.SetupContext;
import org.codehaus.jackson.map.deser.ValueInstantiator;

public class SimpleModule
  extends Module
{
  protected SimpleAbstractTypeResolver _abstractTypes = null;
  protected SimpleDeserializers _deserializers = null;
  protected SimpleKeyDeserializers _keyDeserializers = null;
  protected SimpleSerializers _keySerializers = null;
  protected HashMap<Class<?>, Class<?>> _mixins = null;
  protected final String _name;
  protected SimpleSerializers _serializers = null;
  protected SimpleValueInstantiators _valueInstantiators = null;
  protected final Version _version;
  
  public SimpleModule(String paramString, Version paramVersion)
  {
    _name = paramString;
    _version = paramVersion;
  }
  
  public <T> SimpleModule addAbstractTypeMapping(Class<T> paramClass, Class<? extends T> paramClass1)
  {
    if (_abstractTypes == null) {
      _abstractTypes = new SimpleAbstractTypeResolver();
    }
    _abstractTypes = _abstractTypes.addMapping(paramClass, paramClass1);
    return this;
  }
  
  public <T> SimpleModule addDeserializer(Class<T> paramClass, JsonDeserializer<? extends T> paramJsonDeserializer)
  {
    if (_deserializers == null) {
      _deserializers = new SimpleDeserializers();
    }
    _deserializers.addDeserializer(paramClass, paramJsonDeserializer);
    return this;
  }
  
  public SimpleModule addKeyDeserializer(Class<?> paramClass, KeyDeserializer paramKeyDeserializer)
  {
    if (_keyDeserializers == null) {
      _keyDeserializers = new SimpleKeyDeserializers();
    }
    _keyDeserializers.addDeserializer(paramClass, paramKeyDeserializer);
    return this;
  }
  
  public <T> SimpleModule addKeySerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    if (_keySerializers == null) {
      _keySerializers = new SimpleSerializers();
    }
    _keySerializers.addSerializer(paramClass, paramJsonSerializer);
    return this;
  }
  
  public <T> SimpleModule addSerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    if (_serializers == null) {
      _serializers = new SimpleSerializers();
    }
    _serializers.addSerializer(paramClass, paramJsonSerializer);
    return this;
  }
  
  public SimpleModule addSerializer(JsonSerializer<?> paramJsonSerializer)
  {
    if (_serializers == null) {
      _serializers = new SimpleSerializers();
    }
    _serializers.addSerializer(paramJsonSerializer);
    return this;
  }
  
  public SimpleModule addValueInstantiator(Class<?> paramClass, ValueInstantiator paramValueInstantiator)
  {
    if (_valueInstantiators == null) {
      _valueInstantiators = new SimpleValueInstantiators();
    }
    _valueInstantiators = _valueInstantiators.addValueInstantiator(paramClass, paramValueInstantiator);
    return this;
  }
  
  public String getModuleName()
  {
    return _name;
  }
  
  public void setAbstractTypes(SimpleAbstractTypeResolver paramSimpleAbstractTypeResolver)
  {
    _abstractTypes = paramSimpleAbstractTypeResolver;
  }
  
  public void setDeserializers(SimpleDeserializers paramSimpleDeserializers)
  {
    _deserializers = paramSimpleDeserializers;
  }
  
  public void setKeyDeserializers(SimpleKeyDeserializers paramSimpleKeyDeserializers)
  {
    _keyDeserializers = paramSimpleKeyDeserializers;
  }
  
  public void setKeySerializers(SimpleSerializers paramSimpleSerializers)
  {
    _keySerializers = paramSimpleSerializers;
  }
  
  public SimpleModule setMixInAnnotation(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (_mixins == null) {
      _mixins = new HashMap();
    }
    _mixins.put(paramClass1, paramClass2);
    return this;
  }
  
  public void setSerializers(SimpleSerializers paramSimpleSerializers)
  {
    _serializers = paramSimpleSerializers;
  }
  
  public void setValueInstantiators(SimpleValueInstantiators paramSimpleValueInstantiators)
  {
    _valueInstantiators = paramSimpleValueInstantiators;
  }
  
  public void setupModule(Module.SetupContext paramSetupContext)
  {
    if (_serializers != null) {
      paramSetupContext.addSerializers(_serializers);
    }
    if (_deserializers != null) {
      paramSetupContext.addDeserializers(_deserializers);
    }
    if (_keySerializers != null) {
      paramSetupContext.addKeySerializers(_keySerializers);
    }
    if (_keyDeserializers != null) {
      paramSetupContext.addKeyDeserializers(_keyDeserializers);
    }
    if (_abstractTypes != null) {
      paramSetupContext.addAbstractTypeResolver(_abstractTypes);
    }
    if (_valueInstantiators != null) {
      paramSetupContext.addValueInstantiators(_valueInstantiators);
    }
    if (_mixins != null)
    {
      Iterator localIterator = _mixins.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramSetupContext.setMixInAnnotations((Class)localEntry.getKey(), (Class)localEntry.getValue());
      }
    }
  }
  
  public Version version()
  {
    return _version;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */