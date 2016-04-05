package org.codehaus.jackson.map;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public abstract class BeanDescription
{
  protected final JavaType _type;
  
  protected BeanDescription(JavaType paramJavaType)
  {
    _type = paramJavaType;
  }
  
  public abstract TypeBindings bindingsForBeanType();
  
  public abstract AnnotatedMethod findAnyGetter();
  
  public abstract AnnotatedMethod findAnySetter();
  
  public abstract AnnotatedConstructor findDefaultConstructor();
  
  @Deprecated
  public abstract LinkedHashMap<String, AnnotatedField> findDeserializableFields(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection);
  
  @Deprecated
  public abstract LinkedHashMap<String, AnnotatedMethod> findGetters(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection);
  
  public abstract Map<Object, AnnotatedMember> findInjectables();
  
  public abstract AnnotatedMethod findJsonValueMethod();
  
  public abstract List<BeanPropertyDefinition> findProperties();
  
  @Deprecated
  public abstract Map<String, AnnotatedField> findSerializableFields(VisibilityChecker<?> paramVisibilityChecker, Collection<String> paramCollection);
  
  @Deprecated
  public abstract LinkedHashMap<String, AnnotatedMethod> findSetters(VisibilityChecker<?> paramVisibilityChecker);
  
  public Class<?> getBeanClass()
  {
    return _type.getRawClass();
  }
  
  public abstract Annotations getClassAnnotations();
  
  public abstract AnnotatedClass getClassInfo();
  
  public abstract Set<String> getIgnoredPropertyNames();
  
  public JavaType getType()
  {
    return _type;
  }
  
  public abstract boolean hasKnownClassAnnotations();
  
  public abstract JavaType resolveType(Type paramType);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.BeanDescription
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */