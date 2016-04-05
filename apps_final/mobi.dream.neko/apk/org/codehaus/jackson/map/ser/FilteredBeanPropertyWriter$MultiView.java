package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

final class FilteredBeanPropertyWriter$MultiView
  extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?>[] _views;
  
  protected FilteredBeanPropertyWriter$MultiView(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    super(paramBeanPropertyWriter);
    _delegate = paramBeanPropertyWriter;
    _views = paramArrayOfClass;
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    Class localClass = paramSerializerProvider.getSerializationView();
    if (localClass != null)
    {
      int i = 0;
      int j = _views.length;
      for (;;)
      {
        if ((i >= j) || (_views[i].isAssignableFrom(localClass)))
        {
          if (i != j) {
            break;
          }
          return;
        }
        i += 1;
      }
    }
    _delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    return new MultiView(_delegate.withSerializer(paramJsonSerializer), _views);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter.MultiView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */