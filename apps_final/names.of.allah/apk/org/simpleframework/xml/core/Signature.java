package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

class Signature
  implements Iterable<Parameter>
{
  private final Constructor factory;
  private final ParameterMap parameters = new ParameterMap();
  private final Class type;
  
  public Signature(Constructor paramConstructor)
  {
    this(paramConstructor, paramConstructor.getDeclaringClass());
  }
  
  public Signature(Constructor paramConstructor, Class paramClass)
  {
    factory = paramConstructor;
    type = paramClass;
  }
  
  public Signature(Signature paramSignature)
  {
    this(factory, type);
  }
  
  public void add(Parameter paramParameter)
  {
    Object localObject = paramParameter.getKey();
    if (localObject != null) {
      parameters.put(localObject, paramParameter);
    }
  }
  
  public boolean contains(Object paramObject)
  {
    return parameters.containsKey(paramObject);
  }
  
  public Signature copy()
  {
    Signature localSignature = new Signature(this);
    Iterator localIterator = iterator();
    while (localIterator.hasNext()) {
      localSignature.add((Parameter)localIterator.next());
    }
    return localSignature;
  }
  
  public Object create()
  {
    if (!factory.isAccessible()) {
      factory.setAccessible(true);
    }
    return factory.newInstance(new Object[0]);
  }
  
  public Object create(Object[] paramArrayOfObject)
  {
    if (!factory.isAccessible()) {
      factory.setAccessible(true);
    }
    return factory.newInstance(paramArrayOfObject);
  }
  
  public Parameter get(int paramInt)
  {
    return parameters.get(paramInt);
  }
  
  public Parameter get(Object paramObject)
  {
    return (Parameter)parameters.get(paramObject);
  }
  
  public List<Parameter> getAll()
  {
    return parameters.getAll();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isEmpty()
  {
    return parameters.isEmpty();
  }
  
  public Iterator<Parameter> iterator()
  {
    return parameters.iterator();
  }
  
  public Parameter remove(Object paramObject)
  {
    return (Parameter)parameters.remove(paramObject);
  }
  
  public void set(Object paramObject, Parameter paramParameter)
  {
    parameters.put(paramObject, paramParameter);
  }
  
  public int size()
  {
    return parameters.size();
  }
  
  public String toString()
  {
    return factory.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Signature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */