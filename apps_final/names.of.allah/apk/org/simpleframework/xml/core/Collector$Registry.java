package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class Collector$Registry
  extends LinkedHashMap<Object, Variable>
{
  public Iterator<Object> iterator()
  {
    return keySet().iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Collector.Registry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */