package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.List;

class SignatureCreator
  implements Creator
{
  private final List<Parameter> list;
  private final Signature signature;
  private final Class type;
  
  public SignatureCreator(Signature paramSignature)
  {
    type = paramSignature.getType();
    list = paramSignature.getAll();
    signature = paramSignature;
  }
  
  private double getAdjustment(double paramDouble)
  {
    double d = list.size() / 1000.0D;
    if (paramDouble > 0.0D) {
      return d + paramDouble / list.size();
    }
    return paramDouble / list.size();
  }
  
  private double getPercentage(Criteria paramCriteria)
  {
    Iterator localIterator = list.iterator();
    double d = 0.0D;
    if (localIterator.hasNext())
    {
      Parameter localParameter = (Parameter)localIterator.next();
      if (paramCriteria.get(localParameter.getKey()) == null)
      {
        if (localParameter.isRequired()) {
          return -1.0D;
        }
        if (!localParameter.isPrimitive()) {
          break label92;
        }
        return -1.0D;
      }
      d += 1.0D;
    }
    label92:
    for (;;)
    {
      break;
      return getAdjustment(d);
    }
  }
  
  private Object getVariable(Criteria paramCriteria, int paramInt)
  {
    paramCriteria = paramCriteria.remove(((Parameter)list.get(paramInt)).getKey());
    if (paramCriteria != null) {
      return paramCriteria.getValue();
    }
    return null;
  }
  
  public Object getInstance()
  {
    return signature.create();
  }
  
  public Object getInstance(Criteria paramCriteria)
  {
    Object[] arrayOfObject = list.toArray();
    int i = 0;
    while (i < list.size())
    {
      arrayOfObject[i] = getVariable(paramCriteria, i);
      i += 1;
    }
    return signature.create(arrayOfObject);
  }
  
  public double getScore(Criteria paramCriteria)
  {
    Signature localSignature = signature.copy();
    Iterator localIterator = paramCriteria.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      Parameter localParameter = localSignature.get(localObject);
      localObject = paramCriteria.get(localObject);
      Contact localContact = ((Variable)localObject).getContact();
      if ((localParameter != null) && (!Support.isAssignable(((Variable)localObject).getValue().getClass(), localParameter.getType()))) {
        return -1.0D;
      }
      if ((localContact.isReadOnly()) && (localParameter == null)) {
        return -1.0D;
      }
    }
    return getPercentage(paramCriteria);
  }
  
  public Signature getSignature()
  {
    return signature;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public String toString()
  {
    return signature.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SignatureCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */