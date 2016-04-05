package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public abstract class FilteredBeanPropertyWriter
{
  public static BeanPropertyWriter constructViewBased(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    if (paramArrayOfClass.length == 1) {
      return new SingleView(paramBeanPropertyWriter, paramArrayOfClass[0]);
    }
    return new MultiView(paramBeanPropertyWriter, paramArrayOfClass);
  }
  
  private static final class MultiView
    extends BeanPropertyWriter
  {
    protected final BeanPropertyWriter _delegate;
    protected final Class<?>[] _views;
    
    protected MultiView(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
    {
      super();
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
  
  private static final class SingleView
    extends BeanPropertyWriter
  {
    protected final BeanPropertyWriter _delegate;
    protected final Class<?> _view;
    
    protected SingleView(BeanPropertyWriter paramBeanPropertyWriter, Class<?> paramClass)
    {
      super();
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
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.FilteredBeanPropertyWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */