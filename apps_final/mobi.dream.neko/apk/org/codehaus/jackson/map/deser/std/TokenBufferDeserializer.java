package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.util.TokenBuffer;

@JacksonStdImpl
public class TokenBufferDeserializer
  extends StdScalarDeserializer<TokenBuffer>
{
  public TokenBufferDeserializer()
  {
    super(TokenBuffer.class);
  }
  
  public TokenBuffer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    paramDeserializationContext = new TokenBuffer(paramJsonParser.getCodec());
    paramDeserializationContext.copyCurrentStructure(paramJsonParser);
    return paramDeserializationContext;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.TokenBufferDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */