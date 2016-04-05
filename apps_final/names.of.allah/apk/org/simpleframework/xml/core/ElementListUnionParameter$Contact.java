package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementList;

class ElementListUnionParameter$Contact
  extends ParameterContact<ElementList>
{
  public ElementListUnionParameter$Contact(ElementList paramElementList, Constructor paramConstructor, int paramInt)
  {
    super(paramElementList, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((ElementList)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementListUnionParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */