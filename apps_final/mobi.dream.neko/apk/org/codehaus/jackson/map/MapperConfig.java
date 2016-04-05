package org.codehaus.jackson.map;

import java.text.DateFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.annotate.JsonMethod;
import org.codehaus.jackson.map.introspect.Annotated;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.jsontype.TypeResolverBuilder;
import org.codehaus.jackson.map.jsontype.impl.StdSubtypeResolver;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.StdDateFormat;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;

public abstract class MapperConfig<T extends MapperConfig<T>>
  implements ClassIntrospector.MixInResolver
{
  protected static final DateFormat DEFAULT_DATE_FORMAT = StdDateFormat.instance;
  protected Base _base;
  protected HashMap<ClassKey, Class<?>> _mixInAnnotations;
  protected boolean _mixInAnnotationsShared;
  protected SubtypeResolver _subtypeResolver;
  
  protected MapperConfig(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator)
  {
    _base = new Base(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramPropertyNamingStrategy, paramTypeFactory, null, DEFAULT_DATE_FORMAT, paramHandlerInstantiator);
    _subtypeResolver = paramSubtypeResolver;
    _mixInAnnotationsShared = true;
  }
  
  protected MapperConfig(MapperConfig<T> paramMapperConfig)
  {
    this(paramMapperConfig, _base, _subtypeResolver);
  }
  
  protected MapperConfig(MapperConfig<T> paramMapperConfig, Base paramBase, SubtypeResolver paramSubtypeResolver)
  {
    _base = paramBase;
    _subtypeResolver = paramSubtypeResolver;
    _mixInAnnotationsShared = true;
    _mixInAnnotations = _mixInAnnotations;
  }
  
  public final void addMixInAnnotations(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (_mixInAnnotations == null)
    {
      _mixInAnnotationsShared = false;
      _mixInAnnotations = new HashMap();
    }
    for (;;)
    {
      _mixInAnnotations.put(new ClassKey(paramClass1), paramClass2);
      return;
      if (_mixInAnnotationsShared)
      {
        _mixInAnnotationsShared = false;
        _mixInAnnotations = new HashMap(_mixInAnnotations);
      }
    }
  }
  
  @Deprecated
  public final void appendAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(getAnnotationIntrospector(), paramAnnotationIntrospector));
  }
  
  public abstract boolean canOverrideAccessModifiers();
  
  public JavaType constructSpecializedType(JavaType paramJavaType, Class<?> paramClass)
  {
    return getTypeFactory().constructSpecializedType(paramJavaType, paramClass);
  }
  
  public final JavaType constructType(Class<?> paramClass)
  {
    return getTypeFactory().constructType(paramClass, (TypeBindings)null);
  }
  
  public final JavaType constructType(TypeReference<?> paramTypeReference)
  {
    return getTypeFactory().constructType(paramTypeReference.getType(), (TypeBindings)null);
  }
  
  public abstract T createUnshared(SubtypeResolver paramSubtypeResolver);
  
  public final Class<?> findMixInClassFor(Class<?> paramClass)
  {
    if (_mixInAnnotations == null) {
      return null;
    }
    return (Class)_mixInAnnotations.get(new ClassKey(paramClass));
  }
  
  @Deprecated
  public abstract void fromAnnotations(Class<?> paramClass);
  
  public AnnotationIntrospector getAnnotationIntrospector()
  {
    return _base.getAnnotationIntrospector();
  }
  
  public ClassIntrospector<? extends BeanDescription> getClassIntrospector()
  {
    return _base.getClassIntrospector();
  }
  
  public final DateFormat getDateFormat()
  {
    return _base.getDateFormat();
  }
  
  public final TypeResolverBuilder<?> getDefaultTyper(JavaType paramJavaType)
  {
    return _base.getTypeResolverBuilder();
  }
  
  public VisibilityChecker<?> getDefaultVisibilityChecker()
  {
    return _base.getVisibilityChecker();
  }
  
  public final HandlerInstantiator getHandlerInstantiator()
  {
    return _base.getHandlerInstantiator();
  }
  
  public final PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return _base.getPropertyNamingStrategy();
  }
  
  public final SubtypeResolver getSubtypeResolver()
  {
    if (_subtypeResolver == null) {
      _subtypeResolver = new StdSubtypeResolver();
    }
    return _subtypeResolver;
  }
  
  public final TypeFactory getTypeFactory()
  {
    return _base.getTypeFactory();
  }
  
  @Deprecated
  public final void insertAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(AnnotationIntrospector.Pair.create(paramAnnotationIntrospector, getAnnotationIntrospector()));
  }
  
  public <DESC extends BeanDescription> DESC introspectClassAnnotations(Class<?> paramClass)
  {
    return introspectClassAnnotations(constructType(paramClass));
  }
  
  public abstract <DESC extends BeanDescription> DESC introspectClassAnnotations(JavaType paramJavaType);
  
  public <DESC extends BeanDescription> DESC introspectDirectClassAnnotations(Class<?> paramClass)
  {
    return introspectDirectClassAnnotations(constructType(paramClass));
  }
  
  public abstract <DESC extends BeanDescription> DESC introspectDirectClassAnnotations(JavaType paramJavaType);
  
  public abstract boolean isAnnotationProcessingEnabled();
  
  public abstract boolean isEnabled(ConfigFeature paramConfigFeature);
  
  public final int mixInCount()
  {
    if (_mixInAnnotations == null) {
      return 0;
    }
    return _mixInAnnotations.size();
  }
  
  @Deprecated
  public final void setAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    _base = _base.withAnnotationIntrospector(paramAnnotationIntrospector);
  }
  
  @Deprecated
  public void setDateFormat(DateFormat paramDateFormat)
  {
    DateFormat localDateFormat = paramDateFormat;
    if (paramDateFormat == null) {
      localDateFormat = DEFAULT_DATE_FORMAT;
    }
    _base = _base.withDateFormat(localDateFormat);
  }
  
  public final void setMixInAnnotations(Map<Class<?>, Class<?>> paramMap)
  {
    HashMap localHashMap = null;
    Object localObject = localHashMap;
    if (paramMap != null)
    {
      localObject = localHashMap;
      if (paramMap.size() > 0)
      {
        localHashMap = new HashMap(paramMap.size());
        paramMap = paramMap.entrySet().iterator();
        for (;;)
        {
          localObject = localHashMap;
          if (!paramMap.hasNext()) {
            break;
          }
          localObject = (Map.Entry)paramMap.next();
          localHashMap.put(new ClassKey((Class)((Map.Entry)localObject).getKey()), ((Map.Entry)localObject).getValue());
        }
      }
    }
    _mixInAnnotationsShared = false;
    _mixInAnnotations = ((HashMap)localObject);
  }
  
  public abstract boolean shouldSortPropertiesAlphabetically();
  
  public TypeIdResolver typeIdResolverInstance(Annotated paramAnnotated, Class<? extends TypeIdResolver> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      paramAnnotated = localHandlerInstantiator.typeIdResolverInstance(this, paramAnnotated, paramClass);
      if (paramAnnotated != null) {
        return paramAnnotated;
      }
    }
    return (TypeIdResolver)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }
  
  public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated paramAnnotated, Class<? extends TypeResolverBuilder<?>> paramClass)
  {
    HandlerInstantiator localHandlerInstantiator = getHandlerInstantiator();
    if (localHandlerInstantiator != null)
    {
      paramAnnotated = localHandlerInstantiator.typeResolverBuilderInstance(this, paramAnnotated, paramClass);
      if (paramAnnotated != null) {
        return paramAnnotated;
      }
    }
    return (TypeResolverBuilder)ClassUtil.createInstance(paramClass, canOverrideAccessModifiers());
  }
  
  public abstract T withAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract T withAppendedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract T withClassIntrospector(ClassIntrospector<? extends BeanDescription> paramClassIntrospector);
  
  public abstract T withDateFormat(DateFormat paramDateFormat);
  
  public abstract T withHandlerInstantiator(HandlerInstantiator paramHandlerInstantiator);
  
  public abstract T withInsertedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector);
  
  public abstract T withPropertyNamingStrategy(PropertyNamingStrategy paramPropertyNamingStrategy);
  
  public abstract T withSubtypeResolver(SubtypeResolver paramSubtypeResolver);
  
  public abstract T withTypeFactory(TypeFactory paramTypeFactory);
  
  public abstract T withTypeResolverBuilder(TypeResolverBuilder<?> paramTypeResolverBuilder);
  
  public abstract T withVisibility(JsonMethod paramJsonMethod, JsonAutoDetect.Visibility paramVisibility);
  
  public abstract T withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker);
  
  public static class Base
  {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final ClassIntrospector<? extends BeanDescription> _classIntrospector;
    protected final DateFormat _dateFormat;
    protected final HandlerInstantiator _handlerInstantiator;
    protected final PropertyNamingStrategy _propertyNamingStrategy;
    protected final TypeFactory _typeFactory;
    protected final TypeResolverBuilder<?> _typeResolverBuilder;
    protected final VisibilityChecker<?> _visibilityChecker;
    
    public Base(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, TypeResolverBuilder<?> paramTypeResolverBuilder, DateFormat paramDateFormat, HandlerInstantiator paramHandlerInstantiator)
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
  
  public static abstract interface ConfigFeature
  {
    public abstract boolean enabledByDefault();
    
    public abstract int getMask();
  }
  
  static abstract class Impl<CFG extends MapperConfig.ConfigFeature, T extends Impl<CFG, T>>
    extends MapperConfig<T>
  {
    protected int _featureFlags;
    
    protected Impl(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator, int paramInt)
    {
      super(paramAnnotationIntrospector, paramVisibilityChecker, paramSubtypeResolver, paramPropertyNamingStrategy, paramTypeFactory, paramHandlerInstantiator);
      _featureFlags = paramInt;
    }
    
    protected Impl(Impl<CFG, T> paramImpl)
    {
      super();
      _featureFlags = _featureFlags;
    }
    
    protected Impl(Impl<CFG, T> paramImpl, int paramInt)
    {
      super();
      _featureFlags = paramInt;
    }
    
    protected Impl(Impl<CFG, T> paramImpl, MapperConfig.Base paramBase, SubtypeResolver paramSubtypeResolver)
    {
      super(paramBase, paramSubtypeResolver);
      _featureFlags = _featureFlags;
    }
    
    static <F extends Enum<F>,  extends MapperConfig.ConfigFeature> int collectFeatureDefaults(Class<F> paramClass)
    {
      int j = 0;
      paramClass = (Enum[])paramClass.getEnumConstants();
      int m = paramClass.length;
      int i = 0;
      while (i < m)
      {
        Object localObject = paramClass[i];
        int k = j;
        if (((MapperConfig.ConfigFeature)localObject).enabledByDefault()) {
          k = j | ((MapperConfig.ConfigFeature)localObject).getMask();
        }
        i += 1;
        j = k;
      }
      return j;
    }
    
    @Deprecated
    public void disable(CFG paramCFG)
    {
      _featureFlags &= (paramCFG.getMask() ^ 0xFFFFFFFF);
    }
    
    @Deprecated
    public void enable(CFG paramCFG)
    {
      _featureFlags |= paramCFG.getMask();
    }
    
    public boolean isEnabled(MapperConfig.ConfigFeature paramConfigFeature)
    {
      return (_featureFlags & paramConfigFeature.getMask()) != 0;
    }
    
    @Deprecated
    public void set(CFG paramCFG, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        enable(paramCFG);
        return;
      }
      disable(paramCFG);
    }
    
    public abstract T with(CFG... paramVarArgs);
    
    public abstract T without(CFG... paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */