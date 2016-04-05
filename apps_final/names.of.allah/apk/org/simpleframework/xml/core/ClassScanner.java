package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

class ClassScanner
{
  private Function commit;
  private Function complete;
  private NamespaceDecorator decorator;
  private Order order;
  private Function persist;
  private Function replace;
  private Function resolve;
  private Root root;
  private ConstructorScanner scanner;
  private Support support;
  private Function validate;
  
  public ClassScanner(Detail paramDetail, Support paramSupport)
  {
    scanner = new ConstructorScanner(paramDetail, paramSupport);
    decorator = new NamespaceDecorator();
    support = paramSupport;
    scan(paramDetail);
  }
  
  private void commit(Method paramMethod)
  {
    if (commit == null) {
      commit = getFunction(paramMethod);
    }
  }
  
  private void commit(Detail paramDetail)
  {
    paramDetail = paramDetail.getNamespace();
    if (paramDetail != null) {
      decorator.set(paramDetail);
    }
  }
  
  private void complete(Method paramMethod)
  {
    if (complete == null) {
      complete = getFunction(paramMethod);
    }
  }
  
  private void definition(Detail paramDetail)
  {
    if (root == null) {
      root = paramDetail.getRoot();
    }
    if (order == null) {
      order = paramDetail.getOrder();
    }
  }
  
  private Function getFunction(Method paramMethod)
  {
    boolean bool = isContextual(paramMethod);
    if (!paramMethod.isAccessible()) {
      paramMethod.setAccessible(true);
    }
    return new Function(paramMethod, bool);
  }
  
  private boolean isContextual(Method paramMethod)
  {
    boolean bool = false;
    paramMethod = paramMethod.getParameterTypes();
    if (paramMethod.length == 1) {
      bool = Map.class.equals(paramMethod[0]);
    }
    return bool;
  }
  
  private void method(Detail paramDetail)
  {
    paramDetail = paramDetail.getMethods().iterator();
    while (paramDetail.hasNext()) {
      method((MethodDetail)paramDetail.next());
    }
  }
  
  private void method(MethodDetail paramMethodDetail)
  {
    Annotation[] arrayOfAnnotation = paramMethodDetail.getAnnotations();
    paramMethodDetail = paramMethodDetail.getMethod();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = arrayOfAnnotation[i];
      if ((localAnnotation instanceof Commit)) {
        commit(paramMethodDetail);
      }
      if ((localAnnotation instanceof Validate)) {
        validate(paramMethodDetail);
      }
      if ((localAnnotation instanceof Persist)) {
        persist(paramMethodDetail);
      }
      if ((localAnnotation instanceof Complete)) {
        complete(paramMethodDetail);
      }
      if ((localAnnotation instanceof Replace)) {
        replace(paramMethodDetail);
      }
      if ((localAnnotation instanceof Resolve)) {
        resolve(paramMethodDetail);
      }
      i += 1;
    }
  }
  
  private void namespace(Detail paramDetail)
  {
    NamespaceList localNamespaceList = paramDetail.getNamespaceList();
    paramDetail = paramDetail.getNamespace();
    if (paramDetail != null) {
      decorator.add(paramDetail);
    }
    if (localNamespaceList != null)
    {
      paramDetail = localNamespaceList.value();
      int j = paramDetail.length;
      int i = 0;
      while (i < j)
      {
        localNamespaceList = paramDetail[i];
        decorator.add(localNamespaceList);
        i += 1;
      }
    }
  }
  
  private void persist(Method paramMethod)
  {
    if (persist == null) {
      persist = getFunction(paramMethod);
    }
  }
  
  private void replace(Method paramMethod)
  {
    if (replace == null) {
      replace = getFunction(paramMethod);
    }
  }
  
  private void resolve(Method paramMethod)
  {
    if (resolve == null) {
      resolve = getFunction(paramMethod);
    }
  }
  
  private void scan(Detail paramDetail)
  {
    DefaultType localDefaultType = paramDetail.getOverride();
    for (Object localObject = paramDetail.getType(); localObject != null; localObject = ((Detail)localObject).getSuper())
    {
      localObject = support.getDetail((Class)localObject, localDefaultType);
      namespace((Detail)localObject);
      method((Detail)localObject);
      definition((Detail)localObject);
    }
    commit(paramDetail);
  }
  
  private void validate(Method paramMethod)
  {
    if (validate == null) {
      validate = getFunction(paramMethod);
    }
  }
  
  public Function getCommit()
  {
    return commit;
  }
  
  public Function getComplete()
  {
    return complete;
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Order getOrder()
  {
    return order;
  }
  
  public ParameterMap getParameters()
  {
    return scanner.getParameters();
  }
  
  public Function getPersist()
  {
    return persist;
  }
  
  public Function getReplace()
  {
    return replace;
  }
  
  public Function getResolve()
  {
    return resolve;
  }
  
  public Root getRoot()
  {
    return root;
  }
  
  public Signature getSignature()
  {
    return scanner.getSignature();
  }
  
  public List<Signature> getSignatures()
  {
    return scanner.getSignatures();
  }
  
  public Function getValidate()
  {
    return validate;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */