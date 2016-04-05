package org.codehaus.jackson.map;

public class RuntimeJsonMappingException
  extends RuntimeException
{
  public RuntimeJsonMappingException(String paramString)
  {
    super(paramString);
  }
  
  public RuntimeJsonMappingException(String paramString, JsonMappingException paramJsonMappingException)
  {
    super(paramString, paramJsonMappingException);
  }
  
  public RuntimeJsonMappingException(JsonMappingException paramJsonMappingException)
  {
    super(paramJsonMappingException);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.RuntimeJsonMappingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */