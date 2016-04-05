package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.util.List;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

abstract interface Detail
{
  public abstract DefaultType getAccess();
  
  public abstract Annotation[] getAnnotations();
  
  public abstract Constructor[] getConstructors();
  
  public abstract List<FieldDetail> getFields();
  
  public abstract List<MethodDetail> getMethods();
  
  public abstract String getName();
  
  public abstract Namespace getNamespace();
  
  public abstract NamespaceList getNamespaceList();
  
  public abstract Order getOrder();
  
  public abstract DefaultType getOverride();
  
  public abstract Root getRoot();
  
  public abstract Class getSuper();
  
  public abstract Class getType();
  
  public abstract boolean isInstantiable();
  
  public abstract boolean isPrimitive();
  
  public abstract boolean isRequired();
  
  public abstract boolean isStrict();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Detail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */