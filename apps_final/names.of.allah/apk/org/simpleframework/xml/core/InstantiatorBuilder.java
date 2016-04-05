package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class InstantiatorBuilder
{
  private LabelMap attributes = new LabelMap();
  private Comparer comparer = new Comparer();
  private Detail detail;
  private LabelMap elements = new LabelMap();
  private Instantiator factory;
  private List<Creator> options = new ArrayList();
  private Scanner scanner;
  private LabelMap texts = new LabelMap();
  
  public InstantiatorBuilder(Scanner paramScanner, Detail paramDetail)
  {
    scanner = paramScanner;
    detail = paramDetail;
  }
  
  private Instantiator build(Detail paramDetail)
  {
    if (factory == null) {
      factory = create(paramDetail);
    }
    return factory;
  }
  
  private boolean contains(String[] paramArrayOfString, String paramString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramArrayOfString[i];
      if (str == paramString) {}
      while (str.equals(paramString)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private Creator create(Signature paramSignature)
  {
    SignatureCreator localSignatureCreator = new SignatureCreator(paramSignature);
    if (paramSignature != null) {
      options.add(localSignatureCreator);
    }
    return localSignatureCreator;
  }
  
  private Instantiator create(Detail paramDetail)
  {
    Signature localSignature = scanner.getSignature();
    ParameterMap localParameterMap = scanner.getParameters();
    SignatureCreator localSignatureCreator = null;
    if (localSignature != null) {
      localSignatureCreator = new SignatureCreator(localSignature);
    }
    return new ClassInstantiator(options, localSignatureCreator, localParameterMap, paramDetail);
  }
  
  private Parameter create(Parameter paramParameter)
  {
    Label localLabel = resolve(paramParameter);
    if (localLabel != null) {
      return new CacheParameter(paramParameter, localLabel);
    }
    return null;
  }
  
  private void populate(Detail paramDetail)
  {
    paramDetail = scanner.getSignatures().iterator();
    while (paramDetail.hasNext()) {
      populate((Signature)paramDetail.next());
    }
  }
  
  private void populate(Signature paramSignature)
  {
    Signature localSignature = new Signature(paramSignature);
    paramSignature = paramSignature.iterator();
    while (paramSignature.hasNext())
    {
      Parameter localParameter = create((Parameter)paramSignature.next());
      if (localParameter != null) {
        localSignature.add(localParameter);
      }
    }
    create(localSignature);
  }
  
  private void register(Label paramLabel, LabelMap paramLabelMap)
  {
    String str1 = paramLabel.getName();
    String str2 = paramLabel.getPath();
    if (paramLabelMap.containsKey(str1)) {
      if (!((Label)paramLabelMap.get(str1)).getPath().equals(str1)) {
        paramLabelMap.remove(str1);
      }
    }
    for (;;)
    {
      paramLabelMap.put(str2, paramLabel);
      return;
      paramLabelMap.put(str1, paramLabel);
    }
  }
  
  private Label resolve(Parameter paramParameter)
  {
    if (paramParameter.isAttribute()) {
      return resolve(paramParameter, attributes);
    }
    if (paramParameter.isText()) {
      return resolve(paramParameter, texts);
    }
    return resolve(paramParameter, elements);
  }
  
  private Label resolve(Parameter paramParameter, LabelMap paramLabelMap)
  {
    String str = paramParameter.getName();
    Label localLabel = (Label)paramLabelMap.get(paramParameter.getPath());
    paramParameter = localLabel;
    if (localLabel == null) {
      paramParameter = (Label)paramLabelMap.get(str);
    }
    return paramParameter;
  }
  
  private void validate(Detail paramDetail)
  {
    Iterator localIterator = scanner.getParameters().getAll().iterator();
    while (localIterator.hasNext())
    {
      Parameter localParameter = (Parameter)localIterator.next();
      Label localLabel = resolve(localParameter);
      String str = localParameter.getPath();
      if (localLabel == null) {
        throw new ConstructorException("Parameter '%s' does not have a match in %s", new Object[] { str, paramDetail });
      }
      validateParameter(localLabel, localParameter);
    }
    validateConstructors();
  }
  
  private void validateAnnotations(Label paramLabel, Parameter paramParameter)
  {
    Object localObject2 = paramLabel.getAnnotation();
    Object localObject1 = paramParameter.getAnnotation();
    paramLabel = paramParameter.getName();
    if (!comparer.equals((Annotation)localObject2, (Annotation)localObject1))
    {
      localObject2 = ((Annotation)localObject2).annotationType();
      localObject1 = ((Annotation)localObject1).annotationType();
      if (!localObject2.equals(localObject1)) {
        throw new ConstructorException("Annotation %s does not match %s for '%s' in %s", new Object[] { localObject1, localObject2, paramLabel, paramParameter });
      }
    }
  }
  
  private void validateConstructor(Label paramLabel, List<Creator> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Signature localSignature = ((Creator)paramList.next()).getSignature();
      Contact localContact = paramLabel.getContact();
      Object localObject = paramLabel.getKey();
      if ((localContact.isReadOnly()) && (localSignature.get(localObject) == null)) {
        paramList.remove();
      }
    }
  }
  
  private void validateConstructors()
  {
    List localList = factory.getCreators();
    if (factory.isDefault())
    {
      validateConstructors(elements);
      validateConstructors(attributes);
    }
    if (!localList.isEmpty())
    {
      validateConstructors(elements, localList);
      validateConstructors(attributes, localList);
    }
  }
  
  private void validateConstructors(LabelMap paramLabelMap)
  {
    paramLabelMap = paramLabelMap.iterator();
    while (paramLabelMap.hasNext())
    {
      Label localLabel = (Label)paramLabelMap.next();
      if ((localLabel != null) && (localLabel.getContact().isReadOnly())) {
        throw new ConstructorException("Default constructor can not accept read only %s in %s", new Object[] { localLabel, detail });
      }
    }
  }
  
  private void validateConstructors(LabelMap paramLabelMap, List<Creator> paramList)
  {
    paramLabelMap = paramLabelMap.iterator();
    while (paramLabelMap.hasNext())
    {
      Label localLabel = (Label)paramLabelMap.next();
      if (localLabel != null) {
        validateConstructor(localLabel, paramList);
      }
    }
    if (paramList.isEmpty()) {
      throw new ConstructorException("No constructor accepts all read only values in %s", new Object[] { detail });
    }
  }
  
  private void validateNames(Label paramLabel, Parameter paramParameter)
  {
    Object localObject = paramLabel.getNames();
    String str = paramParameter.getName();
    if (!contains((String[])localObject, str))
    {
      localObject = paramLabel.getName();
      if (str != localObject)
      {
        if ((str == null) || (localObject == null)) {
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
        }
        if (!str.equals(localObject)) {
          throw new ConstructorException("Annotation does not match %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
        }
      }
    }
  }
  
  private void validateParameter(Label paramLabel, Parameter paramParameter)
  {
    Contact localContact = paramLabel.getContact();
    String str = paramParameter.getName();
    if (!Support.isAssignable(paramParameter.getType(), localContact.getType())) {
      throw new ConstructorException("Type is not compatible with %s for '%s' in %s", new Object[] { paramLabel, str, paramParameter });
    }
    validateNames(paramLabel, paramParameter);
    validateAnnotations(paramLabel, paramParameter);
  }
  
  public Instantiator build()
  {
    if (factory == null)
    {
      populate(detail);
      build(detail);
      validate(detail);
    }
    return factory;
  }
  
  public void register(Label paramLabel)
  {
    if (paramLabel.isAttribute())
    {
      register(paramLabel, attributes);
      return;
    }
    if (paramLabel.isText())
    {
      register(paramLabel, texts);
      return;
    }
    register(paramLabel, elements);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.InstantiatorBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */