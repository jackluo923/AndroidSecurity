package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class ModelMap
  extends LinkedHashMap<String, ModelList>
  implements Iterable<ModelList>
{
  private final Detail detail;
  
  public ModelMap(Detail paramDetail)
  {
    detail = paramDetail;
  }
  
  public ModelMap getModels()
  {
    ModelMap localModelMap = new ModelMap(detail);
    Iterator localIterator = keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ModelList localModelList2 = (ModelList)get(str);
      ModelList localModelList1 = localModelList2;
      if (localModelList2 != null) {
        localModelList1 = localModelList2.build();
      }
      if (localModelMap.containsKey(str)) {
        throw new PathException("Path with name '%s' is a duplicate in %s ", new Object[] { str, detail });
      }
      localModelMap.put(str, localModelList1);
    }
    return localModelMap;
  }
  
  public Iterator<ModelList> iterator()
  {
    return values().iterator();
  }
  
  public Model lookup(String paramString, int paramInt)
  {
    paramString = (ModelList)get(paramString);
    if (paramString != null) {
      return paramString.lookup(paramInt);
    }
    return null;
  }
  
  public void register(String paramString, Model paramModel)
  {
    ModelList localModelList2 = (ModelList)get(paramString);
    ModelList localModelList1 = localModelList2;
    if (localModelList2 == null)
    {
      localModelList1 = new ModelList();
      put(paramString, localModelList1);
    }
    localModelList1.register(paramModel);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */