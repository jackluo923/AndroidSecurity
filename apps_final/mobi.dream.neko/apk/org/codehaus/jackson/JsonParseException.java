package org.codehaus.jackson;

public class JsonParseException
  extends JsonProcessingException
{
  static final long serialVersionUID = 123L;
  
  public JsonParseException(String paramString, JsonLocation paramJsonLocation)
  {
    super(paramString, paramJsonLocation);
  }
  
  public JsonParseException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramString, paramJsonLocation, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.JsonParseException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */