package org.simpleframework.xml.core;

class KeyBuilder$Key
{
  private final KeyBuilder.KeyType type;
  private final String value;
  
  public KeyBuilder$Key(KeyBuilder.KeyType paramKeyType, String paramString)
  {
    value = paramString;
    type = paramKeyType;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Key)) {
      return equals((Key)paramObject);
    }
    return false;
  }
  
  public boolean equals(Key paramKey)
  {
    if (type == type) {
      return value.equals(value);
    }
    return false;
  }
  
  public int hashCode()
  {
    return value.hashCode();
  }
  
  public String toString()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.KeyBuilder.Key
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */