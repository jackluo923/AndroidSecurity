package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Transient;
import org.simpleframework.xml.Version;

class MethodScanner
  extends ContactList
{
  private final Detail detail;
  private final MethodPartFactory factory;
  private final MethodScanner.PartMap read;
  private final Support support;
  private final MethodScanner.PartMap write;
  
  public MethodScanner(Detail paramDetail, Support paramSupport)
  {
    factory = new MethodPartFactory(paramDetail, paramSupport);
    write = new MethodScanner.PartMap(null);
    read = new MethodScanner.PartMap(null);
    support = paramSupport;
    detail = paramDetail;
    scan(paramDetail);
  }
  
  private void build()
  {
    Iterator localIterator = read.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      MethodPart localMethodPart = (MethodPart)read.get(str);
      if (localMethodPart != null) {
        build(localMethodPart, str);
      }
    }
  }
  
  private void build(MethodPart paramMethodPart)
  {
    add(new MethodContact(paramMethodPart));
  }
  
  private void build(MethodPart paramMethodPart, String paramString)
  {
    paramString = write.take(paramString);
    if (paramString != null)
    {
      build(paramMethodPart, paramString);
      return;
    }
    build(paramMethodPart);
  }
  
  private void build(MethodPart paramMethodPart1, MethodPart paramMethodPart2)
  {
    Object localObject = paramMethodPart1.getAnnotation();
    String str = paramMethodPart1.getName();
    if (!paramMethodPart2.getAnnotation().equals(localObject)) {
      throw new MethodException("Annotations do not match for '%s' in %s", new Object[] { str, detail });
    }
    localObject = paramMethodPart1.getType();
    if (localObject != paramMethodPart2.getType()) {
      throw new MethodException("Method types do not match for %s in %s", new Object[] { str, localObject });
    }
    add(new MethodContact(paramMethodPart1, paramMethodPart2));
  }
  
  private void extend(Class paramClass, DefaultType paramDefaultType)
  {
    paramClass = support.getMethods(paramClass, paramDefaultType).iterator();
    while (paramClass.hasNext()) {
      process((MethodContact)paramClass.next());
    }
  }
  
  private void extract(Detail paramDetail)
  {
    paramDetail = paramDetail.getMethods().iterator();
    while (paramDetail.hasNext())
    {
      Object localObject = (MethodDetail)paramDetail.next();
      Annotation[] arrayOfAnnotation = ((MethodDetail)localObject).getAnnotations();
      localObject = ((MethodDetail)localObject).getMethod();
      int j = arrayOfAnnotation.length;
      int i = 0;
      while (i < j)
      {
        scan((Method)localObject, arrayOfAnnotation[i], arrayOfAnnotation);
        i += 1;
      }
    }
  }
  
  private void extract(Detail paramDetail, DefaultType paramDefaultType)
  {
    paramDetail = paramDetail.getMethods();
    if (paramDefaultType == DefaultType.PROPERTY)
    {
      paramDetail = paramDetail.iterator();
      while (paramDetail.hasNext())
      {
        Object localObject = (MethodDetail)paramDetail.next();
        paramDefaultType = ((MethodDetail)localObject).getAnnotations();
        localObject = ((MethodDetail)localObject).getMethod();
        if (factory.getType((Method)localObject) != null) {
          process((Method)localObject, paramDefaultType);
        }
      }
    }
  }
  
  private void insert(MethodPart paramMethodPart, MethodScanner.PartMap paramPartMap)
  {
    String str = paramMethodPart.getName();
    MethodPart localMethodPart2 = (MethodPart)paramPartMap.remove(str);
    MethodPart localMethodPart1 = paramMethodPart;
    if (localMethodPart2 != null)
    {
      localMethodPart1 = paramMethodPart;
      if (isText(paramMethodPart)) {
        localMethodPart1 = localMethodPart2;
      }
    }
    paramPartMap.put(str, localMethodPart1);
  }
  
  private boolean isText(MethodPart paramMethodPart)
  {
    return (paramMethodPart.getAnnotation() instanceof Text);
  }
  
  private void process(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation)
  {
    paramMethod = factory.getInstance(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    paramAnnotation = paramMethod.getMethodType();
    if (paramAnnotation == MethodType.GET) {
      process(paramMethod, read);
    }
    if (paramAnnotation == MethodType.IS) {
      process(paramMethod, read);
    }
    if (paramAnnotation == MethodType.SET) {
      process(paramMethod, write);
    }
  }
  
  private void process(Method paramMethod, Annotation[] paramArrayOfAnnotation)
  {
    paramMethod = factory.getInstance(paramMethod, paramArrayOfAnnotation);
    paramArrayOfAnnotation = paramMethod.getMethodType();
    if (paramArrayOfAnnotation == MethodType.GET) {
      process(paramMethod, read);
    }
    if (paramArrayOfAnnotation == MethodType.IS) {
      process(paramMethod, read);
    }
    if (paramArrayOfAnnotation == MethodType.SET) {
      process(paramMethod, write);
    }
  }
  
  private void process(MethodContact paramMethodContact)
  {
    MethodPart localMethodPart = paramMethodContact.getRead();
    paramMethodContact = paramMethodContact.getWrite();
    if (paramMethodContact != null) {
      insert(paramMethodContact, write);
    }
    insert(localMethodPart, read);
  }
  
  private void process(MethodPart paramMethodPart, MethodScanner.PartMap paramPartMap)
  {
    String str = paramMethodPart.getName();
    if (str != null) {
      paramPartMap.put(str, paramMethodPart);
    }
  }
  
  private void remove(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation)
  {
    paramMethod = factory.getInstance(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    paramAnnotation = paramMethod.getMethodType();
    if (paramAnnotation == MethodType.GET) {
      remove(paramMethod, read);
    }
    if (paramAnnotation == MethodType.IS) {
      remove(paramMethod, read);
    }
    if (paramAnnotation == MethodType.SET) {
      remove(paramMethod, write);
    }
  }
  
  private void remove(MethodPart paramMethodPart, MethodScanner.PartMap paramPartMap)
  {
    paramMethodPart = paramMethodPart.getName();
    if (paramMethodPart != null) {
      paramPartMap.remove(paramMethodPart);
    }
  }
  
  private void scan(Method paramMethod, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation)
  {
    if ((paramAnnotation instanceof Attribute)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementList)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof Element)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof Version)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof Text)) {
      process(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
    if ((paramAnnotation instanceof Transient)) {
      remove(paramMethod, paramAnnotation, paramArrayOfAnnotation);
    }
  }
  
  private void scan(Detail paramDetail)
  {
    DefaultType localDefaultType1 = paramDetail.getOverride();
    DefaultType localDefaultType2 = paramDetail.getAccess();
    Class localClass = paramDetail.getSuper();
    if (localClass != null) {
      extend(localClass, localDefaultType1);
    }
    extract(paramDetail, localDefaultType2);
    extract(paramDetail);
    build();
    validate();
  }
  
  private void validate()
  {
    Iterator localIterator = write.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      MethodPart localMethodPart = (MethodPart)write.get(str);
      if (localMethodPart != null) {
        validate(localMethodPart, str);
      }
    }
  }
  
  private void validate(MethodPart paramMethodPart, String paramString)
  {
    paramString = read.take(paramString);
    paramMethodPart = paramMethodPart.getMethod();
    if (paramString == null) {
      throw new MethodException("No matching get method for %s in %s", new Object[] { paramMethodPart, detail });
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */