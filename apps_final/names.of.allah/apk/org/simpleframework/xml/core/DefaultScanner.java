package org.simpleframework.xml.core;

import java.util.List;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Version;

class DefaultScanner
  implements Scanner
{
  private Detail detail;
  private Scanner scanner;
  
  public DefaultScanner(Detail paramDetail, Support paramSupport)
  {
    detail = new DefaultDetail(paramDetail, DefaultType.FIELD);
    scanner = new ObjectScanner(detail, paramSupport);
  }
  
  public Caller getCaller(Context paramContext)
  {
    return scanner.getCaller(paramContext);
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
    return scanner.getInstantiator();
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
    return scanner.getRevision();
  }
  
  public Section getSection()
  {
    return scanner.getSection();
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
    return scanner.getText();
  }
  
  public Class getType()
  {
    return scanner.getType();
  }
  
  public Function getValidate()
  {
    return scanner.getValidate();
  }
  
  public Label getVersion()
  {
    return scanner.getVersion();
  }
  
  public boolean isEmpty()
  {
    return scanner.isEmpty();
  }
  
  public boolean isPrimitive()
  {
    return scanner.isPrimitive();
  }
  
  public boolean isStrict()
  {
    return scanner.isStrict();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.DefaultScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */