package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.type.TypeFactory;

abstract class MapperConfig$Impl<CFG extends MapperConfig.ConfigFeature, T extends Impl<CFG, T>>
  extends MapperConfig<T>
{
  protected int _featureFlags;
  
  protected MapperConfig$Impl(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator, int paramInt)
  {
    super(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramSubtypeResolver, paramPropertyNamingStrategy, paramTypeFactory, paramHandlerInstantiator);
    _featureFlags = paramInt;
  }
  
  protected MapperConfig$Impl(Impl<CFG, T> paramImpl)
  {
    super(paramImpl);
    _featureFlags = _featureFlags;
  }
  
  protected MapperConfig$Impl(Impl<CFG, T> paramImpl, int paramInt)
  {
    super(paramImpl);
    _featureFlags = paramInt;
  }
  
  protected MapperConfig$Impl(Impl<CFG, T> paramImpl, MapperConfig.Base paramBase, SubtypeResolver paramSubtypeResolver)
  {
    super(paramImpl, paramBase, paramSubtypeResolver);
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

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig.Impl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */