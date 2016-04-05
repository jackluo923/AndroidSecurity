package org.codehaus.jackson.map.deser.impl;

import java.lang.reflect.Member;
import java.util.HashMap;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.std.StdValueInstantiator;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.ClassUtil;

public class CreatorCollector
{
  final BasicBeanDescription _beanDesc;
  protected AnnotatedWithParams _booleanCreator;
  final boolean _canFixAccess;
  protected AnnotatedConstructor _defaultConstructor;
  protected AnnotatedWithParams _delegateCreator;
  protected AnnotatedWithParams _doubleCreator;
  protected AnnotatedWithParams _intCreator;
  protected AnnotatedWithParams _longCreator;
  protected CreatorProperty[] _propertyBasedArgs = null;
  protected AnnotatedWithParams _propertyBasedCreator;
  protected AnnotatedWithParams _stringCreator;
  
  public CreatorCollector(BasicBeanDescription paramBasicBeanDescription, boolean paramBoolean)
  {
    _beanDesc = paramBasicBeanDescription;
    _canFixAccess = paramBoolean;
  }
  
  public void addBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _booleanCreator = verifyNonDup(paramAnnotatedWithParams, _booleanCreator, "boolean");
  }
  
  public void addDelegatingCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _delegateCreator = verifyNonDup(paramAnnotatedWithParams, _delegateCreator, "delegate");
  }
  
  public void addDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _doubleCreator = verifyNonDup(paramAnnotatedWithParams, _doubleCreator, "double");
  }
  
  public void addIntCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _intCreator = verifyNonDup(paramAnnotatedWithParams, _intCreator, "int");
  }
  
  public void addLongCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _longCreator = verifyNonDup(paramAnnotatedWithParams, _longCreator, "long");
  }
  
  public void addPropertyCreator(AnnotatedWithParams paramAnnotatedWithParams, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    _propertyBasedCreator = verifyNonDup(paramAnnotatedWithParams, _propertyBasedCreator, "property-based");
    if (paramArrayOfCreatorProperty.length > 1)
    {
      paramAnnotatedWithParams = new HashMap();
      int i = 0;
      int j = paramArrayOfCreatorProperty.length;
      if (i < j)
      {
        String str = paramArrayOfCreatorProperty[i].getName();
        if ((str.length() == 0) && (paramArrayOfCreatorProperty[i].getInjectableValueId() != null)) {}
        Integer localInteger;
        do
        {
          i += 1;
          break;
          localInteger = (Integer)paramAnnotatedWithParams.put(str, Integer.valueOf(i));
        } while (localInteger == null);
        throw new IllegalArgumentException("Duplicate creator property \"" + str + "\" (index " + localInteger + " vs " + i + ")");
      }
    }
    _propertyBasedArgs = paramArrayOfCreatorProperty;
  }
  
  public void addStringCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _stringCreator = verifyNonDup(paramAnnotatedWithParams, _stringCreator, "String");
  }
  
  public ValueInstantiator constructValueInstantiator(DeserializationConfig paramDeserializationConfig)
  {
    StdValueInstantiator localStdValueInstantiator = new StdValueInstantiator(paramDeserializationConfig, _beanDesc.getType());
    if (_delegateCreator == null) {}
    for (paramDeserializationConfig = null;; paramDeserializationConfig = _beanDesc.bindingsForBeanType().resolveType(_delegateCreator.getParameterType(0)))
    {
      localStdValueInstantiator.configureFromObjectSettings(_defaultConstructor, _delegateCreator, paramDeserializationConfig, _propertyBasedCreator, _propertyBasedArgs);
      localStdValueInstantiator.configureFromStringCreator(_stringCreator);
      localStdValueInstantiator.configureFromIntCreator(_intCreator);
      localStdValueInstantiator.configureFromLongCreator(_longCreator);
      localStdValueInstantiator.configureFromDoubleCreator(_doubleCreator);
      localStdValueInstantiator.configureFromBooleanCreator(_booleanCreator);
      return localStdValueInstantiator;
    }
  }
  
  public void setDefaultConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    _defaultConstructor = paramAnnotatedConstructor;
  }
  
  protected AnnotatedWithParams verifyNonDup(AnnotatedWithParams paramAnnotatedWithParams1, AnnotatedWithParams paramAnnotatedWithParams2, String paramString)
  {
    if ((paramAnnotatedWithParams2 != null) && (paramAnnotatedWithParams2.getClass() == paramAnnotatedWithParams1.getClass())) {
      throw new IllegalArgumentException("Conflicting " + paramString + " creators: already had " + paramAnnotatedWithParams2 + ", encountered " + paramAnnotatedWithParams1);
    }
    if (_canFixAccess) {
      ClassUtil.checkAndFixAccess((Member)paramAnnotatedWithParams1.getAnnotated());
    }
    return paramAnnotatedWithParams1;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.CreatorCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */