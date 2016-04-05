package org.codehaus.jackson.node;

import java.util.Iterator;
import java.util.Map.Entry;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonToken;

public final class NodeCursor$Object
  extends NodeCursor
{
  Iterator<Map.Entry<String, JsonNode>> _contents;
  Map.Entry<String, JsonNode> _current;
  boolean _needEntry;
  
  public NodeCursor$Object(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
  {
    super(2, paramNodeCursor);
    _contents = ((ObjectNode)paramJsonNode).getFields();
    _needEntry = true;
  }
  
  public boolean currentHasChildren()
  {
    return ((ContainerNode)currentNode()).size() > 0;
  }
  
  public JsonNode currentNode()
  {
    if (_current == null) {
      return null;
    }
    return (JsonNode)_current.getValue();
  }
  
  public JsonToken endToken()
  {
    return JsonToken.END_OBJECT;
  }
  
  public String getCurrentName()
  {
    if (_current == null) {
      return null;
    }
    return (String)_current.getKey();
  }
  
  public JsonToken nextToken()
  {
    if (_needEntry)
    {
      if (!_contents.hasNext())
      {
        _current = null;
        return null;
      }
      _needEntry = false;
      _current = ((Map.Entry)_contents.next());
      return JsonToken.FIELD_NAME;
    }
    _needEntry = true;
    return ((JsonNode)_current.getValue()).asToken();
  }
  
  public JsonToken nextValue()
  {
    JsonToken localJsonToken2 = nextToken();
    JsonToken localJsonToken1 = localJsonToken2;
    if (localJsonToken2 == JsonToken.FIELD_NAME) {
      localJsonToken1 = nextToken();
    }
    return localJsonToken1;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.NodeCursor.Object
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */