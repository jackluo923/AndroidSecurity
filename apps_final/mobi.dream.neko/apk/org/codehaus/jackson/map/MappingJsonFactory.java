package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.format.InputAccessor;
import org.codehaus.jackson.format.MatchStrength;

public class MappingJsonFactory
  extends JsonFactory
{
  public MappingJsonFactory()
  {
    this(null);
  }
  
  public MappingJsonFactory(ObjectMapper paramObjectMapper)
  {
    super(paramObjectMapper);
    if (paramObjectMapper == null) {
      setCodec(new ObjectMapper(this));
    }
  }
  
  public final ObjectMapper getCodec()
  {
    return (ObjectMapper)_objectCodec;
  }
  
  public String getFormatName()
  {
    return "JSON";
  }
  
  public MatchStrength hasFormat(InputAccessor paramInputAccessor)
    throws IOException
  {
    return hasJSONFormat(paramInputAccessor);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.MappingJsonFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */