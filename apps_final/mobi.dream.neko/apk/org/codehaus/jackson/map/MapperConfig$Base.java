package org.codehaus.jackson.map;

import java.text.DateFormat;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.annotate.JsonMethod;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.type.TypeFactory;

public class MapperConfig$Base
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final ClassIntrospector<? extends BeanDescription> _classIntrospector;
  protected final DateFormat _dateFormat;
  protected final HandlerInstantiator _handlerInstantiator;
  protected final PropertyNamingStrategy _propertyNamingStrategy;
  protected final TypeFactory _typeFactory;
  protected final TypeResolverBuilder<?> _typeResolverBuilder;
  protected final VisibilityChecker<?> _visibilityChecker;
  
  public MapperConfig$Base(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, TypeResolverBuilder<?> paramTypeResolverBuilder, DateFormat paramDateFormat, HandlerInstantiator paramHandlerInstantiator)
  {
    _classIntrospector = paramClassIntrospector;
    _annotationIntrospector = paramAnnotationIntrospector;
    _visibilityChecker = paramVisibilityChecker;
    _propertyNamingStrategy = paramPropertyNamingStrategy;
    _typeFactory = paramTypeFactory;
    _typeResolverBuilder = paramTypeResolverBuilder;
    _dateFormat = paramDateFormat;
    _handlerInstantiator = paramHandlerInstantiator;
  }
  
  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return _annotationIntrospector;
  }
  
  public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
  {
    return _classIntrospector;
  }
  
  public DateFormat getDateFormat()
  {
    return _dateFormat;
  }
  
  public HandlerInstantiator getHandlerInstantiator()
  {
    return _handlerInstantiator;
  }
  
  public PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return _propertyNamingStrategy;
  }
  
  public TypeFactory getTypeFactory()
  {
    return _typeFactory;
  }
  
  public TypeResolverBuilder<?> getTypeResolverBuilder()
  {
    return _typeResolverBuilder;
  }
  
  public VisibilityChecker<?> getVisibilityChecker()
  {
    return _visibilityChecker;
  }
  
  public Base withAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return new Base(_classIntrospector, paramAnnotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withAppendedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return withAnnotationIntrospector(AnnotationIntrospector.Pair.create(_annotationIntrospector, paramAnnotationIntrospector));
  }
  
  public Base withClassIntrospector(ClassIntrospector<? extends BeanDescription> paramClassIntrospector)
  {
    return new Base(paramClassIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withDateFormat(DateFormat paramDateFormat)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, paramDateFormat, _handlerInstantiator);
  }
  
  public Base withHandlerInstantiator(HandlerInstantiator paramHandlerInstantiator)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, paramHandlerInstantiator);
  }
  
  public Base withInsertedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return withAnnotationIntrospector(AnnotationIntrospector.Pair.create(paramAnnotationIntrospector, _annotationIntrospector));
  }
  
  public Base withPropertyNamingStrategy(PropertyNamingStrategy paramPropertyNamingStrategy)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, paramPropertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withTypeFactory(TypeFactory paramTypeFactory)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, paramTypeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withTypeResolverBuilder(TypeResolverBuilder<?> paramTypeResolverBuilder)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, paramTypeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withVisibility(JsonMethod paramJsonMethod, JsonAutoDetect.Visibility paramVisibility)
  {
    return new Base(_classIntrospector, _annotationIntrospector, _visibilityChecker.withVisibility(paramJsonMethod, paramVisibility), _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
  
  public Base withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    return new Base(_classIntrospector, _annotationIntrospector, paramVisibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig.Base
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */