package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;

class Collector
  implements Criteria
{
  private final Collector.Registry alias = new Collector.Registry(null);
  private final Collector.Registry registry = new Collector.Registry(null);
  
  public void commit(Object paramObject)
  {
    Iterator localIterator = registry.values().iterator();
    while (localIterator.hasNext())
    {
      Variable localVariable = (Variable)localIterator.next();
      localVariable.getContact().set(paramObject, localVariable.getValue());
    }
  }
  
  public Variable get(Object paramObject)
  {
    return (Variable)registry.get(paramObject);
  }
  
  public Variable get(Label paramLabel)
  {
    if (paramLabel != null)
    {
      paramLabel = paramLabel.getKey();
      return (Variable)registry.get(paramLabel);
    }
    return null;
  }
  
  public Iterator<Object> iterator()
  {
    return registry.iterator();
  }
  
  public Variable remove(Object paramObject)
  {
    return (Variable)registry.remove(paramObject);
  }
  
  public Variable resolve(String paramString)
  {
    return (Variable)alias.get(paramString);
  }
  
  public void set(Label paramLabel, Object paramObject)
  {
    paramObject = new Variable(paramLabel, paramObject);
    if (paramLabel != null)
    {
      String[] arrayOfString = paramLabel.getPaths();
      paramLabel = paramLabel.getKey();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        alias.put(str, paramObject);
        i += 1;
      }
      registry.put(paramLabel, paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Collector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */