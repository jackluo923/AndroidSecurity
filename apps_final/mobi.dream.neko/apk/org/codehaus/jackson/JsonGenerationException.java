package org.codehaus.jackson;

public class JsonGenerationException
  extends JsonProcessingException
{
  static final long serialVersionUID = 123L;
  
  public JsonGenerationException(String paramString)
  {
    super(paramString, (JsonLocation)null);
  }
  
  public JsonGenerationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, (JsonLocation)null, paramThrowable);
  }
  
  public JsonGenerationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.JsonGenerationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */