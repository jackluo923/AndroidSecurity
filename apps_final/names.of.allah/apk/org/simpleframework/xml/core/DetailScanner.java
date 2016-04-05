package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

class DetailScanner
  implements Detail
{
  private DefaultType access;
  private NamespaceList declaration;
  private List<FieldDetail> fields = new LinkedList();
  private Annotation[] labels;
  private List<MethodDetail> methods = new LinkedList();
  private String name;
  private Namespace namespace;
  private Order order;
  private DefaultType override;
  private boolean required;
  private Root root;
  private boolean strict;
  private Class type;
  
  public DetailScanner(Class paramClass)
  {
    this(paramClass, null);
  }
  
  public DetailScanner(Class paramClass, DefaultType paramDefaultType)
  {
    labels = paramClass.getDeclaredAnnotations();
    override = paramDefaultType;
    strict = true;
    type = paramClass;
    scan(paramClass);
  }
  
  private void access(Annotation paramAnnotation)
  {
    if (paramAnnotation != null)
    {
      paramAnnotation = (Default)paramAnnotation;
      required = paramAnnotation.required();
      access = paramAnnotation.value();
    }
  }
  
  private void extract(Class paramClass)
  {
    paramClass = labels;
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      Annotation localAnnotation = paramClass[i];
      if ((localAnnotation instanceof Namespace)) {
        namespace(localAnnotation);
      }
      if ((localAnnotation instanceof NamespaceList)) {
        scope(localAnnotation);
      }
      if ((localAnnotation instanceof Root)) {
        root(localAnnotation);
      }
      if ((localAnnotation instanceof Order)) {
        order(localAnnotation);
      }
      if ((localAnnotation instanceof Default)) {
        access(localAnnotation);
      }
      i += 1;
    }
  }
  
  private void fields(Class paramClass)
  {
    paramClass = paramClass.getDeclaredFields();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      FieldDetail localFieldDetail = new FieldDetail(paramClass[i]);
      fields.add(localFieldDetail);
      i += 1;
    }
  }
  
  private boolean isEmpty(String paramString)
  {
    return paramString.length() == 0;
  }
  
  private void methods(Class paramClass)
  {
    paramClass = paramClass.getDeclaredMethods();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      MethodDetail localMethodDetail = new MethodDetail(paramClass[i]);
      methods.add(localMethodDetail);
      i += 1;
    }
  }
  
  private void namespace(Annotation paramAnnotation)
  {
    if (paramAnnotation != null) {
      namespace = ((Namespace)paramAnnotation);
    }
  }
  
  private void order(Annotation paramAnnotation)
  {
    if (paramAnnotation != null) {
      order = ((Order)paramAnnotation);
    }
  }
  
  private void root(Annotation paramAnnotation)
  {
    if (paramAnnotation != null)
    {
      Root localRoot = (Root)paramAnnotation;
      String str2 = type.getSimpleName();
      if (localRoot != null)
      {
        String str1 = localRoot.name();
        paramAnnotation = str1;
        if (isEmpty(str1)) {
          paramAnnotation = Reflector.getName(str2);
        }
        strict = localRoot.strict();
        root = localRoot;
        name = paramAnnotation;
      }
    }
  }
  
  private void scan(Class paramClass)
  {
    methods(paramClass);
    fields(paramClass);
    extract(paramClass);
  }
  
  private void scope(Annotation paramAnnotation)
  {
    if (paramAnnotation != null) {
      declaration = ((NamespaceList)paramAnnotation);
    }
  }
  
  public DefaultType getAccess()
  {
    if (override != null) {
      return override;
    }
    return access;
  }
  
  public Annotation[] getAnnotations()
  {
    return labels;
  }
  
  public Constructor[] getConstructors()
  {
    return type.getDeclaredConstructors();
  }
  
  public List<FieldDetail> getFields()
  {
    return fields;
  }
  
  public List<MethodDetail> getMethods()
  {
    return methods;
  }
  
  public String getName()
  {
    return name;
  }
  
  public Namespace getNamespace()
  {
    return namespace;
  }
  
  public NamespaceList getNamespaceList()
  {
    return declaration;
  }
  
  public Order getOrder()
  {
    return order;
  }
  
  public DefaultType getOverride()
  {
    return override;
  }
  
  public Root getRoot()
  {
    return root;
  }
  
  public Class getSuper()
  {
    Class localClass2 = type.getSuperclass();
    Class localClass1 = localClass2;
    if (localClass2 == Object.class) {
      localClass1 = null;
    }
    return localClass1;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isInstantiable()
  {
    if (Modifier.isStatic(type.getModifiers())) {}
    while (!type.isMemberClass()) {
      return true;
    }
    return false;
  }
  
  public boolean isPrimitive()
  {
    return type.isPrimitive();
  }
  
  public boolean isRequired()
  {
    return required;
  }
  
  public boolean isStrict()
  {
    return strict;
  }
  
  public String toString()
  {
    return type.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.DetailScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */