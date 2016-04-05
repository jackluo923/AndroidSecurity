package org.simpleframework.xml.core;

import java.util.List;

abstract interface Instantiator
{
  public abstract List<Creator> getCreators();
  
  public abstract Object getInstance();
  
  public abstract Object getInstance(Criteria paramCriteria);
  
  public abstract Parameter getParameter(String paramString);
  
  public abstract List<Parameter> getParameters();
  
  public abstract boolean isDefault();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Instantiator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */