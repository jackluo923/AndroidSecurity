package org.codehaus.jackson.mrbean;

import java.lang.reflect.Method;
import org.codehaus.jackson.map.type.TypeFactory;

class BeanBuilder$Property
{
  protected final String _fieldName;
  protected Method _getter;
  protected final String _name;
  protected Method _setter;
  
  public BeanBuilder$Property(String paramString)
  {
    _name = paramString;
    _fieldName = ("_" + paramString);
  }
  
  private BeanBuilder.TypeDescription getterType(TypeFactory paramTypeFactory)
  {
    Class localClass = _getter.getDeclaringClass();
    return new BeanBuilder.TypeDescription(paramTypeFactory.constructType(_getter.getGenericReturnType(), localClass));
  }
  
  private BeanBuilder.TypeDescription setterType(TypeFactory paramTypeFactory)
  {
    Class localClass = _setter.getDeclaringClass();
    return new BeanBuilder.TypeDescription(paramTypeFactory.constructType(_setter.getGenericParameterTypes()[0], localClass));
  }
  
  public String getFieldName()
  {
    return _fieldName;
  }
  
  public Method getGetter()
  {
    return _getter;
  }
  
  public String getName()
  {
    return _name;
  }
  
  public Method getSetter()
  {
    return _setter;
  }
  
  public boolean hasConcreteGetter()
  {
    return (_getter != null) && (BeanUtil.isConcrete(_getter));
  }
  
  public boolean hasConcreteSetter()
  {
    return (_setter != null) && (BeanUtil.isConcrete(_setter));
  }
  
  public BeanBuilder.TypeDescription selectType(TypeFactory paramTypeFactory)
  {
    if (_getter == null) {
      paramTypeFactory = setterType(paramTypeFactory);
    }
    BeanBuilder.TypeDescription localTypeDescription2;
    BeanBuilder.TypeDescription localTypeDescription3;
    BeanBuilder.TypeDescription localTypeDescription1;
    do
    {
      return paramTypeFactory;
      if (_setter == null) {
        return getterType(paramTypeFactory);
      }
      localTypeDescription2 = setterType(paramTypeFactory);
      localTypeDescription3 = getterType(paramTypeFactory);
      localTypeDescription1 = BeanBuilder.TypeDescription.moreSpecificType(localTypeDescription2, localTypeDescription3);
      paramTypeFactory = localTypeDescription1;
    } while (localTypeDescription1 != null);
    throw new IllegalArgumentException("Invalid property '" + getName() + "': incompatible types for getter/setter (" + localTypeDescription3 + " vs " + localTypeDescription2 + ")");
  }
  
  public void setGetter(Method paramMethod)
  {
    _getter = paramMethod;
  }
  
  public void setSetter(Method paramMethod)
  {
    _setter = paramMethod;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.BeanBuilder.Property
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */