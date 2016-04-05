package org.codehaus.jackson.map.introspect;

import org.codehaus.jackson.map.BeanPropertyDefinition;

public class POJOPropertyBuilder
  extends BeanPropertyDefinition
  implements Comparable<POJOPropertyBuilder>
{
  protected Node<AnnotatedParameter> _ctorParameters;
  protected Node<AnnotatedField> _fields;
  protected Node<AnnotatedMethod> _getters;
  protected final String _internalName;
  protected final String _name;
  protected Node<AnnotatedMethod> _setters;
  
  public POJOPropertyBuilder(String paramString)
  {
    _internalName = paramString;
    _name = paramString;
  }
  
  public POJOPropertyBuilder(POJOPropertyBuilder paramPOJOPropertyBuilder, String paramString)
  {
    _internalName = _internalName;
    _name = paramString;
    _fields = _fields;
    _ctorParameters = _ctorParameters;
    _getters = _getters;
    _setters = _setters;
  }
  
  private <T> boolean _anyExplicitNames(Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if ((explicitName != null) && (explicitName.length() > 0)) {
        return true;
      }
      paramNode = next;
    }
    return false;
  }
  
  private <T> boolean _anyIgnorals(Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if (isMarkedIgnored) {
        return true;
      }
      paramNode = next;
    }
    return false;
  }
  
  private <T> boolean _anyVisible(Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if (isVisible) {
        return true;
      }
      paramNode = next;
    }
    return false;
  }
  
  private AnnotationMap _mergeAnnotations(int paramInt, Node<? extends AnnotatedMember>... paramVarArgs)
  {
    AnnotationMap localAnnotationMap2 = ((AnnotatedMember)value).getAllAnnotations();
    paramInt += 1;
    for (;;)
    {
      AnnotationMap localAnnotationMap1 = localAnnotationMap2;
      if (paramInt < paramVarArgs.length)
      {
        if (paramVarArgs[paramInt] != null) {
          localAnnotationMap1 = AnnotationMap.merge(localAnnotationMap2, _mergeAnnotations(paramInt, paramVarArgs));
        }
      }
      else {
        return localAnnotationMap1;
      }
      paramInt += 1;
    }
  }
  
  private <T> Node<T> _removeIgnored(Node<T> paramNode)
  {
    if (paramNode == null) {
      return paramNode;
    }
    return paramNode.withoutIgnored();
  }
  
  private <T> Node<T> _removeNonVisible(Node<T> paramNode)
  {
    if (paramNode == null) {
      return paramNode;
    }
    return paramNode.withoutNonVisible();
  }
  
  private <T> Node<T> _trimByVisibility(Node<T> paramNode)
  {
    if (paramNode == null) {
      return paramNode;
    }
    return paramNode.trimByVisibility();
  }
  
  private Node<? extends AnnotatedMember> findRenamed(Node<? extends AnnotatedMember> paramNode1, Node<? extends AnnotatedMember> paramNode2)
  {
    if (paramNode1 != null)
    {
      String str = explicitName;
      Node<? extends AnnotatedMember> localNode;
      if (str == null) {
        localNode = paramNode2;
      }
      label50:
      do
      {
        for (;;)
        {
          paramNode1 = next;
          paramNode2 = localNode;
          break;
          localNode = paramNode2;
          if (!str.equals(_name))
          {
            if (paramNode2 != null) {
              break label50;
            }
            localNode = paramNode1;
          }
        }
        localNode = paramNode2;
      } while (str.equals(explicitName));
      throw new IllegalStateException("Conflicting property name definitions: '" + explicitName + "' (for " + value + ") vs '" + explicitName + "' (for " + value + ")");
    }
    return paramNode2;
  }
  
  private static <T> Node<T> merge(Node<T> paramNode1, Node<T> paramNode2)
  {
    if (paramNode1 == null) {
      return paramNode2;
    }
    if (paramNode2 == null) {
      return paramNode1;
    }
    return paramNode1.append(paramNode2);
  }
  
  public void addAll(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    _fields = merge(_fields, _fields);
    _ctorParameters = merge(_ctorParameters, _ctorParameters);
    _getters = merge(_getters, _getters);
    _setters = merge(_setters, _setters);
  }
  
  public void addCtor(AnnotatedParameter paramAnnotatedParameter, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    _ctorParameters = new Node(paramAnnotatedParameter, _ctorParameters, paramString, paramBoolean1, paramBoolean2);
  }
  
  public void addField(AnnotatedField paramAnnotatedField, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    _fields = new Node(paramAnnotatedField, _fields, paramString, paramBoolean1, paramBoolean2);
  }
  
  public void addGetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    _getters = new Node(paramAnnotatedMethod, _getters, paramString, paramBoolean1, paramBoolean2);
  }
  
  public void addSetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    _setters = new Node(paramAnnotatedMethod, _setters, paramString, paramBoolean1, paramBoolean2);
  }
  
  public boolean anyDeserializeIgnorals()
  {
    return (_anyIgnorals(_fields)) || (_anyIgnorals(_setters)) || (_anyIgnorals(_ctorParameters));
  }
  
  public boolean anyExplicitNames()
  {
    return (_anyExplicitNames(_fields)) || (_anyExplicitNames(_getters)) || (_anyExplicitNames(_setters)) || (_anyExplicitNames(_ctorParameters));
  }
  
  public boolean anyIgnorals()
  {
    return (_anyIgnorals(_fields)) || (_anyIgnorals(_getters)) || (_anyIgnorals(_setters)) || (_anyIgnorals(_ctorParameters));
  }
  
  public boolean anySerializeIgnorals()
  {
    return (_anyIgnorals(_fields)) || (_anyIgnorals(_getters));
  }
  
  public boolean anyVisible()
  {
    return (_anyVisible(_fields)) || (_anyVisible(_getters)) || (_anyVisible(_setters)) || (_anyVisible(_ctorParameters));
  }
  
  public int compareTo(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    if (_ctorParameters != null)
    {
      if (_ctorParameters == null) {
        return -1;
      }
    }
    else if (_ctorParameters != null) {
      return 1;
    }
    return getName().compareTo(paramPOJOPropertyBuilder.getName());
  }
  
  public boolean couldSerialize()
  {
    return (_getters != null) || (_fields != null);
  }
  
  public String findNewName()
  {
    Node localNode = findRenamed(_fields, null);
    localNode = findRenamed(_getters, localNode);
    localNode = findRenamed(_setters, localNode);
    localNode = findRenamed(_ctorParameters, localNode);
    if (localNode == null) {
      return null;
    }
    return explicitName;
  }
  
  public AnnotatedMember getAccessor()
  {
    AnnotatedMethod localAnnotatedMethod = getGetter();
    Object localObject = localAnnotatedMethod;
    if (localAnnotatedMethod == null) {
      localObject = getField();
    }
    return (AnnotatedMember)localObject;
  }
  
  public AnnotatedParameter getConstructorParameter()
  {
    if (_ctorParameters == null) {
      return null;
    }
    Object localObject = _ctorParameters;
    Node localNode;
    do
    {
      if ((((AnnotatedParameter)value).getOwner() instanceof AnnotatedConstructor)) {
        return (AnnotatedParameter)value;
      }
      localNode = next;
      localObject = localNode;
    } while (localNode != null);
    return (AnnotatedParameter)_ctorParameters.value;
  }
  
  public AnnotatedField getField()
  {
    Object localObject2;
    if (_fields == null) {
      localObject2 = null;
    }
    Object localObject1;
    Node localNode;
    do
    {
      return (AnnotatedField)localObject2;
      localObject1 = (AnnotatedField)_fields.value;
      localNode = _fields.next;
      localObject2 = localObject1;
    } while (localNode == null);
    AnnotatedField localAnnotatedField = (AnnotatedField)value;
    Class localClass1 = ((AnnotatedField)localObject1).getDeclaringClass();
    Class localClass2 = localAnnotatedField.getDeclaringClass();
    if (localClass1 != localClass2)
    {
      if (localClass1.isAssignableFrom(localClass2)) {
        localObject2 = localAnnotatedField;
      }
      do
      {
        localNode = next;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
      } while (localClass2.isAssignableFrom(localClass1));
    }
    throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + ((AnnotatedField)localObject1).getFullName() + " vs " + localAnnotatedField.getFullName());
  }
  
  public AnnotatedMethod getGetter()
  {
    Object localObject2;
    if (_getters == null) {
      localObject2 = null;
    }
    Object localObject1;
    Node localNode;
    do
    {
      return (AnnotatedMethod)localObject2;
      localObject1 = (AnnotatedMethod)_getters.value;
      localNode = _getters.next;
      localObject2 = localObject1;
    } while (localNode == null);
    AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)value;
    Class localClass1 = ((AnnotatedMethod)localObject1).getDeclaringClass();
    Class localClass2 = localAnnotatedMethod.getDeclaringClass();
    if (localClass1 != localClass2)
    {
      if (localClass1.isAssignableFrom(localClass2)) {
        localObject2 = localAnnotatedMethod;
      }
      do
      {
        localNode = next;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
      } while (localClass2.isAssignableFrom(localClass1));
    }
    throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)localObject1).getFullName() + " vs " + localAnnotatedMethod.getFullName());
  }
  
  public String getInternalName()
  {
    return _internalName;
  }
  
  public AnnotatedMember getMutator()
  {
    Object localObject2 = getConstructorParameter();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = getSetter();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = getField();
      }
    }
    return (AnnotatedMember)localObject1;
  }
  
  public String getName()
  {
    return _name;
  }
  
  public AnnotatedMethod getSetter()
  {
    Object localObject2;
    if (_setters == null) {
      localObject2 = null;
    }
    Object localObject1;
    Node localNode;
    do
    {
      return (AnnotatedMethod)localObject2;
      localObject1 = (AnnotatedMethod)_setters.value;
      localNode = _setters.next;
      localObject2 = localObject1;
    } while (localNode == null);
    AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)value;
    Class localClass1 = ((AnnotatedMethod)localObject1).getDeclaringClass();
    Class localClass2 = localAnnotatedMethod.getDeclaringClass();
    if (localClass1 != localClass2)
    {
      if (localClass1.isAssignableFrom(localClass2)) {
        localObject2 = localAnnotatedMethod;
      }
      do
      {
        localNode = next;
        localObject1 = localObject2;
        break;
        localObject2 = localObject1;
      } while (localClass2.isAssignableFrom(localClass1));
    }
    throw new IllegalArgumentException("Conflicting setter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)localObject1).getFullName() + " vs " + localAnnotatedMethod.getFullName());
  }
  
  public boolean hasConstructorParameter()
  {
    return _ctorParameters != null;
  }
  
  public boolean hasField()
  {
    return _fields != null;
  }
  
  public boolean hasGetter()
  {
    return _getters != null;
  }
  
  public boolean hasSetter()
  {
    return _setters != null;
  }
  
  public boolean isExplicitlyIncluded()
  {
    return anyExplicitNames();
  }
  
  public void mergeAnnotations(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (_getters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Node[] { _getters, _fields, _ctorParameters, _setters });
        _getters = _getters.withValue(((AnnotatedMethod)_getters.value).withAnnotations(localAnnotationMap));
      }
    }
    do
    {
      do
      {
        return;
      } while (_fields == null);
      localAnnotationMap = _mergeAnnotations(0, new Node[] { _fields, _ctorParameters, _setters });
      _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(localAnnotationMap));
      return;
      if (_ctorParameters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Node[] { _ctorParameters, _setters, _fields, _getters });
        _ctorParameters = _ctorParameters.withValue(((AnnotatedParameter)_ctorParameters.value).withAnnotations(localAnnotationMap));
        return;
      }
      if (_setters != null)
      {
        localAnnotationMap = _mergeAnnotations(0, new Node[] { _setters, _fields, _getters });
        _setters = _setters.withValue(((AnnotatedMethod)_setters.value).withAnnotations(localAnnotationMap));
        return;
      }
    } while (_fields == null);
    AnnotationMap localAnnotationMap = _mergeAnnotations(0, new Node[] { _fields, _getters });
    _fields = _fields.withValue(((AnnotatedField)_fields.value).withAnnotations(localAnnotationMap));
  }
  
  public void removeIgnored()
  {
    _fields = _removeIgnored(_fields);
    _getters = _removeIgnored(_getters);
    _setters = _removeIgnored(_setters);
    _ctorParameters = _removeIgnored(_ctorParameters);
  }
  
  public void removeNonVisible()
  {
    _getters = _removeNonVisible(_getters);
    _ctorParameters = _removeNonVisible(_ctorParameters);
    if (_getters == null)
    {
      _fields = _removeNonVisible(_fields);
      _setters = _removeNonVisible(_setters);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[Property '").append(_name).append("'; ctors: ").append(_ctorParameters).append(", field(s): ").append(_fields).append(", getter(s): ").append(_getters).append(", setter(s): ").append(_setters);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void trimByVisibility()
  {
    _fields = _trimByVisibility(_fields);
    _getters = _trimByVisibility(_getters);
    _setters = _trimByVisibility(_setters);
    _ctorParameters = _trimByVisibility(_ctorParameters);
  }
  
  public POJOPropertyBuilder withName(String paramString)
  {
    return new POJOPropertyBuilder(this, paramString);
  }
  
  private static final class Node<T>
  {
    public final String explicitName;
    public final boolean isMarkedIgnored;
    public final boolean isVisible;
    public final Node<T> next;
    public final T value;
    
    public Node(T paramT, Node<T> paramNode, String paramString, boolean paramBoolean1, boolean paramBoolean2)
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
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */