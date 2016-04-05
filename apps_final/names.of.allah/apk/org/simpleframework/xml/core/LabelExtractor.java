package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class LabelExtractor
{
  private final Cache<LabelGroup> cache = new ConcurrentCache();
  private final Format format;
  
  public LabelExtractor(Format paramFormat)
  {
    format = paramFormat;
  }
  
  private Annotation[] getAnnotations(Annotation paramAnnotation)
  {
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    if (arrayOfMethod.length > 0) {
      return (Annotation[])arrayOfMethod[0].invoke(paramAnnotation, new Object[0]);
    }
    return new Annotation[0];
  }
  
  private LabelExtractor.LabelBuilder getBuilder(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Element)) {
      return new LabelExtractor.LabelBuilder(ElementLabel.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return new LabelExtractor.LabelBuilder(ElementListLabel.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return new LabelExtractor.LabelBuilder(ElementArrayLabel.class, ElementArray.class);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return new LabelExtractor.LabelBuilder(ElementMapLabel.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      return new LabelExtractor.LabelBuilder(ElementUnionLabel.class, ElementUnion.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return new LabelExtractor.LabelBuilder(ElementListUnionLabel.class, ElementListUnion.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return new LabelExtractor.LabelBuilder(ElementMapUnionLabel.class, ElementMapUnion.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof Attribute)) {
      return new LabelExtractor.LabelBuilder(AttributeLabel.class, Attribute.class);
    }
    if ((paramAnnotation instanceof Version)) {
      return new LabelExtractor.LabelBuilder(VersionLabel.class, Version.class);
    }
    if ((paramAnnotation instanceof Text)) {
      return new LabelExtractor.LabelBuilder(TextLabel.class, Text.class);
    }
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private Constructor getConstructor(Annotation paramAnnotation)
  {
    paramAnnotation = getBuilder(paramAnnotation).getConstructor();
    if (!paramAnnotation.isAccessible()) {
      paramAnnotation.setAccessible(true);
    }
    return paramAnnotation;
  }
  
  private LabelGroup getGroup(Contact paramContact, Annotation paramAnnotation, Object paramObject)
  {
    LabelGroup localLabelGroup = (LabelGroup)cache.fetch(paramObject);
    Object localObject = localLabelGroup;
    if (localLabelGroup == null)
    {
      paramContact = getLabels(paramContact, paramAnnotation);
      localObject = paramContact;
      if (paramContact != null)
      {
        cache.cache(paramObject, paramContact);
        localObject = paramContact;
      }
    }
    return (LabelGroup)localObject;
  }
  
  private Object getKey(Contact paramContact, Annotation paramAnnotation)
  {
    return new LabelKey(paramContact, paramAnnotation);
  }
  
  private Label getLabel(Contact paramContact, Annotation paramAnnotation1, Annotation paramAnnotation2)
  {
    Constructor localConstructor = getConstructor(paramAnnotation1);
    if (paramAnnotation2 != null) {
      return (Label)localConstructor.newInstance(new Object[] { paramContact, paramAnnotation1, paramAnnotation2, format });
    }
    return (Label)localConstructor.newInstance(new Object[] { paramContact, paramAnnotation1, format });
  }
  
  private LabelGroup getLabels(Contact paramContact, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof ElementUnion)) {
      return getUnion(paramContact, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return getUnion(paramContact, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return getUnion(paramContact, paramAnnotation);
    }
    return getSingle(paramContact, paramAnnotation);
  }
  
  private LabelGroup getSingle(Contact paramContact, Annotation paramAnnotation)
  {
    paramContact = getLabel(paramContact, paramAnnotation, null);
    if (paramContact != null) {
      paramContact = new CacheLabel(paramContact);
    }
    for (;;)
    {
      return new LabelGroup(paramContact);
    }
  }
  
  private LabelGroup getUnion(Contact paramContact, Annotation paramAnnotation)
  {
    Annotation[] arrayOfAnnotation = getAnnotations(paramAnnotation);
    LinkedList localLinkedList;
    int i;
    Object localObject;
    if (arrayOfAnnotation.length > 0)
    {
      localLinkedList = new LinkedList();
      int j = arrayOfAnnotation.length;
      i = 0;
      if (i < j)
      {
        localObject = getLabel(paramContact, paramAnnotation, arrayOfAnnotation[i]);
        if (localObject == null) {
          break label92;
        }
        localObject = new CacheLabel((Label)localObject);
      }
    }
    label92:
    for (;;)
    {
      localLinkedList.add(localObject);
      i += 1;
      break;
      return new LabelGroup(localLinkedList);
      return null;
    }
  }
  
  public Label getLabel(Contact paramContact, Annotation paramAnnotation)
  {
    paramContact = getGroup(paramContact, paramAnnotation, getKey(paramContact, paramAnnotation));
    if (paramContact != null) {
      return paramContact.getPrimary();
    }
    return null;
  }
  
  public List<Label> getList(Contact paramContact, Annotation paramAnnotation)
  {
    paramContact = getGroup(paramContact, paramAnnotation, getKey(paramContact, paramAnnotation));
    if (paramContact != null) {
      return paramContact.getList();
    }
    return Collections.emptyList();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */