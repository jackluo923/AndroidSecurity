package org.simpleframework.xml.core;

import org.simpleframework.xml.Order;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ModelAssembler
{
  private final ExpressionBuilder builder;
  private final Detail detail;
  private final Format format;
  
  public ModelAssembler(ExpressionBuilder paramExpressionBuilder, Detail paramDetail, Support paramSupport)
  {
    format = paramSupport.getFormat();
    builder = paramExpressionBuilder;
    detail = paramDetail;
  }
  
  private void assembleAttributes(Model paramModel, Order paramOrder)
  {
    paramOrder = paramOrder.attributes();
    int j = paramOrder.length;
    int i = 0;
    if (i < j)
    {
      String str = paramOrder[i];
      Expression localExpression = builder.build(str);
      if ((!localExpression.isAttribute()) && (localExpression.isPath())) {
        throw new PathException("Ordered attribute '%s' references an element in %s", new Object[] { localExpression, detail });
      }
      if (!localExpression.isPath()) {
        paramModel.registerAttribute(format.getStyle().getAttribute(str));
      }
      for (;;)
      {
        i += 1;
        break;
        registerAttributes(paramModel, localExpression);
      }
    }
  }
  
  private void assembleElements(Model paramModel, Order paramOrder)
  {
    paramOrder = paramOrder.elements();
    int j = paramOrder.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramOrder[i];
      localObject = builder.build((String)localObject);
      if (((Expression)localObject).isAttribute()) {
        throw new PathException("Ordered element '%s' references an attribute in %s", new Object[] { localObject, detail });
      }
      registerElements(paramModel, (Expression)localObject);
      i += 1;
    }
  }
  
  private void registerAttribute(Model paramModel, Expression paramExpression)
  {
    paramExpression = paramExpression.getFirst();
    if (paramExpression != null) {
      paramModel.registerAttribute(paramExpression);
    }
  }
  
  private void registerAttributes(Model paramModel, Expression paramExpression)
  {
    Object localObject;
    String str;
    do
    {
      localObject = paramExpression.getPrefix();
      str = paramExpression.getFirst();
      int i = paramExpression.getIndex();
      if (!paramExpression.isPath()) {
        break;
      }
      localObject = paramModel.register(str, (String)localObject, i);
      paramExpression = paramExpression.getPath(1);
      paramModel = (Model)localObject;
    } while (localObject != null);
    throw new PathException("Element '%s' does not exist in %s", new Object[] { str, detail });
    registerAttribute(paramModel, paramExpression);
  }
  
  private void registerElement(Model paramModel, Expression paramExpression)
  {
    String str1 = paramExpression.getPrefix();
    String str2 = paramExpression.getFirst();
    int i = paramExpression.getIndex();
    if ((i > 1) && (paramModel.lookup(str2, i - 1) == null)) {
      throw new PathException("Ordered element '%s' in path '%s' is out of sequence for %s", new Object[] { str2, paramExpression, detail });
    }
    paramModel.register(str2, str1, i);
  }
  
  private void registerElements(Model paramModel, Expression paramExpression)
  {
    Object localObject1 = paramExpression.getPrefix();
    Object localObject2 = paramExpression.getFirst();
    int i = paramExpression.getIndex();
    if (localObject2 != null)
    {
      localObject1 = paramModel.register((String)localObject2, (String)localObject1, i);
      localObject2 = paramExpression.getPath(1);
      if (paramExpression.isPath()) {
        registerElements((Model)localObject1, (Expression)localObject2);
      }
    }
    registerElement(paramModel, paramExpression);
  }
  
  public void assemble(Model paramModel, Order paramOrder)
  {
    assembleElements(paramModel, paramOrder);
    assembleAttributes(paramModel, paramOrder);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelAssembler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */