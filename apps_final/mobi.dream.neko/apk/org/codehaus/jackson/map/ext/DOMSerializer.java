package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.w3c.dom.Node;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSSerializer;

public class DOMSerializer
  extends SerializerBase<Node>
{
  protected final DOMImplementationLS _domImpl;
  
  public DOMSerializer()
  {
    super(Node.class);
    try
    {
      DOMImplementationRegistry localDOMImplementationRegistry = DOMImplementationRegistry.newInstance();
      _domImpl = ((DOMImplementationLS)localDOMImplementationRegistry.getDOMImplementation("LS"));
      return;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not instantiate DOMImplementationRegistry: " + localException.getMessage(), localException);
    }
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("string", true);
  }
  
  public void serialize(Node paramNode, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    if (_domImpl == null) {
      throw new IllegalStateException("Could not find DOM LS");
    }
    paramJsonGenerator.writeString(_domImpl.createLSSerializer().writeToString(paramNode));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.DOMSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */