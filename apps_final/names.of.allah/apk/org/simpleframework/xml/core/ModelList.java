package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

class ModelList
  extends ArrayList<Model>
{
  public ModelList build()
  {
    ModelList localModelList = new ModelList();
    Iterator localIterator = iterator();
    while (localIterator.hasNext()) {
      localModelList.register((Model)localIterator.next());
    }
    return localModelList;
  }
  
  public boolean isEmpty()
  {
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      Model localModel = (Model)localIterator.next();
      if ((localModel != null) && (!localModel.isEmpty())) {
        return false;
      }
    }
    return true;
  }
  
  public Model lookup(int paramInt)
  {
    if (paramInt <= size()) {
      return (Model)get(paramInt - 1);
    }
    return null;
  }
  
  public void register(Model paramModel)
  {
    int j = paramModel.getIndex();
    int k = size();
    int i = 0;
    while (i < j)
    {
      if (i >= k) {
        add(null);
      }
      if (i == j - 1) {
        set(j - 1, paramModel);
      }
      i += 1;
    }
  }
  
  public Model take()
  {
    while (!isEmpty())
    {
      Model localModel = (Model)remove(0);
      if (!localModel.isEmpty()) {
        return localModel;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */