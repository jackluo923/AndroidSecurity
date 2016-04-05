package org.simpleframework.xml.stream;

class NodeReader
{
  private final EventReader reader;
  private final InputStack stack = new InputStack();
  private final StringBuilder text = new StringBuilder();
  
  public NodeReader(EventReader paramEventReader)
  {
    reader = paramEventReader;
  }
  
  private void fillText(InputNode paramInputNode)
  {
    paramInputNode = reader.peek();
    if (paramInputNode.isText())
    {
      paramInputNode = paramInputNode.getValue();
      text.append(paramInputNode);
    }
  }
  
  private boolean isName(EventNode paramEventNode, String paramString)
  {
    paramEventNode = paramEventNode.getName();
    if (paramEventNode == null) {
      return false;
    }
    return paramEventNode.equals(paramString);
  }
  
  private String readBuffer(InputNode paramInputNode)
  {
    if (text.length() > 0)
    {
      paramInputNode = text.toString();
      text.setLength(0);
      return paramInputNode;
    }
    return null;
  }
  
  private InputNode readStart(InputNode paramInputNode, EventNode paramEventNode)
  {
    InputElement localInputElement = new InputElement(paramInputNode, this, paramEventNode);
    if (text.length() > 0) {
      text.setLength(0);
    }
    paramInputNode = localInputElement;
    if (paramEventNode.isStart()) {
      paramInputNode = (InputNode)stack.push(localInputElement);
    }
    return paramInputNode;
  }
  
  private String readText(InputNode paramInputNode)
  {
    for (EventNode localEventNode = reader.peek(); (stack.top() == paramInputNode) && (localEventNode.isText()); localEventNode = reader.peek())
    {
      fillText(paramInputNode);
      reader.next();
    }
    return readBuffer(paramInputNode);
  }
  
  public boolean isEmpty(InputNode paramInputNode)
  {
    return (stack.top() == paramInputNode) && (reader.peek().isEnd());
  }
  
  public boolean isRoot(InputNode paramInputNode)
  {
    return stack.bottom() == paramInputNode;
  }
  
  public InputNode readElement(InputNode paramInputNode)
  {
    if (!stack.isRelevant(paramInputNode)) {}
    EventNode localEventNode;
    label23:
    do
    {
      return null;
      localEventNode = reader.next();
      if (localEventNode == null) {
        break;
      }
      if (!localEventNode.isEnd()) {
        break label60;
      }
    } while (stack.pop() == paramInputNode);
    label60:
    while (!localEventNode.isStart())
    {
      localEventNode = reader.next();
      break label23;
      break;
    }
    return readStart(paramInputNode, localEventNode);
  }
  
  public InputNode readElement(InputNode paramInputNode, String paramString)
  {
    if (!stack.isRelevant(paramInputNode)) {}
    label13:
    EventNode localEventNode;
    label85:
    do
    {
      do
      {
        return null;
        localEventNode = reader.peek();
      } while (localEventNode == null);
      if (localEventNode.isText()) {
        fillText(paramInputNode);
      }
      do
      {
        for (;;)
        {
          reader.next();
          break label13;
          if (!localEventNode.isEnd()) {
            break label85;
          }
          if (stack.top() == paramInputNode) {
            break;
          }
          stack.pop();
        }
      } while (!localEventNode.isStart());
    } while (!isName(localEventNode, paramString));
    return readElement(paramInputNode);
  }
  
  public InputNode readRoot()
  {
    Object localObject = null;
    if (stack.isEmpty())
    {
      InputNode localInputNode = readElement(null);
      localObject = localInputNode;
      if (localInputNode == null) {
        throw new NodeException("Document has no root element");
      }
    }
    return (InputNode)localObject;
  }
  
  public String readValue(InputNode paramInputNode)
  {
    if (!stack.isRelevant(paramInputNode)) {}
    do
    {
      return null;
      if ((text.length() > 0) || (!reader.peek().isEnd())) {
        break;
      }
    } while (stack.top() == paramInputNode);
    stack.pop();
    reader.next();
    return readText(paramInputNode);
  }
  
  public void skipElement(InputNode paramInputNode)
  {
    while (readElement(paramInputNode) != null) {}
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.NodeReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */