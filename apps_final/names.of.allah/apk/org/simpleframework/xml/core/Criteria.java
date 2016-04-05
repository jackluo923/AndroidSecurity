package org.simpleframework.xml.core;

abstract interface Criteria
  extends Iterable<Object>
{
  public abstract void commit(Object paramObject);
  
  public abstract Variable get(Object paramObject);
  
  public abstract Variable get(Label paramLabel);
  
  public abstract Variable remove(Object paramObject);
  
  public abstract Variable resolve(String paramString);
  
  public abstract void set(Label paramLabel, Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Criteria
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */