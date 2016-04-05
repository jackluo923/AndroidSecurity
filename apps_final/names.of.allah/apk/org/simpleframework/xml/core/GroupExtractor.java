package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import org.simpleframework.xml.stream.Format;

class GroupExtractor
  implements Group
{
  private final LabelMap elements;
  private final ExtractorFactory factory;
  private final Annotation label;
  private final GroupExtractor.Registry registry;
  
  public GroupExtractor(Contact paramContact, Annotation paramAnnotation, Format paramFormat)
  {
    factory = new ExtractorFactory(paramContact, paramAnnotation, paramFormat);
    elements = new LabelMap();
    registry = new GroupExtractor.Registry(elements);
    label = paramAnnotation;
    extract();
  }
  
  private void extract()
  {
    Extractor localExtractor = factory.getInstance();
    if (localExtractor != null) {
      extract(localExtractor);
    }
  }
  
  private void extract(Extractor paramExtractor)
  {
    Annotation[] arrayOfAnnotation = paramExtractor.getAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    while (i < j)
    {
      extract(paramExtractor, arrayOfAnnotation[i]);
      i += 1;
    }
  }
  
  private void extract(Extractor paramExtractor, Annotation paramAnnotation)
  {
    Label localLabel = paramExtractor.getLabel(paramAnnotation);
    paramExtractor = paramExtractor.getType(paramAnnotation);
    if (registry != null) {
      registry.register(paramExtractor, localLabel);
    }
  }
  
  public LabelMap getElements()
  {
    return elements.getLabels();
  }
  
  public Label getLabel(Class paramClass)
  {
    return registry.resolve(paramClass);
  }
  
  public String[] getNames()
  {
    return elements.getKeys();
  }
  
  public String[] getPaths()
  {
    return elements.getPaths();
  }
  
  public Label getText()
  {
    return registry.resolveText();
  }
  
  public boolean isDeclared(Class paramClass)
  {
    return registry.containsKey(paramClass);
  }
  
  public boolean isInline()
  {
    Iterator localIterator = registry.iterator();
    while (localIterator.hasNext()) {
      if (!((Label)localIterator.next()).isInline()) {
        return false;
      }
    }
    return !registry.isEmpty();
  }
  
  public boolean isTextList()
  {
    return registry.isText();
  }
  
  public boolean isValid(Class paramClass)
  {
    return registry.resolve(paramClass) != null;
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.GroupExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */