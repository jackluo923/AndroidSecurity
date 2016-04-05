package org.codehaus.jackson.map.ser;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion;
import org.codehaus.jackson.map.annotate.JsonSerialize.Typing;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.Comparators;
import org.codehaus.jackson.type.JavaType;

public class PropertyBuilder
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final BasicBeanDescription _beanDesc;
  protected final SerializationConfig _config;
  protected Object _defaultBean;
  protected final JsonSerialize.Inclusion _outputProps;
  
  public PropertyBuilder(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription)
  {
    _config = paramSerializationConfig;
    _beanDesc = paramBasicBeanDescription;
    _outputProps = paramBasicBeanDescription.findSerializationInclusion(paramSerializationConfig.getSerializationInclusion());
    _annotationIntrospector = _config.getAnnotationIntrospector();
  }
  
  protected Object _throwWrapped(Exception paramException, String paramString, Object paramObject)
  {
    while (paramException.getCause() != null) {
      paramException = paramException.getCause();
    }
    if ((paramException instanceof Error)) {
      throw ((Error)paramException);
    }
    if ((paramException instanceof RuntimeException)) {
      throw ((RuntimeException)paramException);
    }
    throw new IllegalArgumentException("Failed to get property '" + paramString + "' of default " + paramObject.getClass().getName() + " instance");
  }
  
  protected BeanPropertyWriter buildWriter(String paramString, JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer1, TypeSerializer paramTypeSerializer2, AnnotatedMember paramAnnotatedMember, boolean paramBoolean)
  {
    Method localMethod;
    if ((paramAnnotatedMember instanceof AnnotatedField)) {
      localMethod = null;
    }
    for (Field localField = ((AnnotatedField)paramAnnotatedMember).getAnnotated();; localField = null)
    {
      localObject2 = findSerializationType(paramAnnotatedMember, paramBoolean, paramJavaType);
      localObject1 = localObject2;
      if (paramTypeSerializer2 == null) {
        break label149;
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = paramJavaType;
      }
      if (((JavaType)localObject1).getContentType() != null) {
        break;
      }
      throw new IllegalStateException("Problem trying to create BeanPropertyWriter for property '" + paramString + "' (of type " + _beanDesc.getType() + "); serialization type " + localObject1 + " has no content");
      localMethod = ((AnnotatedMethod)paramAnnotatedMember).getAnnotated();
    }
    Object localObject1 = ((JavaType)localObject1).withContentTypeHandler(paramTypeSerializer2);
    ((JavaType)localObject1).getContentType();
    label149:
    Object localObject2 = null;
    boolean bool1 = false;
    boolean bool2 = false;
    JsonSerialize.Inclusion localInclusion = _annotationIntrospector.findSerializationInclusion(paramAnnotatedMember, _outputProps);
    paramBoolean = bool2;
    paramTypeSerializer2 = (TypeSerializer)localObject2;
    if (localInclusion != null) {
      switch (localInclusion)
      {
      default: 
        paramTypeSerializer2 = (TypeSerializer)localObject2;
        paramBoolean = bool2;
      }
    }
    for (;;)
    {
      paramJavaType = new BeanPropertyWriter(paramAnnotatedMember, _beanDesc.getClassAnnotations(), paramString, paramJavaType, paramJsonSerializer, paramTypeSerializer1, (JavaType)localObject1, localMethod, localField, paramBoolean, paramTypeSerializer2);
      paramJsonSerializer = _annotationIntrospector.shouldUnwrapProperty(paramAnnotatedMember);
      paramString = paramJavaType;
      if (paramJsonSerializer != null)
      {
        paramString = paramJavaType;
        if (paramJsonSerializer.booleanValue()) {
          paramString = paramJavaType.unwrappingWriter();
        }
      }
      return paramString;
      localObject2 = getDefaultValue(paramString, localMethod, localField);
      if (localObject2 == null)
      {
        paramBoolean = true;
        paramTypeSerializer2 = (TypeSerializer)localObject2;
      }
      else
      {
        paramBoolean = bool2;
        paramTypeSerializer2 = (TypeSerializer)localObject2;
        if (localObject2.getClass().isArray())
        {
          paramTypeSerializer2 = Comparators.getArrayComparator(localObject2);
          paramBoolean = bool2;
          continue;
          paramBoolean = true;
          paramTypeSerializer2 = getEmptyValueChecker(paramString, paramJavaType);
          continue;
          bool1 = true;
          paramBoolean = bool1;
          paramTypeSerializer2 = (TypeSerializer)localObject2;
          if (paramJavaType.isContainerType())
          {
            paramTypeSerializer2 = getContainerValueChecker(paramString, paramJavaType);
            paramBoolean = bool1;
          }
        }
      }
    }
  }
  
  protected JavaType findSerializationType(Annotated paramAnnotated, boolean paramBoolean, JavaType paramJavaType)
  {
    Object localObject2 = _annotationIntrospector.findSerializationType(paramAnnotated);
    Object localObject1 = paramJavaType;
    if (localObject2 != null)
    {
      localObject1 = paramJavaType.getRawClass();
      if (((Class)localObject2).isAssignableFrom((Class)localObject1))
      {
        localObject1 = paramJavaType.widenBy((Class)localObject2);
        paramBoolean = true;
      }
    }
    else
    {
      localObject2 = BeanSerializerFactory.modifySecondaryTypesByAnnotation(_config, paramAnnotated, (JavaType)localObject1);
      paramJavaType = (JavaType)localObject1;
      if (localObject2 != localObject1)
      {
        paramBoolean = true;
        paramJavaType = (JavaType)localObject2;
      }
      bool = paramBoolean;
      if (!paramBoolean)
      {
        paramAnnotated = _annotationIntrospector.findSerializationTyping(paramAnnotated);
        bool = paramBoolean;
        if (paramAnnotated != null) {
          if (paramAnnotated != JsonSerialize.Typing.STATIC) {
            break label192;
          }
        }
      }
    }
    label192:
    for (boolean bool = true;; bool = false)
    {
      if (!bool) {
        break label198;
      }
      return paramJavaType;
      if (!((Class)localObject1).isAssignableFrom((Class)localObject2)) {
        throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + paramAnnotated.getName() + "': class " + ((Class)localObject2).getName() + " not a super-type of (declared) class " + ((Class)localObject1).getName());
      }
      localObject1 = _config.constructSpecializedType(paramJavaType, (Class)localObject2);
      break;
    }
    label198:
    return null;
  }
  
  public Annotations getClassAnnotations()
  {
    return _beanDesc.getClassAnnotations();
  }
  
  protected Object getContainerValueChecker(String paramString, JavaType paramJavaType)
  {
    if (!_config.isEnabled(SerializationConfig.Feature.WRITE_EMPTY_JSON_ARRAYS))
    {
      if (paramJavaType.isArrayType()) {
        return new EmptyArrayChecker();
      }
      if (Collection.class.isAssignableFrom(paramJavaType.getRawClass())) {
        return new EmptyCollectionChecker();
      }
    }
    return null;
  }
  
  protected Object getDefaultBean()
  {
    if (_defaultBean == null)
    {
      _defaultBean = _beanDesc.instantiateBean(_config.isEnabled(SerializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS));
      if (_defaultBean == null)
      {
        Class localClass = _beanDesc.getClassInfo().getAnnotated();
        throw new IllegalArgumentException("Class " + localClass.getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
      }
    }
    return _defaultBean;
  }
  
  protected Object getDefaultValue(String paramString, Method paramMethod, Field paramField)
  {
    Object localObject = getDefaultBean();
    if (paramMethod != null) {}
    try
    {
      return paramMethod.invoke(localObject, new Object[0]);
    }
    catch (Exception paramMethod) {}
    paramMethod = paramField.get(localObject);
    return paramMethod;
    return _throwWrapped(paramMethod, paramString, localObject);
  }
  
  protected Object getEmptyValueChecker(String paramString, JavaType paramJavaType)
  {
    paramString = paramJavaType.getRawClass();
    if (paramString == String.class) {
      return new EmptyStringChecker();
    }
    if (paramJavaType.isArrayType()) {
      return new EmptyArrayChecker();
    }
    if (Collection.class.isAssignableFrom(paramString)) {
      return new EmptyCollectionChecker();
    }
    if (Map.class.isAssignableFrom(paramString)) {
      return new EmptyMapChecker();
    }
    return null;
  }
  
  public static class EmptyArrayChecker
  {
    public boolean equals(Object paramObject)
    {
      return (paramObject == null) || (Array.getLength(paramObject) == 0);
    }
  }
  
  public static class EmptyCollectionChecker
  {
    public boolean equals(Object paramObject)
    {
      return (paramObject == null) || (((Collection)paramObject).size() == 0);
    }
  }
  
  public static class EmptyMapChecker
  {
    public boolean equals(Object paramObject)
    {
      return (paramObject == null) || (((Map)paramObject).size() == 0);
    }
  }
  
  public static class EmptyStringChecker
  {
    public boolean equals(Object paramObject)
    {
      return (paramObject == null) || (((String)paramObject).length() == 0);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.PropertyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */