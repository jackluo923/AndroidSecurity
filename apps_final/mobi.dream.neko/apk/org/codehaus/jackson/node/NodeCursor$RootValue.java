package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonToken;

public final class NodeCursor$RootValue
  extends NodeCursor
{
  protected boolean _done = false;
  JsonNode _node;
  
  public NodeCursor$RootValue(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
  {
    super(0, paramNodeCursor);
    _node = paramJsonNode;
  }
  
  public boolean currentHasChildren()
  {
    return false;
  }
  
  public JsonNode currentNode()
  {
    return _node;
  }
  
  public JsonToken endToken()
  {
    return null;
  }
  
  public String getCurrentName()
  {
    return null;
  }
  
  public JsonToken nextToken()
  {
    if (!_done)
    {
      _done = true;
      return _node.asToken();
    }
    _node = null;
    return null;
  }
  
  public JsonToken nextValue()
  {
    return nextToken();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.NodeCursor.RootValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */