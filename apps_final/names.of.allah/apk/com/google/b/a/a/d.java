package com.google.b.a.a;

import java.util.ArrayList;
import java.util.List;

public abstract class d
  extends h
{
  protected List<j> unknownFieldData;
  
  public <T> T getExtension(e<T> parame)
  {
    return (T)k.a(parame, unknownFieldData);
  }
  
  public int getSerializedSize()
  {
    int i = k.a(unknownFieldData);
    cachedSize = i;
    return i;
  }
  
  public <T> void setExtension(e<T> parame, T paramT)
  {
    if (unknownFieldData == null) {
      unknownFieldData = new ArrayList();
    }
    k.a(parame, paramT, unknownFieldData);
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */