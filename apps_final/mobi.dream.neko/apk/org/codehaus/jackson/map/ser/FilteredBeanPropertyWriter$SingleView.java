package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

final class FilteredBeanPropertyWriter$SingleView
  extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?> _view;
  
  protected FilteredBeanPropertyWriter$SingleView(BeanPropertyWriter paramBeanPropertyWriter, Class<?> paramClass)
  {
    super(paramBeanPropertyWriter);
    _delegate = paramBeanPropertyWriter;
    _view = paramClass;
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    Class localClass = paramSerializerProvider.getSerializationView();
    if ((localClass == null) || (_view.isAssignableFrom(localClass))) {
      _delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    return new SingleView(_delegate.withSerializer(paramJsonSerializer), _view);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter.SingleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */