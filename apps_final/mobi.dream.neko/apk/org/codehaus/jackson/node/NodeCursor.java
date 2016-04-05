package org.codehaus.jackson.node;

import java.util.Iterator;
import java.util.Map.Entry;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.JsonToken;

abstract class NodeCursor
  extends JsonStreamContext
{
  final NodeCursor _parent;
  
  public NodeCursor(int paramInt, NodeCursor paramNodeCursor)
  {
    _type = paramInt;
    _index = -1;
    _parent = paramNodeCursor;
  }
  
  public abstract boolean currentHasChildren();
  
  public abstract JsonNode currentNode();
  
  public abstract JsonToken endToken();
  
  public abstract String getCurrentName();
  
  public final NodeCursor getParent()
  {
    return _parent;
  }
  
  public final NodeCursor iterateChildren()
  {
    JsonNode localJsonNode = currentNode();
    if (localJsonNode == null) {
      throw new IllegalStateException("No current node");
    }
    if (localJsonNode.isArray()) {
      return new Array(localJsonNode, this);
    }
    if (localJsonNode.isObject()) {
      return new Object(localJsonNode, this);
    }
    throw new IllegalStateException("Current node of type " + localJsonNode.getClass().getName());
  }
  
  public abstract JsonToken nextToken();
  
  public abstract JsonToken nextValue();
  
  protected static final class Array
    extends NodeCursor
  {
    Iterator<JsonNode> _contents;
    JsonNode _currentNode;
    
    public Array(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
    {
      super(paramNodeCursor);
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
  
  protected static final class Object
    extends NodeCursor
  {
    Iterator<Map.Entry<String, JsonNode>> _contents;
    Map.Entry<String, JsonNode> _current;
    boolean _needEntry;
    
    public Object(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
    {
      super(paramNodeCursor);
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
  
  protected static final class RootValue
    extends NodeCursor
  {
    protected boolean _done = false;
    JsonNode _node;
    
    public RootValue(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
    {
      super(paramNodeCursor);
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
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.NodeCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */