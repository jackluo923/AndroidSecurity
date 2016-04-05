package org.codehaus.jackson.map.util;

import java.util.Collection;

public abstract interface Provider<T>
{
  public abstract Collection<T> provide();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.Provider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */