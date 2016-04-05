package org.codehaus.jackson.node;

import java.util.Iterator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonToken;

public final class NodeCursor$Array
  extends NodeCursor
{
  Iterator<JsonNode> _contents;
  JsonNode _currentNode;
  
  public NodeCursor$Array(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
  {
    super(1, paramNodeCursor);
    _contents = paramJsonNode.getElements();
  }
  
  public boolean currentHasChildren()
  {
    return ((ContainerNode)currentNode()).size() > 0;
  }
  
  public JsonNode currentNode()
  {
    return _currentNode;
  }
  
  public JsonToken endToken()
  {
    return JsonToken.END_ARRAY;
  }
  
  public String getCurrentName()
  {
    return null;
  }
  
  public JsonToken nextToken()
  {
    if (!_contents.hasNext())
    {
      _currentNode = null;
      return null;
    }
    _currentNode = ((JsonNode)_contents.next());
    return _currentNode.asToken();
  }
  
  public JsonToken nextValue()
  {
    return nextToken();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.NodeCursor.Array
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */