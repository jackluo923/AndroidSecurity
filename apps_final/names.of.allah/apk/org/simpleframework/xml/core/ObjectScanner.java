package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

class ObjectScanner
  implements Scanner
{
  private StructureBuilder builder;
  private Detail detail;
  private ClassScanner scanner;
  private Structure structure;
  private Support support;
  
  public ObjectScanner(Detail paramDetail, Support paramSupport)
  {
    scanner = new ClassScanner(paramDetail, paramSupport);
    builder = new StructureBuilder(this, paramDetail, paramSupport);
    support = paramSupport;
    detail = paramDetail;
    scan(paramDetail);
  }
  
  private void commit(Detail paramDetail)
  {
    paramDetail = paramDetail.getType();
    if (structure == null) {
      structure = builder.build(paramDetail);
    }
    builder = null;
  }
  
  private void field(Detail paramDetail)
  {
    Object localObject = paramDetail.getType();
    paramDetail = paramDetail.getOverride();
    paramDetail = support.getFields((Class)localObject, paramDetail).iterator();
    while (paramDetail.hasNext())
    {
      localObject = (Contact)paramDetail.next();
      Annotation localAnnotation = ((Contact)localObject).getAnnotation();
      if (localAnnotation != null) {
        builder.process((Contact)localObject, localAnnotation);
      }
    }
  }
  
  private void method(Detail paramDetail)
  {
    Object localObject = paramDetail.getType();
    paramDetail = paramDetail.getOverride();
    paramDetail = support.getMethods((Class)localObject, paramDetail).iterator();
    while (paramDetail.hasNext())
    {
      localObject = (Contact)paramDetail.next();
      Annotation localAnnotation = ((Contact)localObject).getAnnotation();
      if (localAnnotation != null) {
        builder.process((Contact)localObject, localAnnotation);
      }
    }
  }
  
  private void order(Detail paramDetail)
  {
    paramDetail = paramDetail.getType();
    builder.assemble(paramDetail);
  }
  
  private void scan(Detail paramDetail)
  {
    order(paramDetail);
    field(paramDetail);
    method(paramDetail);
    validate(paramDetail);
    commit(paramDetail);
  }
  
  private void validate(Detail paramDetail)
  {
    paramDetail = paramDetail.getType();
    builder.commit(paramDetail);
    builder.validate(paramDetail);
  }
  
  public Caller getCaller(Context paramContext)
  {
    return new Caller(this, paramContext);
  }
  
  public Function getCommit()
  {
    return scanner.getCommit();
  }
  
  public Function getComplete()
  {
    return scanner.getComplete();
  }
  
  public Decorator getDecorator()
  {
    return scanner.getDecorator();
  }
  
  public Instantiator getInstantiator()
  {
    return structure.getInstantiator();
  }
  
  public String getName()
  {
    return detail.getName();
  }
  
  public Order getOrder()
  {
    return scanner.getOrder();
  }
  
  public ParameterMap getParameters()
  {
    return scanner.getParameters();
  }
  
  public Function getPersist()
  {
    return scanner.getPersist();
  }
  
  public Function getReplace()
  {
    return scanner.getReplace();
  }
  
  public Function getResolve()
  {
    return scanner.getResolve();
  }
  
  public Version getRevision()
  {
    return structure.getRevision();
  }
  
  public Section getSection()
  {
    return structure.getSection();
  }
  
  public Signature getSignature()
  {
    return scanner.getSignature();
  }
  
  public List<Signature> getSignatures()
  {
    return scanner.getSignatures();
  }
  
  public Label getText()
  {
    return structure.getText();
  }
  
  public Class getType()
  {
    return detail.getType();
  }
  
  public Function getValidate()
  {
    return scanner.getValidate();
  }
  
  public Label getVersion()
  {
    return structure.getVersion();
  }
  
  public boolean isEmpty()
  {
    return scanner.getRoot() == null;
  }
  
  public boolean isPrimitive()
  {
    return structure.isPrimitive();
  }
  
  public boolean isStrict()
  {
    return detail.isStrict();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ObjectScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */