package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.InputNode;

class Composite$Builder
{
  protected final Composite composite;
  protected final Criteria criteria;
  protected final Schema schema;
  protected final Instance value;
  
  public Composite$Builder(Composite paramComposite, Criteria paramCriteria, Schema paramSchema, Instance paramInstance)
  {
    composite = paramComposite;
    criteria = paramCriteria;
    schema = paramSchema;
    value = paramInstance;
  }
  
  public Object read(InputNode paramInputNode)
  {
    Object localObject = value.getInstance();
    Section localSection = schema.getSection();
    value.setInstance(localObject);
    Composite.access$100(composite, paramInputNode, localObject, schema);
    Composite.access$200(composite, paramInputNode, localObject, localSection);
    Composite.access$300(composite, paramInputNode, localObject, localSection);
    Composite.access$400(composite, paramInputNode, localObject, localSection);
    criteria.commit(localObject);
    return localObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Composite.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */