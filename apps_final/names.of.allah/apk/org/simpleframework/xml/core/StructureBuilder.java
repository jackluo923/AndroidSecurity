package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;

class StructureBuilder
{
  private ModelAssembler assembler;
  private LabelMap attributes;
  private ExpressionBuilder builder;
  private LabelMap elements;
  private Instantiator factory;
  private boolean primitive;
  private InstantiatorBuilder resolver;
  private Model root;
  private Scanner scanner;
  private Support support;
  private Label text;
  private LabelMap texts;
  private Label version;
  
  public StructureBuilder(Scanner paramScanner, Detail paramDetail, Support paramSupport)
  {
    builder = new ExpressionBuilder(paramDetail, paramSupport);
    assembler = new ModelAssembler(builder, paramDetail, paramSupport);
    resolver = new InstantiatorBuilder(paramScanner, paramDetail);
    root = new TreeModel(paramScanner, paramDetail);
    attributes = new LabelMap(paramScanner);
    elements = new LabelMap(paramScanner);
    texts = new LabelMap(paramScanner);
    scanner = paramScanner;
    support = paramSupport;
  }
  
  private Model create(Expression paramExpression)
  {
    Object localObject1 = root;
    Expression localExpression = paramExpression;
    Object localObject2;
    for (paramExpression = (Expression)localObject1;; paramExpression = (Expression)localObject1)
    {
      localObject2 = paramExpression;
      if (paramExpression == null) {
        break;
      }
      localObject2 = localExpression.getPrefix();
      String str = localExpression.getFirst();
      int i = localExpression.getIndex();
      localObject1 = paramExpression;
      if (str != null) {
        localObject1 = paramExpression.register(str, (String)localObject2, i);
      }
      localObject2 = localObject1;
      if (!localExpression.isPath()) {
        break;
      }
      localExpression = localExpression.getPath(1);
    }
    return (Model)localObject2;
  }
  
  private boolean isAttribute(String paramString)
  {
    Expression localExpression = builder.build(paramString);
    Model localModel = lookup(localExpression);
    if (localModel != null)
    {
      String str = localExpression.getLast();
      if (!localExpression.isPath()) {
        return localModel.isAttribute(paramString);
      }
      return localModel.isAttribute(str);
    }
    return false;
  }
  
  private boolean isElement(String paramString)
  {
    paramString = builder.build(paramString);
    Model localModel = lookup(paramString);
    if (localModel != null)
    {
      String str = paramString.getLast();
      int i = paramString.getIndex();
      if (localModel.isElement(str)) {}
      do
      {
        return true;
        if (!localModel.isModel(str)) {
          break;
        }
      } while (!localModel.lookup(str, i).isEmpty());
      return false;
    }
    return false;
  }
  
  private boolean isEmpty()
  {
    if (text != null) {
      return false;
    }
    return root.isEmpty();
  }
  
  private Model lookup(Expression paramExpression)
  {
    Expression localExpression = paramExpression.getPath(0, 1);
    if (paramExpression.isPath()) {
      return root.lookup(localExpression);
    }
    return root;
  }
  
  private void process(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap)
  {
    paramAnnotation = support.getLabel(paramContact, paramAnnotation);
    String str1 = paramAnnotation.getPath();
    String str2 = paramAnnotation.getName();
    if (paramLabelMap.get(str1) != null) {
      throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, paramContact });
    }
    process(paramContact, paramAnnotation, paramLabelMap);
  }
  
  private void process(Contact paramContact, Label paramLabel, LabelMap paramLabelMap)
  {
    Expression localExpression = paramLabel.getExpression();
    String str = paramLabel.getPath();
    paramContact = root;
    if (!localExpression.isEmpty()) {
      paramContact = register(localExpression);
    }
    resolver.register(paramLabel);
    paramContact.register(paramLabel);
    paramLabelMap.put(str, paramLabel);
  }
  
  private Model register(Expression paramExpression)
  {
    Model localModel = root.lookup(paramExpression);
    if (localModel != null) {
      return localModel;
    }
    return create(paramExpression);
  }
  
  private void text(Contact paramContact, Annotation paramAnnotation)
  {
    Label localLabel = support.getLabel(paramContact, paramAnnotation);
    Expression localExpression = localLabel.getExpression();
    String str = localLabel.getPath();
    paramContact = root;
    if (!localExpression.isEmpty()) {
      paramContact = register(localExpression);
    }
    if (texts.get(str) != null) {
      throw new TextException("Multiple text annotations in %s", new Object[] { paramAnnotation });
    }
    resolver.register(localLabel);
    paramContact.register(localLabel);
    texts.put(str, localLabel);
  }
  
  private void union(Contact paramContact, Annotation paramAnnotation, LabelMap paramLabelMap)
  {
    paramAnnotation = support.getLabels(paramContact, paramAnnotation).iterator();
    while (paramAnnotation.hasNext())
    {
      Label localLabel = (Label)paramAnnotation.next();
      String str1 = localLabel.getPath();
      String str2 = localLabel.getName();
      if (paramLabelMap.get(str1) != null) {
        throw new PersistenceException("Duplicate annotation of name '%s' on %s", new Object[] { str2, localLabel });
      }
      process(paramContact, localLabel, paramLabelMap);
    }
  }
  
  private void validateAttributes(Class paramClass, Order paramOrder)
  {
    if (paramOrder != null)
    {
      paramOrder = paramOrder.attributes();
      int j = paramOrder.length;
      int i = 0;
      while (i < j)
      {
        String str = paramOrder[i];
        if (!isAttribute(str)) {
          throw new AttributeException("Ordered attribute '%s' missing in %s", new Object[] { str, paramClass });
        }
        i += 1;
      }
    }
  }
  
  private void validateElements(Class paramClass, Order paramOrder)
  {
    if (paramOrder != null)
    {
      paramOrder = paramOrder.elements();
      int j = paramOrder.length;
      int i = 0;
      while (i < j)
      {
        String str = paramOrder[i];
        if (!isElement(str)) {
          throw new ElementException("Ordered element '%s' missing for %s", new Object[] { str, paramClass });
        }
        i += 1;
      }
    }
  }
  
  private void validateModel(Class paramClass)
  {
    if (!root.isEmpty()) {
      root.validate(paramClass);
    }
  }
  
  private void validateText(Class paramClass)
  {
    Label localLabel = root.getText();
    if (localLabel != null)
    {
      if (!localLabel.isTextList())
      {
        if (!elements.isEmpty()) {
          throw new TextException("Elements used with %s in %s", new Object[] { localLabel, paramClass });
        }
        if (root.isComposite()) {
          throw new TextException("Paths used with %s in %s", new Object[] { localLabel, paramClass });
        }
      }
    }
    else if (scanner.isEmpty()) {
      primitive = isEmpty();
    }
  }
  
  private void validateTextList(Class paramClass)
  {
    Label localLabel = root.getText();
    if ((localLabel != null) && (localLabel.isTextList()))
    {
      Object localObject1 = localLabel.getKey();
      Iterator localIterator = elements.iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (Label)localIterator.next();
        if (!((Label)localObject2).getKey().equals(localObject1)) {
          throw new TextException("Elements used with %s in %s", new Object[] { localLabel, paramClass });
        }
        localObject2 = ((Label)localObject2).getDependent().getType();
        if (localObject2 == String.class) {
          throw new TextException("Illegal entry of %s with text annotations on %s in %s", new Object[] { localObject2, localLabel, paramClass });
        }
      }
      if (root.isComposite()) {
        throw new TextException("Paths used with %s in %s", new Object[] { localLabel, paramClass });
      }
    }
  }
  
  private void validateUnions(Class paramClass)
  {
    paramClass = elements.iterator();
    while (paramClass.hasNext())
    {
      Label localLabel = (Label)paramClass.next();
      String[] arrayOfString = localLabel.getPaths();
      Contact localContact = localLabel.getContact();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfString[i];
        Annotation localAnnotation = localContact.getAnnotation();
        localObject = (Label)elements.get(localObject);
        if (localLabel.isInline() != ((Label)localObject).isInline()) {
          throw new UnionException("Inline must be consistent in %s for %s", new Object[] { localAnnotation, localContact });
        }
        if (localLabel.isRequired() != ((Label)localObject).isRequired()) {
          throw new UnionException("Required must be consistent in %s for %s", new Object[] { localAnnotation, localContact });
        }
        i += 1;
      }
    }
  }
  
  private void version(Contact paramContact, Annotation paramAnnotation)
  {
    paramContact = support.getLabel(paramContact, paramAnnotation);
    if (version != null) {
      throw new AttributeException("Multiple version annotations in %s", new Object[] { paramAnnotation });
    }
    version = paramContact;
  }
  
  public void assemble(Class paramClass)
  {
    paramClass = scanner.getOrder();
    if (paramClass != null) {
      assembler.assemble(root, paramClass);
    }
  }
  
  public Structure build(Class paramClass)
  {
    return new Structure(factory, root, version, text, primitive);
  }
  
  public void commit(Class paramClass)
  {
    if (factory == null) {
      factory = resolver.build();
    }
  }
  
  public void process(Contact paramContact, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Attribute)) {
      process(paramContact, paramAnnotation, attributes);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      union(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementList)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof Element)) {
      process(paramContact, paramAnnotation, elements);
    }
    if ((paramAnnotation instanceof Version)) {
      version(paramContact, paramAnnotation);
    }
    if ((paramAnnotation instanceof Text)) {
      text(paramContact, paramAnnotation);
    }
  }
  
  public void validate(Class paramClass)
  {
    Order localOrder = scanner.getOrder();
    validateUnions(paramClass);
    validateElements(paramClass, localOrder);
    validateAttributes(paramClass, localOrder);
    validateModel(paramClass);
    validateText(paramClass);
    validateTextList(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.StructureBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */