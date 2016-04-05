package org.codehaus.jackson.xc;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.codehaus.jackson.node.ObjectNode;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DomElementJsonSerializer
  extends SerializerBase<Element>
{
  public DomElementJsonSerializer()
  {
    super(Element.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    paramSerializerProvider = createSchemaNode("object", true);
    paramSerializerProvider.put("name", createSchemaNode("string"));
    paramSerializerProvider.put("namespace", createSchemaNode("string", true));
    paramSerializerProvider.put("attributes", createSchemaNode("array", true));
    paramSerializerProvider.put("children", createSchemaNode("array", true));
    return paramSerializerProvider;
  }
  
  public void serialize(Element paramElement, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeStringField("name", paramElement.getTagName());
    if (paramElement.getNamespaceURI() != null) {
      paramJsonGenerator.writeStringField("namespace", paramElement.getNamespaceURI());
    }
    Object localObject1 = paramElement.getAttributes();
    int i;
    if ((localObject1 != null) && (((NamedNodeMap)localObject1).getLength() > 0))
    {
      paramJsonGenerator.writeArrayFieldStart("attributes");
      i = 0;
      while (i < ((NamedNodeMap)localObject1).getLength())
      {
        Object localObject2 = (Attr)((NamedNodeMap)localObject1).item(i);
        paramJsonGenerator.writeStartObject();
        paramJsonGenerator.writeStringField("$", ((Attr)localObject2).getValue());
        paramJsonGenerator.writeStringField("name", ((Attr)localObject2).getName());
        localObject2 = ((Attr)localObject2).getNamespaceURI();
        if (localObject2 != null) {
          paramJsonGenerator.writeStringField("namespace", (String)localObject2);
        }
        paramJsonGenerator.writeEndObject();
        i += 1;
      }
      paramJsonGenerator.writeEndArray();
    }
    paramElement = paramElement.getChildNodes();
    if ((paramElement != null) && (paramElement.getLength() > 0))
    {
      paramJsonGenerator.writeArrayFieldStart("children");
      i = 0;
      if (i < paramElement.getLength())
      {
        localObject1 = paramElement.item(i);
        switch (((Node)localObject1).getNodeType())
        {
        }
        for (;;)
        {
          i += 1;
          break;
          paramJsonGenerator.writeStartObject();
          paramJsonGenerator.writeStringField("$", ((Node)localObject1).getNodeValue());
          paramJsonGenerator.writeEndObject();
          continue;
          serialize((Element)localObject1, paramJsonGenerator, paramSerializerProvider);
        }
      }
      paramJsonGenerator.writeEndArray();
    }
    paramJsonGenerator.writeEndObject();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.DomElementJsonSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */