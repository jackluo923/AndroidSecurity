package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;

class Composite$Injector
  extends Composite.Builder
{
  private Composite$Injector(Composite paramComposite1, Composite paramComposite2, Criteria paramCriteria, Schema paramSchema, Instance paramInstance)
  {
    super(paramComposite2, paramCriteria, paramSchema, paramInstance);
  }
  
  private Object readInject(InputNode paramInputNode)
  {
    paramInputNode = schema.getInstantiator().getInstance(criteria);
    value.setInstance(paramInputNode);
    criteria.commit(paramInputNode);
    return paramInputNode;
  }
  
  public Object read(InputNode paramInputNode)
  {
    Section localSection = schema.getSection();
    Composite.access$100(composite, paramInputNode, null, schema);
    Composite.access$200(composite, paramInputNode, null, localSection);
    Composite.access$300(composite, paramInputNode, null, localSection);
    Composite.access$400(composite, paramInputNode, null, localSection);
    return readInject(paramInputNode);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Composite.Injector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */