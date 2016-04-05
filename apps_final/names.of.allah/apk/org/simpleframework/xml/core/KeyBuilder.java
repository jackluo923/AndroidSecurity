package org.simpleframework.xml.core;

import java.util.Arrays;

class KeyBuilder
{
  private final Label label;
  
  public KeyBuilder(Label paramLabel)
  {
    label = paramLabel;
  }
  
  private Object getKey(KeyBuilder.KeyType paramKeyType)
  {
    String str = getKey(label.getPaths());
    if (paramKeyType == null) {
      return str;
    }
    return new KeyBuilder.Key(paramKeyType, str);
  }
  
  private String getKey(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramArrayOfString.length > 0)
    {
      Arrays.sort(paramArrayOfString);
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(paramArrayOfString[i]);
        localStringBuilder.append('>');
        i += 1;
      }
    }
    return localStringBuilder.toString();
  }
  
  public Object getKey()
  {
    if (label.isAttribute()) {
      return getKey(KeyBuilder.KeyType.ATTRIBUTE);
    }
    return getKey(KeyBuilder.KeyType.ELEMENT);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.KeyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */