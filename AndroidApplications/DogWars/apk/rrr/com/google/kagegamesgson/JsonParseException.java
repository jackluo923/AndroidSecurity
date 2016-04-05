package com.google.kagegamesgson;

public class JsonParseException
  extends RuntimeException
{
  static final long serialVersionUID = -4086729973971783390L;
  
  public JsonParseException(String paramString)
  {
    super(paramString);
  }
  
  public JsonParseException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public JsonParseException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonParseException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */