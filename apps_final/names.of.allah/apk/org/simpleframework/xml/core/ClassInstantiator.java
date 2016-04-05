package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ClassInstantiator
  implements Instantiator
{
  private final List<Creator> creators;
  private final Detail detail;
  private final Creator primary;
  private final ParameterMap registry;
  
  public ClassInstantiator(List<Creator> paramList, Creator paramCreator, ParameterMap paramParameterMap, Detail paramDetail)
  {
    creators = paramList;
    registry = paramParameterMap;
    primary = paramCreator;
    detail = paramDetail;
  }
  
  private Creator getCreator(Criteria paramCriteria)
  {
    Object localObject = primary;
    Iterator localIterator = creators.iterator();
    double d1 = 0.0D;
    if (localIterator.hasNext())
    {
      Creator localCreator = (Creator)localIterator.next();
      double d2 = localCreator.getScore(paramCriteria);
      if (d2 <= d1) {
        break label71;
      }
      localObject = localCreator;
      d1 = d2;
    }
    label71:
    for (;;)
    {
      break;
      return (Creator)localObject;
    }
  }
  
  public List<Creator> getCreators()
  {
    return new ArrayList(creators);
  }
  
  public Object getInstance()
  {
    return primary.getInstance();
  }
  
  public Object getInstance(Criteria paramCriteria)
  {
    Creator localCreator = getCreator(paramCriteria);
    if (localCreator == null) {
      throw new PersistenceException("Constructor not matched for %s", new Object[] { detail });
    }
    return localCreator.getInstance(paramCriteria);
  }
  
  public Parameter getParameter(String paramString)
  {
    return (Parameter)registry.get(paramString);
  }
  
  public List<Parameter> getParameters()
  {
    return registry.getAll();
  }
  
  public boolean isDefault()
  {
    if (creators.size() <= 1) {
      return primary != null;
    }
    return false;
  }
  
  public String toString()
  {
    return String.format("creator for %s", new Object[] { detail });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassInstantiator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */