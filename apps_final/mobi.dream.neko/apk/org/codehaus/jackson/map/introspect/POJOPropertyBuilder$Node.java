package org.codehaus.jackson.map.introspect;

final class POJOPropertyBuilder$Node<T>
{
  public final String explicitName;
  public final boolean isMarkedIgnored;
  public final boolean isVisible;
  public final Node<T> next;
  public final T value;
  
  public POJOPropertyBuilder$Node(T paramT, Node<T> paramNode, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    value = paramT;
    next = paramNode;
    if (paramString == null) {}
    for (explicitName = null;; explicitName = paramT)
    {
      isVisible = paramBoolean1;
      isMarkedIgnored = paramBoolean2;
      return;
      paramT = paramString;
      if (paramString.length() == 0) {
        paramT = null;
      }
    }
  }
  
  private Node<T> append(Node<T> paramNode)
  {
    if (next == null) {
      return withNext(paramNode);
    }
    return withNext(next.append(paramNode));
  }
  
  public String toString()
  {
    String str2 = value.toString() + "[visible=" + isVisible + "]";
    String str1 = str2;
    if (next != null) {
      str1 = str2 + ", " + next.toString();
    }
    return str1;
  }
  
  public Node<T> trimByVisibility()
  {
    Object localObject;
    if (next == null) {
      localObject = this;
    }
    do
    {
      Node localNode;
      do
      {
        return (Node<T>)localObject;
        localNode = next.trimByVisibility();
        if (explicitName != null)
        {
          if (explicitName == null) {
            return withNext(null);
          }
          return withNext(localNode);
        }
        localObject = localNode;
      } while (explicitName != null);
      if (isVisible == isVisible) {
        return withNext(localNode);
      }
      localObject = localNode;
    } while (!isVisible);
    return withNext(null);
  }
  
  public Node<T> withNext(Node<T> paramNode)
  {
    if (paramNode == next) {
      return this;
    }
    return new Node(value, paramNode, explicitName, isVisible, isMarkedIgnored);
  }
  
  public Node<T> withValue(T paramT)
  {
    if (paramT == value) {
      return this;
    }
    return new Node(paramT, next, explicitName, isVisible, isMarkedIgnored);
  }
  
  public Node<T> withoutIgnored()
  {
    if (isMarkedIgnored)
    {
      if (next == null) {
        return null;
      }
      return next.withoutIgnored();
    }
    if (next != null)
    {
      Node localNode = next.withoutIgnored();
      if (localNode != next) {
        return withNext(localNode);
      }
    }
    return this;
  }
  
  public Node<T> withoutNonVisible()
  {
    if (next == null) {}
    for (Node localNode1 = null;; localNode1 = next.withoutNonVisible())
    {
      Node localNode2 = localNode1;
      if (isVisible) {
        localNode2 = withNext(localNode1);
      }
      return localNode2;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertyBuilder.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */