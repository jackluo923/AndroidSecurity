package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class TreeModel
  implements Model
{
  private LabelMap attributes;
  private Detail detail;
  private LabelMap elements;
  private Expression expression;
  private int index;
  private Label list;
  private ModelMap models;
  private String name;
  private TreeModel.OrderList order;
  private Policy policy;
  private String prefix;
  private Label text;
  
  public TreeModel(Policy paramPolicy, Detail paramDetail)
  {
    this(paramPolicy, paramDetail, null, null, 1);
  }
  
  public TreeModel(Policy paramPolicy, Detail paramDetail, String paramString1, String paramString2, int paramInt)
  {
    attributes = new LabelMap(paramPolicy);
    elements = new LabelMap(paramPolicy);
    models = new ModelMap(paramDetail);
    order = new TreeModel.OrderList();
    detail = paramDetail;
    policy = paramPolicy;
    prefix = paramString2;
    index = paramInt;
    name = paramString1;
  }
  
  private Model create(String paramString1, String paramString2, int paramInt)
  {
    paramString2 = new TreeModel(policy, detail, paramString1, paramString2, paramInt);
    if (paramString1 != null)
    {
      models.register(paramString1, paramString2);
      order.add(paramString1);
    }
    return paramString2;
  }
  
  private void validateAttributes(Class paramClass)
  {
    Iterator localIterator = attributes.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((Label)attributes.get(str) == null) {
        throw new AttributeException("Ordered attribute '%s' does not exist in %s", new Object[] { str, paramClass });
      }
      if (expression != null) {
        expression.getAttribute(str);
      }
    }
  }
  
  private void validateElements(Class paramClass)
  {
    Iterator localIterator = elements.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ModelList localModelList = (ModelList)models.get(str);
      Label localLabel = (Label)elements.get(str);
      if ((localModelList == null) && (localLabel == null)) {
        throw new ElementException("Ordered element '%s' does not exist in %s", new Object[] { str, paramClass });
      }
      if ((localModelList != null) && (localLabel != null) && (!localModelList.isEmpty())) {
        throw new ElementException("Element '%s' is also a path name in %s", new Object[] { str, paramClass });
      }
      if (expression != null) {
        expression.getElement(str);
      }
    }
  }
  
  private void validateExpression(Label paramLabel)
  {
    Object localObject = paramLabel.getExpression();
    if (expression != null)
    {
      paramLabel = expression.getPath();
      localObject = ((Expression)localObject).getPath();
      if (!paramLabel.equals(localObject)) {
        throw new PathException("Path '%s' does not match '%s' in %s", new Object[] { paramLabel, localObject, detail });
      }
    }
    else
    {
      expression = ((Expression)localObject);
    }
  }
  
  private void validateExpressions(Class paramClass)
  {
    paramClass = elements.iterator();
    Label localLabel;
    while (paramClass.hasNext())
    {
      localLabel = (Label)paramClass.next();
      if (localLabel != null) {
        validateExpression(localLabel);
      }
    }
    paramClass = attributes.iterator();
    while (paramClass.hasNext())
    {
      localLabel = (Label)paramClass.next();
      if (localLabel != null) {
        validateExpression(localLabel);
      }
    }
    if (text != null) {
      validateExpression(text);
    }
  }
  
  private void validateModels(Class paramClass)
  {
    Iterator localIterator1 = models.iterator();
    if (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((ModelList)localIterator1.next()).iterator();
      int i = 1;
      label33:
      if (localIterator2.hasNext())
      {
        Model localModel = (Model)localIterator2.next();
        if (localModel == null) {
          break label132;
        }
        String str = localModel.getName();
        int j = localModel.getIndex();
        if (j != i) {
          throw new ElementException("Path section '%s[%s]' is out of sequence in %s", new Object[] { str, Integer.valueOf(j), paramClass });
        }
        localModel.validate(paramClass);
        i += 1;
      }
    }
    label132:
    for (;;)
    {
      break label33;
      break;
      return;
    }
  }
  
  private void validateText(Class paramClass)
  {
    if (text != null)
    {
      if (!elements.isEmpty()) {
        throw new TextException("Text annotation %s used with elements in %s", new Object[] { text, paramClass });
      }
      if (isComposite()) {
        throw new TextException("Text annotation %s can not be used with paths in %s", new Object[] { text, paramClass });
      }
    }
  }
  
  public LabelMap getAttributes()
  {
    return attributes.getLabels();
  }
  
  public LabelMap getElements()
  {
    return elements.getLabels();
  }
  
  public Expression getExpression()
  {
    return expression;
  }
  
  public int getIndex()
  {
    return index;
  }
  
  public ModelMap getModels()
  {
    return models.getModels();
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPrefix()
  {
    return prefix;
  }
  
  public Label getText()
  {
    if (list != null) {
      return list;
    }
    return text;
  }
  
  public boolean isAttribute(String paramString)
  {
    return attributes.containsKey(paramString);
  }
  
  public boolean isComposite()
  {
    Model localModel;
    do
    {
      Iterator localIterator1 = models.iterator();
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        if (!localIterator1.hasNext()) {
          break;
        }
        localIterator2 = ((ModelList)localIterator1.next()).iterator();
      }
      localModel = (Model)localIterator2.next();
    } while ((localModel == null) || (localModel.isEmpty()));
    return true;
    return !models.isEmpty();
  }
  
  public boolean isElement(String paramString)
  {
    return elements.containsKey(paramString);
  }
  
  public boolean isEmpty()
  {
    if (text != null) {}
    while ((!elements.isEmpty()) || (!attributes.isEmpty()) || (isComposite())) {
      return false;
    }
    return true;
  }
  
  public boolean isModel(String paramString)
  {
    return models.containsKey(paramString);
  }
  
  public Iterator<String> iterator()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = order.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((String)localIterator.next());
    }
    return localArrayList.iterator();
  }
  
  public Model lookup(String paramString, int paramInt)
  {
    return models.lookup(paramString, paramInt);
  }
  
  public Model lookup(Expression paramExpression)
  {
    Model localModel2 = lookup(paramExpression.getFirst(), paramExpression.getIndex());
    Model localModel1 = localModel2;
    if (paramExpression.isPath())
    {
      paramExpression = paramExpression.getPath(1, 0);
      localModel1 = localModel2;
      if (localModel2 != null) {
        localModel1 = localModel2.lookup(paramExpression);
      }
    }
    return localModel1;
  }
  
  public Model register(String paramString1, String paramString2, int paramInt)
  {
    Model localModel2 = models.lookup(paramString1, paramInt);
    Model localModel1 = localModel2;
    if (localModel2 == null) {
      localModel1 = create(paramString1, paramString2, paramInt);
    }
    return localModel1;
  }
  
  public void register(Label paramLabel)
  {
    if (paramLabel.isAttribute())
    {
      registerAttribute(paramLabel);
      return;
    }
    if (paramLabel.isText())
    {
      registerText(paramLabel);
      return;
    }
    registerElement(paramLabel);
  }
  
  public void registerAttribute(String paramString)
  {
    attributes.put(paramString, null);
  }
  
  public void registerAttribute(Label paramLabel)
  {
    String str = paramLabel.getName();
    if (attributes.get(str) != null) {
      throw new AttributeException("Duplicate annotation of name '%s' on %s", new Object[] { str, paramLabel });
    }
    attributes.put(str, paramLabel);
  }
  
  public void registerElement(String paramString)
  {
    if (!order.contains(paramString)) {
      order.add(paramString);
    }
    elements.put(paramString, null);
  }
  
  public void registerElement(Label paramLabel)
  {
    String str = paramLabel.getName();
    if (elements.get(str) != null) {
      throw new ElementException("Duplicate annotation of name '%s' on %s", new Object[] { str, paramLabel });
    }
    if (!order.contains(str)) {
      order.add(str);
    }
    if (paramLabel.isTextList()) {
      list = paramLabel;
    }
    elements.put(str, paramLabel);
  }
  
  public void registerText(Label paramLabel)
  {
    if (text != null) {
      throw new TextException("Duplicate text annotation on %s", new Object[] { paramLabel });
    }
    text = paramLabel;
  }
  
  public String toString()
  {
    return String.format("model '%s[%s]'", new Object[] { name, Integer.valueOf(index) });
  }
  
  public void validate(Class paramClass)
  {
    validateExpressions(paramClass);
    validateAttributes(paramClass);
    validateElements(paramClass);
    validateModels(paramClass);
    validateText(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TreeModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */