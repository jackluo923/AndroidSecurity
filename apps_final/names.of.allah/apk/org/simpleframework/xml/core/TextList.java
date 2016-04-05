package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class TextList
  implements Repeater
{
  private final CollectionFactory factory;
  private final Primitive primitive;
  private final Type type = new ClassType(String.class);
  
  public TextList(Context paramContext, Type paramType, Label paramLabel)
  {
    factory = new CollectionFactory(paramContext, paramType);
    primitive = new Primitive(paramContext, type);
  }
  
  public Object read(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    Object localObject = localInstance.getInstance();
    if (localInstance.isReference()) {
      return localInstance.getInstance();
    }
    return read(paramInputNode, localObject);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Collection localCollection = (Collection)paramObject;
    paramInputNode = primitive.read(paramInputNode);
    if (paramInputNode != null) {
      localCollection.add(paramInputNode);
    }
    return paramObject;
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    paramObject = (Collection)paramObject;
    paramOutputNode = paramOutputNode.getParent();
    paramObject = ((Collection)paramObject).iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Object localObject = ((Iterator)paramObject).next();
      primitive.write(paramOutputNode, localObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TextList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */