package com.google.kagegamesgson;

public final class JsonSyntaxException
  extends JsonParseException
{
  private static final long serialVersionUID = 1L;
  
  public JsonSyntaxException(String paramString)
  {
    super(paramString);
  }
  
  public JsonSyntaxException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public JsonSyntaxException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonSyntaxException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */