package org.codehaus.jackson.map;

import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;

public class JsonMappingException
  extends JsonProcessingException
{
  static final int MAX_REFS_TO_LIST = 1000;
  private static final long serialVersionUID = 1L;
  protected LinkedList<Reference> _path;
  
  public JsonMappingException(String paramString)
  {
    super(paramString);
  }
  
  public JsonMappingException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public JsonMappingException(String paramString, JsonLocation paramJsonLocation)
  {
    super(paramString, paramJsonLocation);
  }
  
  public JsonMappingException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramString, paramJsonLocation, paramThrowable);
  }
  
  public static JsonMappingException from(JsonParser paramJsonParser, String paramString)
  {
    return new JsonMappingException(paramString, paramJsonParser.getTokenLocation());
  }
  
  public static JsonMappingException from(JsonParser paramJsonParser, String paramString, Throwable paramThrowable)
  {
    return new JsonMappingException(paramString, paramJsonParser.getTokenLocation(), paramThrowable);
  }
  
  public static JsonMappingException wrapWithPath(Throwable paramThrowable, Object paramObject, int paramInt)
  {
    return wrapWithPath(paramThrowable, new Reference(paramObject, paramInt));
  }
  
  public static JsonMappingException wrapWithPath(Throwable paramThrowable, Object paramObject, String paramString)
  {
    return wrapWithPath(paramThrowable, new Reference(paramObject, paramString));
  }
  
  public static JsonMappingException wrapWithPath(Throwable paramThrowable, Reference paramReference)
  {
    if ((paramThrowable instanceof JsonMappingException)) {}
    String str1;
    for (paramThrowable = (JsonMappingException)paramThrowable;; paramThrowable = new JsonMappingException(str1, null, paramThrowable))
    {
      paramThrowable.prependPath(paramReference);
      return paramThrowable;
      String str2 = paramThrowable.getMessage();
      if (str2 != null)
      {
        str1 = str2;
        if (str2.length() != 0) {}
      }
      else
      {
        str1 = "(was " + paramThrowable.getClass().getName() + ")";
      }
    }
  }
  
  protected void _appendPathDesc(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = _path.iterator();
    while (localIterator.hasNext())
    {
      paramStringBuilder.append(((Reference)localIterator.next()).toString());
      if (localIterator.hasNext()) {
        paramStringBuilder.append("->");
      }
    }
  }
  
  public String getMessage()
  {
    Object localObject = super.getMessage();
    if (_path == null) {
      return (String)localObject;
    }
    if (localObject == null) {}
    for (localObject = new StringBuilder();; localObject = new StringBuilder((String)localObject))
    {
      ((StringBuilder)localObject).append(" (through reference chain: ");
      _appendPathDesc((StringBuilder)localObject);
      ((StringBuilder)localObject).append(')');
      return ((StringBuilder)localObject).toString();
    }
  }
  
  public List<Reference> getPath()
  {
    if (_path == null) {
      return Collections.emptyList();
    }
    return Collections.unmodifiableList(_path);
  }
  
  public void prependPath(Object paramObject, int paramInt)
  {
    prependPath(new Reference(paramObject, paramInt));
  }
  
  public void prependPath(Object paramObject, String paramString)
  {
    prependPath(new Reference(paramObject, paramString));
  }
  
  public void prependPath(Reference paramReference)
  {
    if (_path == null) {
      _path = new LinkedList();
    }
    if (_path.size() < 1000) {
      _path.addFirst(paramReference);
    }
  }
  
  public String toString()
  {
    return getClass().getName() + ": " + getMessage();
  }
  
  public static class Reference
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    protected String _fieldName;
    protected Object _from;
    protected int _index = -1;
    
    protected Reference() {}
    
    public Reference(Object paramObject)
    {
      _from = paramObject;
    }
    
    public Reference(Object paramObject, int paramInt)
    {
      _from = paramObject;
      _index = paramInt;
    }
    
    public Reference(Object paramObject, String paramString)
    {
      _from = paramObject;
      if (paramString == null) {
        throw new NullPointerException("Can not pass null fieldName");
      }
      _fieldName = paramString;
    }
    
    public String getFieldName()
    {
      return _fieldName;
    }
    
    public Object getFrom()
    {
      return _from;
    }
    
    public int getIndex()
    {
      return _index;
    }
    
    public void setFieldName(String paramString)
    {
      _fieldName = paramString;
    }
    
    public void setFrom(Object paramObject)
    {
      _from = paramObject;
    }
    
    public void setIndex(int paramInt)
    {
      _index = paramInt;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Class localClass;
      if ((_from instanceof Class))
      {
        localClass = (Class)_from;
        Package localPackage = localClass.getPackage();
        if (localPackage != null)
        {
          localStringBuilder.append(localPackage.getName());
          localStringBuilder.append('.');
        }
        localStringBuilder.append(localClass.getSimpleName());
        localStringBuilder.append('[');
        if (_fieldName == null) {
          break label120;
        }
        localStringBuilder.append('"');
        localStringBuilder.append(_fieldName);
        localStringBuilder.append('"');
      }
      for (;;)
      {
        localStringBuilder.append(']');
        return localStringBuilder.toString();
        localClass = _from.getClass();
        break;
        label120:
        if (_index >= 0) {
          localStringBuilder.append(_index);
        } else {
          localStringBuilder.append('?');
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.JsonMappingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */