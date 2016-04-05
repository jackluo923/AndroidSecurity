package org.simpleframework.xml.core;

abstract interface Creator
{
  public abstract Object getInstance();
  
  public abstract Object getInstance(Criteria paramCriteria);
  
  public abstract double getScore(Criteria paramCriteria);
  
  public abstract Signature getSignature();
  
  public abstract Class getType();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Creator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */