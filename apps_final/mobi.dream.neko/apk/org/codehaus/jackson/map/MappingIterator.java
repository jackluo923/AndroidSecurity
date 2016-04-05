package org.codehaus.jackson.map;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonStreamContext;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.type.JavaType;

public class MappingIterator<T>
  implements Iterator<T>
{
  protected static final MappingIterator<?> EMPTY_ITERATOR = new MappingIterator(null, null, null, null, false, null);
  protected final boolean _closeParser;
  protected final DeserializationContext _context;
  protected final JsonDeserializer<T> _deserializer;
  protected boolean _hasNextChecked;
  protected JsonParser _parser;
  protected final JavaType _type;
  protected final T _updatedValue;
  
  protected MappingIterator(JavaType paramJavaType, JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JsonDeserializer<?> paramJsonDeserializer)
  {
    this(paramJavaType, paramJsonParser, paramDeserializationContext, paramJsonDeserializer, true, null);
  }
  
  protected MappingIterator(JavaType paramJavaType, JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JsonDeserializer<?> paramJsonDeserializer, boolean paramBoolean, Object paramObject)
  {
    _type = paramJavaType;
    _parser = paramJsonParser;
    _context = paramDeserializationContext;
    _deserializer = paramJsonDeserializer;
    if ((paramJsonParser != null) && (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY) && (!paramJsonParser.getParsingContext().inRoot())) {
      paramJsonParser.clearCurrentToken();
    }
    _closeParser = paramBoolean;
    if (paramObject == null)
    {
      _updatedValue = null;
      return;
    }
    _updatedValue = paramObject;
  }
  
  protected static <T> MappingIterator<T> emptyIterator()
  {
    return EMPTY_ITERATOR;
  }
  
  public boolean hasNext()
  {
    try
    {
      boolean bool = hasNextValue();
      return bool;
    }
    catch (JsonMappingException localJsonMappingException)
    {
      throw new RuntimeJsonMappingException(localJsonMappingException.getMessage(), localJsonMappingException);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.getMessage(), localIOException);
    }
  }
  
  public boolean hasNextValue()
    throws IOException
  {
    if (_parser == null) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        if (_hasNextChecked) {
          break label75;
        }
        localObject = _parser.getCurrentToken();
        _hasNextChecked = true;
        if (localObject != null) {
          break label75;
        }
        localObject = _parser.nextToken();
        if (localObject != null) {
          break;
        }
        localObject = _parser;
        _parser = null;
      } while (!_closeParser);
      ((JsonParser)localObject).close();
      return false;
    } while (localObject == JsonToken.END_ARRAY);
    label75:
    return true;
  }
  
  public T next()
  {
    try
    {
      Object localObject = nextValue();
      return (T)localObject;
    }
    catch (JsonMappingException localJsonMappingException)
    {
      throw new RuntimeJsonMappingException(localJsonMappingException.getMessage(), localJsonMappingException);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.getMessage(), localIOException);
    }
  }
  
  public T nextValue()
    throws IOException
  {
    if ((!_hasNextChecked) && (!hasNextValue())) {
      throw new NoSuchElementException();
    }
    if (_parser == null) {
      throw new NoSuchElementException();
    }
    _hasNextChecked = false;
    if (_updatedValue == null) {}
    for (Object localObject = _deserializer.deserialize(_parser, _context);; localObject = _updatedValue)
    {
      _parser.clearCurrentToken();
      return (T)localObject;
      _deserializer.deserialize(_parser, _context, _updatedValue);
    }
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.MappingIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */