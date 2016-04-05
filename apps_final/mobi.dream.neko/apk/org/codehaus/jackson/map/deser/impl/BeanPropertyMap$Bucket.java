package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class BeanPropertyMap$Bucket
{
  public final String key;
  public final Bucket next;
  public final SettableBeanProperty value;
  
  public BeanPropertyMap$Bucket(Bucket paramBucket, String paramString, SettableBeanProperty paramSettableBeanProperty)
  {
    next = paramBucket;
    key = paramString;
    value = paramSettableBeanProperty;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.BeanPropertyMap.Bucket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */