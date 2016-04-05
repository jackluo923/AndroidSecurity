package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ModelSection
  implements Section
{
  private LabelMap attributes;
  private LabelMap elements;
  private Model model;
  private ModelMap models;
  
  public ModelSection(Model paramModel)
  {
    model = paramModel;
  }
  
  public String getAttribute(String paramString)
  {
    Expression localExpression = model.getExpression();
    if (localExpression == null) {
      return paramString;
    }
    return localExpression.getAttribute(paramString);
  }
  
  public LabelMap getAttributes()
  {
    if (attributes == null) {
      attributes = model.getAttributes();
    }
    return attributes;
  }
  
  public Label getElement(String paramString)
  {
    return getElements().getLabel(paramString);
  }
  
  public LabelMap getElements()
  {
    if (elements == null) {
      elements = model.getElements();
    }
    return elements;
  }
  
  public ModelMap getModels()
  {
    if (models == null) {
      models = model.getModels();
    }
    return models;
  }
  
  public String getName()
  {
    return model.getName();
  }
  
  public String getPath(String paramString)
  {
    Expression localExpression = model.getExpression();
    if (localExpression == null) {
      return paramString;
    }
    return localExpression.getElement(paramString);
  }
  
  public String getPrefix()
  {
    return model.getPrefix();
  }
  
  public Section getSection(String paramString)
  {
    paramString = (ModelList)getModels().get(paramString);
    if (paramString != null)
    {
      paramString = paramString.take();
      if (paramString != null) {
        return new ModelSection(paramString);
      }
    }
    return null;
  }
  
  public Label getText()
  {
    return model.getText();
  }
  
  public boolean isSection(String paramString)
  {
    return getModels().get(paramString) != null;
  }
  
  public Iterator<String> iterator()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = model.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((String)localIterator.next());
    }
    return localArrayList.iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */