package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.simpleframework.xml.Text;

class GroupExtractor$Registry
  extends LinkedHashMap<Class, Label>
  implements Iterable<Label>
{
  private LabelMap elements;
  private Label text;
  
  public GroupExtractor$Registry(LabelMap paramLabelMap)
  {
    elements = paramLabelMap;
  }
  
  private void registerElement(Class paramClass, Label paramLabel)
  {
    String str = paramLabel.getName();
    if (!elements.containsKey(str)) {
      elements.put(str, paramLabel);
    }
    if (!containsKey(paramClass)) {
      put(paramClass, paramLabel);
    }
  }
  
  private void registerText(Label paramLabel)
  {
    Text localText = (Text)paramLabel.getContact().getAnnotation(Text.class);
    if (localText != null) {
      text = new TextListLabel(paramLabel, localText);
    }
  }
  
  private Label resolveElement(Class paramClass)
  {
    while (paramClass != null)
    {
      Label localLabel = (Label)get(paramClass);
      if (localLabel != null) {
        return localLabel;
      }
      paramClass = paramClass.getSuperclass();
    }
    return null;
  }
  
  private Label resolveText(Class paramClass)
  {
    if ((text != null) && (paramClass == String.class)) {
      return text;
    }
    return null;
  }
  
  public boolean isText()
  {
    return text != null;
  }
  
  public Iterator<Label> iterator()
  {
    return values().iterator();
  }
  
  public void register(Class paramClass, Label paramLabel)
  {
    paramLabel = new CacheLabel(paramLabel);
    registerElement(paramClass, paramLabel);
    registerText(paramLabel);
  }
  
  public Label resolve(Class paramClass)
  {
    Label localLabel2 = resolveText(paramClass);
    Label localLabel1 = localLabel2;
    if (localLabel2 == null) {
      localLabel1 = resolveElement(paramClass);
    }
    return localLabel1;
  }
  
  public Label resolveText()
  {
    return resolveText(String.class);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.GroupExtractor.Registry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */