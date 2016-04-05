package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;

class SignatureScanner
{
  private final SignatureBuilder builder;
  private final Constructor constructor;
  private final ParameterFactory factory;
  private final ParameterMap registry;
  private final Class type;
  
  public SignatureScanner(Constructor paramConstructor, ParameterMap paramParameterMap, Support paramSupport)
  {
    builder = new SignatureBuilder(paramConstructor);
    factory = new ParameterFactory(paramSupport);
    type = paramConstructor.getDeclaringClass();
    constructor = paramConstructor;
    registry = paramParameterMap;
    scan(type);
  }
  
  private List<Parameter> create(Annotation paramAnnotation, int paramInt)
  {
    paramAnnotation = factory.getInstance(constructor, paramAnnotation, paramInt);
    if (paramAnnotation != null) {
      register(paramAnnotation);
    }
    return Collections.singletonList(paramAnnotation);
  }
  
  private Annotation[] extract(Annotation paramAnnotation)
  {
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    if (arrayOfMethod.length != 1) {
      throw new UnionException("Annotation '%s' is not a valid union for %s", new Object[] { paramAnnotation, type });
    }
    return (Annotation[])arrayOfMethod[0].invoke(paramAnnotation, new Object[0]);
  }
  
  private List<Parameter> process(Annotation paramAnnotation, int paramInt)
  {
    if ((paramAnnotation instanceof Attribute)) {
      return create(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof Element)) {
      return create(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return create(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return create(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return create(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return union(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return union(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      return union(paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof Text)) {
      return create(paramAnnotation, paramInt);
    }
    return Collections.emptyList();
  }
  
  private void register(Parameter paramParameter)
  {
    String str = paramParameter.getPath();
    Object localObject = paramParameter.getKey();
    if (registry.containsKey(localObject)) {
      validate(paramParameter, localObject);
    }
    if (registry.containsKey(str)) {
      validate(paramParameter, str);
    }
    registry.put(str, paramParameter);
    registry.put(localObject, paramParameter);
  }
  
  private void scan(Class paramClass)
  {
    paramClass = constructor.getParameterTypes();
    int i = 0;
    while (i < paramClass.length)
    {
      scan(paramClass[i], i);
      i += 1;
    }
  }
  
  private void scan(Class paramClass, int paramInt)
  {
    paramClass = constructor.getParameterAnnotations();
    int i = 0;
    while (i < paramClass[paramInt].length)
    {
      Iterator localIterator = process(paramClass[paramInt][i], paramInt).iterator();
      while (localIterator.hasNext())
      {
        Parameter localParameter = (Parameter)localIterator.next();
        builder.insert(localParameter, paramInt);
      }
      i += 1;
    }
  }
  
  private List<Parameter> union(Annotation paramAnnotation, int paramInt)
  {
    Signature localSignature = new Signature(constructor);
    Annotation[] arrayOfAnnotation = extract(paramAnnotation);
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfAnnotation[i];
      localObject = factory.getInstance(constructor, paramAnnotation, (Annotation)localObject, paramInt);
      String str = ((Parameter)localObject).getPath();
      if (localSignature.contains(str)) {
        throw new UnionException("Annotation name '%s' used more than once in %s for %s", new Object[] { str, paramAnnotation, type });
      }
      localSignature.set(str, (Parameter)localObject);
      register((Parameter)localObject);
      i += 1;
    }
    return localSignature.getAll();
  }
  
  private void validate(Parameter paramParameter, Object paramObject)
  {
    paramObject = (Parameter)registry.get(paramObject);
    if (paramParameter.isText() != ((Parameter)paramObject).isText())
    {
      Annotation localAnnotation1 = paramParameter.getAnnotation();
      Annotation localAnnotation2 = ((Parameter)paramObject).getAnnotation();
      String str = paramParameter.getPath();
      if (!localAnnotation1.equals(localAnnotation2)) {
        throw new ConstructorException("Annotations do not match for '%s' in %s", new Object[] { str, type });
      }
      if (((Parameter)paramObject).getType() != paramParameter.getType()) {
        throw new ConstructorException("Parameter types do not match for '%s' in %s", new Object[] { str, type });
      }
    }
  }
  
  public List<Signature> getSignatures()
  {
    return builder.build();
  }
  
  public boolean isValid()
  {
    return builder.isValid();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SignatureScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */