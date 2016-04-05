package org.codehaus.jackson.impl;

import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.util.CharTypes;

public final class JsonReadContext
  extends JsonStreamContext
{
  protected JsonReadContext _child = null;
  protected int _columnNr;
  protected String _currentName;
  protected int _lineNr;
  protected final JsonReadContext _parent;
  
  public JsonReadContext(JsonReadContext paramJsonReadContext, int paramInt1, int paramInt2, int paramInt3)
  {
    _type = paramInt1;
    _parent = paramJsonReadContext;
    _lineNr = paramInt2;
    _columnNr = paramInt3;
    _index = -1;
  }
  
  public static JsonReadContext createRootContext()
  {
    return new JsonReadContext(null, 0, 1, 0);
  }
  
  public static JsonReadContext createRootContext(int paramInt1, int paramInt2)
  {
    return new JsonReadContext(null, 0, paramInt1, paramInt2);
  }
  
  public final JsonReadContext createChildArrayContext(int paramInt1, int paramInt2)
  {
    JsonReadContext localJsonReadContext = _child;
    if (localJsonReadContext == null)
    {
      localJsonReadContext = new JsonReadContext(this, 1, paramInt1, paramInt2);
      _child = localJsonReadContext;
      return localJsonReadContext;
    }
    localJsonReadContext.reset(1, paramInt1, paramInt2);
    return localJsonReadContext;
  }
  
  public final JsonReadContext createChildObjectContext(int paramInt1, int paramInt2)
  {
    JsonReadContext localJsonReadContext = _child;
    if (localJsonReadContext == null)
    {
      localJsonReadContext = new JsonReadContext(this, 2, paramInt1, paramInt2);
      _child = localJsonReadContext;
      return localJsonReadContext;
    }
    localJsonReadContext.reset(2, paramInt1, paramInt2);
    return localJsonReadContext;
  }
  
  public final boolean expectComma()
  {
    int i = _index + 1;
    _index = i;
    return (_type != 0) && (i > 0);
  }
  
  public final String getCurrentName()
  {
    return _currentName;
  }
  
  public final JsonReadContext getParent()
  {
    return _parent;
  }
  
  public final JsonLocation getStartLocation(Object paramObject)
  {
    return new JsonLocation(paramObject, -1L, _lineNr, _columnNr);
  }
  
  protected final void reset(int paramInt1, int paramInt2, int paramInt3)
  {
    _type = paramInt1;
    _index = -1;
    _lineNr = paramInt2;
    _columnNr = paramInt3;
    _currentName = null;
  }
  
  public void setCurrentName(String paramString)
  {
    _currentName = paramString;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    switch (_type)
    {
    default: 
    case 0: 
    case 1: 
      for (;;)
      {
        return localStringBuilder.toString();
        localStringBuilder.append("/");
        continue;
        localStringBuilder.append('[');
        localStringBuilder.append(getCurrentIndex());
        localStringBuilder.append(']');
      }
    }
    localStringBuilder.append('{');
    if (_currentName != null)
    {
      localStringBuilder.append('"');
      CharTypes.appendQuoted(localStringBuilder, _currentName);
      localStringBuilder.append('"');
    }
    for (;;)
    {
      localStringBuilder.append('}');
      break;
      localStringBuilder.append('?');
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.impl.JsonReadContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */