package org.codehaus.jackson.jaxrs;

import java.util.ArrayList;
import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.introspect.JacksonAnnotationIntrospector;
import org.codehaus.jackson.xc.JaxbAnnotationIntrospector;

public class MapperConfigurator
{
  protected Annotations[] _defaultAnnotationsToUse;
  protected ObjectMapper _defaultMapper;
  protected Class<? extends AnnotationIntrospector> _jaxbIntrospectorClass;
  protected ObjectMapper _mapper;
  
  public MapperConfigurator(ObjectMapper paramObjectMapper, Annotations[] paramArrayOfAnnotations)
  {
    _mapper = paramObjectMapper;
    _defaultAnnotationsToUse = paramArrayOfAnnotations;
  }
  
  protected AnnotationIntrospector _resolveIntrospector(Annotations paramAnnotations)
  {
    switch (paramAnnotations)
    {
    default: 
      throw new IllegalStateException();
    case ???: 
      return new JacksonAnnotationIntrospector();
    }
    try
    {
      if (_jaxbIntrospectorClass == null) {
        _jaxbIntrospectorClass = JaxbAnnotationIntrospector.class;
      }
      paramAnnotations = (AnnotationIntrospector)_jaxbIntrospectorClass.newInstance();
      return paramAnnotations;
    }
    catch (Exception paramAnnotations)
    {
      throw new IllegalStateException("Failed to instantiate JaxbAnnotationIntrospector: " + paramAnnotations.getMessage(), paramAnnotations);
    }
  }
  
  protected AnnotationIntrospector _resolveIntrospectors(Annotations[] paramArrayOfAnnotations)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfAnnotations.length;
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = paramArrayOfAnnotations[i];
      if (localObject != null) {
        localArrayList.add(_resolveIntrospector((Annotations)localObject));
      }
      i += 1;
    }
    if (localArrayList.size() == 0)
    {
      localObject = AnnotationIntrospector.nopInstance();
      return (AnnotationIntrospector)localObject;
    }
    paramArrayOfAnnotations = (AnnotationIntrospector)localArrayList.get(0);
    i = 1;
    j = localArrayList.size();
    for (;;)
    {
      localObject = paramArrayOfAnnotations;
      if (i >= j) {
        break;
      }
      paramArrayOfAnnotations = AnnotationIntrospector.pair(paramArrayOfAnnotations, (AnnotationIntrospector)localArrayList.get(i));
      i += 1;
    }
  }
  
  protected void _setAnnotations(ObjectMapper paramObjectMapper, Annotations[] paramArrayOfAnnotations)
  {
    if ((paramArrayOfAnnotations == null) || (paramArrayOfAnnotations.length == 0)) {}
    for (paramArrayOfAnnotations = AnnotationIntrospector.nopInstance();; paramArrayOfAnnotations = _resolveIntrospectors(paramArrayOfAnnotations))
    {
      paramObjectMapper.getDeserializationConfig().setAnnotationIntrospector(paramArrayOfAnnotations);
      paramObjectMapper.getSerializationConfig().setAnnotationIntrospector(paramArrayOfAnnotations);
      return;
    }
  }
  
  public void configure(JsonGenerator.Feature paramFeature, boolean paramBoolean)
  {
    try
    {
      mapper().configure(paramFeature, paramBoolean);
      return;
    }
    finally
    {
      paramFeature = finally;
      throw paramFeature;
    }
  }
  
  public void configure(JsonParser.Feature paramFeature, boolean paramBoolean)
  {
    try
    {
      mapper().configure(paramFeature, paramBoolean);
      return;
    }
    finally
    {
      paramFeature = finally;
      throw paramFeature;
    }
  }
  
  public void configure(DeserializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    try
    {
      mapper().configure(paramFeature, paramBoolean);
      return;
    }
    finally
    {
      paramFeature = finally;
      throw paramFeature;
    }
  }
  
  public void configure(SerializationConfig.Feature paramFeature, boolean paramBoolean)
  {
    try
    {
      mapper().configure(paramFeature, paramBoolean);
      return;
    }
    finally
    {
      paramFeature = finally;
      throw paramFeature;
    }
  }
  
  public ObjectMapper getConfiguredMapper()
  {
    try
    {
      ObjectMapper localObjectMapper = _mapper;
      return localObjectMapper;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public ObjectMapper getDefaultMapper()
  {
    try
    {
      if (_defaultMapper == null)
      {
        _defaultMapper = new ObjectMapper();
        _setAnnotations(_defaultMapper, _defaultAnnotationsToUse);
      }
      ObjectMapper localObjectMapper = _defaultMapper;
      return localObjectMapper;
    }
    finally {}
  }
  
  protected ObjectMapper mapper()
  {
    if (_mapper == null)
    {
      _mapper = new ObjectMapper();
      _setAnnotations(_mapper, _defaultAnnotationsToUse);
    }
    return _mapper;
  }
  
  public void setAnnotationsToUse(Annotations[] paramArrayOfAnnotations)
  {
    try
    {
      _setAnnotations(mapper(), paramArrayOfAnnotations);
      return;
    }
    finally
    {
      paramArrayOfAnnotations = finally;
      throw paramArrayOfAnnotations;
    }
  }
  
  public void setMapper(ObjectMapper paramObjectMapper)
  {
    try
    {
      _mapper = paramObjectMapper;
      return;
    }
    finally
    {
      paramObjectMapper = finally;
      throw paramObjectMapper;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.jaxrs.MapperConfigurator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */