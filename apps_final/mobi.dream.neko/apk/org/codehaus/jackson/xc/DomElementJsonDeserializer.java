package org.codehaus.jackson.xc;

import java.io.IOException;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.std.StdDeserializer;
import org.codehaus.jackson.node.ArrayNode;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DomElementJsonDeserializer
  extends StdDeserializer<Element>
{
  private final DocumentBuilder builder;
  
  public DomElementJsonDeserializer()
  {
    super(Element.class);
    try
    {
      DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
      localDocumentBuilderFactory.setNamespaceAware(true);
      builder = localDocumentBuilderFactory.newDocumentBuilder();
      return;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      throw new RuntimeException();
    }
  }
  
  public DomElementJsonDeserializer(DocumentBuilder paramDocumentBuilder)
  {
    super(Element.class);
    builder = paramDocumentBuilder;
  }
  
  public Element deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return fromNode(builder.newDocument(), paramJsonParser.readValueAsTree());
  }
  
  protected Element fromNode(Document paramDocument, JsonNode paramJsonNode)
    throws IOException
  {
    if (paramJsonNode.get("namespace") != null)
    {
      localObject1 = paramJsonNode.get("namespace").asText();
      if (paramJsonNode.get("name") == null) {
        break label59;
      }
    }
    label59:
    for (Object localObject2 = paramJsonNode.get("name").asText();; localObject2 = null)
    {
      if (localObject2 != null) {
        break label65;
      }
      throw new JsonMappingException("No name for DOM element was provided in the JSON object.");
      localObject1 = null;
      break;
    }
    label65:
    Element localElement = paramDocument.createElementNS((String)localObject1, (String)localObject2);
    Object localObject1 = paramJsonNode.get("attributes");
    Object localObject3;
    if ((localObject1 != null) && ((localObject1 instanceof ArrayNode)))
    {
      Iterator localIterator = ((JsonNode)localObject1).getElements();
      label143:
      label165:
      label212:
      label218:
      label222:
      while (localIterator.hasNext())
      {
        localObject3 = (JsonNode)localIterator.next();
        if (((JsonNode)localObject3).get("namespace") != null)
        {
          localObject1 = ((JsonNode)localObject3).get("namespace").asText();
          if (((JsonNode)localObject3).get("name") == null) {
            break label212;
          }
          localObject2 = ((JsonNode)localObject3).get("name").asText();
          if (((JsonNode)localObject3).get("$") == null) {
            break label218;
          }
        }
        for (localObject3 = ((JsonNode)localObject3).get("$").asText();; localObject3 = null)
        {
          if (localObject2 == null) {
            break label222;
          }
          localElement.setAttributeNS((String)localObject1, (String)localObject2, (String)localObject3);
          break;
          localObject1 = null;
          break label143;
          localObject2 = null;
          break label165;
        }
      }
    }
    paramJsonNode = paramJsonNode.get("children");
    if ((paramJsonNode != null) && ((paramJsonNode instanceof ArrayNode)))
    {
      localObject2 = paramJsonNode.getElements();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (JsonNode)((Iterator)localObject2).next();
        if (((JsonNode)localObject3).get("name") != null)
        {
          paramJsonNode = ((JsonNode)localObject3).get("name").asText();
          label291:
          if (((JsonNode)localObject3).get("$") == null) {
            break label339;
          }
        }
        label339:
        for (localObject1 = ((JsonNode)localObject3).get("$").asText();; localObject1 = null)
        {
          if (localObject1 == null) {
            break label344;
          }
          localElement.appendChild(paramDocument.createTextNode((String)localObject1));
          break;
          paramJsonNode = null;
          break label291;
        }
        label344:
        if (paramJsonNode != null) {
          localElement.appendChild(fromNode(paramDocument, (JsonNode)localObject3));
        }
      }
    }
    return localElement;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.DomElementJsonDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */