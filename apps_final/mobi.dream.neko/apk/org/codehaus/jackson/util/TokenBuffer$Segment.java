package org.codehaus.jackson.util;

import org.codehaus.jackson.JsonToken;

public final class TokenBuffer$Segment
{
  public static final int TOKENS_PER_SEGMENT = 16;
  private static final JsonToken[] TOKEN_TYPES_BY_INDEX = new JsonToken[16];
  protected Segment _next;
  protected long _tokenTypes;
  protected final Object[] _tokens = new Object[16];
  
  static
  {
    JsonToken[] arrayOfJsonToken = JsonToken.values();
    System.arraycopy(arrayOfJsonToken, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, arrayOfJsonToken.length - 1));
  }
  
  public Segment append(int paramInt, JsonToken paramJsonToken)
  {
    if (paramInt < 16)
    {
      set(paramInt, paramJsonToken);
      return null;
    }
    _next = new Segment();
    _next.set(0, paramJsonToken);
    return _next;
  }
  
  public Segment append(int paramInt, JsonToken paramJsonToken, Object paramObject)
  {
    if (paramInt < 16)
    {
      set(paramInt, paramJsonToken, paramObject);
      return null;
    }
    _next = new Segment();
    _next.set(0, paramJsonToken, paramObject);
    return _next;
  }
  
  public Object get(int paramInt)
  {
    return _tokens[paramInt];
  }
  
  public Segment next()
  {
    return _next;
  }
  
  public void set(int paramInt, JsonToken paramJsonToken)
  {
    long l2 = paramJsonToken.ordinal();
    long l1 = l2;
    if (paramInt > 0) {
      l1 = l2 << (paramInt << 2);
    }
    _tokenTypes |= l1;
  }
  
  public void set(int paramInt, JsonToken paramJsonToken, Object paramObject)
  {
    _tokens[paramInt] = paramObject;
    long l2 = paramJsonToken.ordinal();
    long l1 = l2;
    if (paramInt > 0) {
      l1 = l2 << (paramInt << 2);
    }
    _tokenTypes |= l1;
  }
  
  public JsonToken type(int paramInt)
  {
    long l2 = _tokenTypes;
    long l1 = l2;
    if (paramInt > 0) {
      l1 = l2 >> (paramInt << 2);
    }
    paramInt = (int)l1;
    return TOKEN_TYPES_BY_INDEX[(paramInt & 0xF)];
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer.Segment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */