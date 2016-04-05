package com.google.kagegamesgson;

import java.io.IOException;

public final class JsonNull
  extends JsonElement
{
  private static final JsonNull INSTANCE;
  
  static
  {
    JsonNull localJsonNull = new com/google/kagegamesgson/JsonNull;
    localJsonNull.<init>();
    INSTANCE = localJsonNull;
  }
  
  static JsonNull createJsonNull()
  {
    JsonNull localJsonNull = INSTANCE;
    return localJsonNull;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = paramObject instanceof JsonNull;
    return bool;
  }
  
  public int hashCode()
  {
    Class localClass = JsonNull.class;
    int i = localClass.hashCode();
    return i;
  }
  
  protected void toString(Appendable paramAppendable, Escaper paramEscaper)
    throws IOException
  {
    String str = "null";
    paramAppendable.append(str);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonNull
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */