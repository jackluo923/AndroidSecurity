package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ConstructorScanner
{
  private Signature primary;
  private ParameterMap registry = new ParameterMap();
  private List<Signature> signatures = new ArrayList();
  private Support support;
  
  public ConstructorScanner(Detail paramDetail, Support paramSupport)
  {
    support = paramSupport;
    scan(paramDetail);
  }
  
  private void scan(Constructor paramConstructor)
  {
    paramConstructor = new SignatureScanner(paramConstructor, registry, support);
    if (paramConstructor.isValid())
    {
      paramConstructor = paramConstructor.getSignatures().iterator();
      while (paramConstructor.hasNext())
      {
        Signature localSignature = (Signature)paramConstructor.next();
        if (localSignature.size() == 0) {
          primary = localSignature;
        }
        signatures.add(localSignature);
      }
    }
  }
  
  private void scan(Detail paramDetail)
  {
    int i = 0;
    Constructor[] arrayOfConstructor = paramDetail.getConstructors();
    if (!paramDetail.isInstantiable()) {
      throw new ConstructorException("Can not construct inner %s", new Object[] { paramDetail });
    }
    int j = arrayOfConstructor.length;
    while (i < j)
    {
      Constructor localConstructor = arrayOfConstructor[i];
      if (!paramDetail.isPrimitive()) {
        scan(localConstructor);
      }
      i += 1;
    }
  }
  
  public ParameterMap getParameters()
  {
    return registry;
  }
  
  public Signature getSignature()
  {
    return primary;
  }
  
  public List<Signature> getSignatures()
  {
    return new ArrayList(signatures);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ConstructorScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */