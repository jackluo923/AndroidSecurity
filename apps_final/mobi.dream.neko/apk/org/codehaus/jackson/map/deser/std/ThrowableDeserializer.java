package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.HashSet;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.BeanDeserializer;
import org.codehaus.jackson.map.deser.SettableAnyProperty;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.impl.BeanPropertyMap;
import org.codehaus.jackson.type.JavaType;

public class ThrowableDeserializer
  extends BeanDeserializer
{
  protected static final String PROP_NAME_MESSAGE = "message";
  
  public ThrowableDeserializer(BeanDeserializer paramBeanDeserializer)
  {
    super(paramBeanDeserializer);
  }
  
  protected ThrowableDeserializer(BeanDeserializer paramBeanDeserializer, boolean paramBoolean)
  {
    super(paramBeanDeserializer, paramBoolean);
  }
  
  public Object deserializeFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_propertyBasedCreator != null) {
      paramJsonParser = _deserializeUsingPropertyBased(paramJsonParser, paramDeserializationContext);
    }
    boolean bool1;
    Object localObject2;
    Object localObject1;
    int i;
    int j;
    do
    {
      return paramJsonParser;
      if (_delegateDeserializer != null) {
        return _valueInstantiator.createUsingDelegate(_delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
      }
      if (_beanType.isAbstract()) {
        throw JsonMappingException.from(paramJsonParser, "Can not instantiate abstract type " + _beanType + " (need to add/enable type information?)");
      }
      bool1 = _valueInstantiator.canCreateFromString();
      boolean bool2 = _valueInstantiator.canCreateUsingDefault();
      if ((!bool1) && (!bool2)) {
        throw new JsonMappingException("Can not deserialize Throwable of type " + _beanType + " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator");
      }
      localObject2 = null;
      localObject1 = null;
      i = 0;
      if (paramJsonParser.getCurrentToken() != JsonToken.END_OBJECT)
      {
        Object localObject3 = paramJsonParser.getCurrentName();
        Object localObject4 = _beanProperties.find((String)localObject3);
        paramJsonParser.nextToken();
        if (localObject4 != null) {
          if (localObject2 != null)
          {
            ((SettableBeanProperty)localObject4).deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2);
            j = i;
            localObject3 = localObject1;
          }
        }
        for (;;)
        {
          paramJsonParser.nextToken();
          localObject1 = localObject3;
          i = j;
          break;
          localObject3 = localObject1;
          if (localObject1 == null)
          {
            j = _beanProperties.size();
            localObject3 = new Object[j + j];
          }
          int k = i + 1;
          localObject3[i] = localObject4;
          j = k + 1;
          localObject3[k] = ((SettableBeanProperty)localObject4).deserialize(paramJsonParser, paramDeserializationContext);
          continue;
          if (("message".equals(localObject3)) && (bool1))
          {
            localObject4 = _valueInstantiator.createFromString(paramJsonParser.getText());
            localObject3 = localObject1;
            j = i;
            localObject2 = localObject4;
            if (localObject1 != null)
            {
              j = 0;
              while (j < i)
              {
                ((SettableBeanProperty)localObject1[j]).set(localObject4, localObject1[(j + 1)]);
                j += 2;
              }
              localObject3 = null;
              j = i;
              localObject2 = localObject4;
            }
          }
          else if ((_ignorableProps != null) && (_ignorableProps.contains(localObject3)))
          {
            paramJsonParser.skipChildren();
            localObject3 = localObject1;
            j = i;
          }
          else if (_anySetter != null)
          {
            _anySetter.deserializeAndSet(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject3);
            localObject3 = localObject1;
            j = i;
          }
          else
          {
            handleUnknownProperty(paramJsonParser, paramDeserializationContext, localObject2, (String)localObject3);
            localObject3 = localObject1;
            j = i;
          }
        }
      }
      paramJsonParser = (JsonParser)localObject2;
    } while (localObject2 != null);
    if (bool1) {}
    for (paramDeserializationContext = _valueInstantiator.createFromString(null);; paramDeserializationContext = _valueInstantiator.createUsingDefault())
    {
      paramJsonParser = paramDeserializationContext;
      if (localObject1 == null) {
        break;
      }
      j = 0;
      for (;;)
      {
        paramJsonParser = paramDeserializationContext;
        if (j >= i) {
          break;
        }
        ((SettableBeanProperty)localObject1[j]).set(paramDeserializationContext, localObject1[(j + 1)]);
        j += 2;
      }
    }
  }
  
  public JsonDeserializer<Object> unwrappingDeserializer()
  {
    if (getClass() != ThrowableDeserializer.class) {
      return this;
    }
    return new ThrowableDeserializer(this, true);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ThrowableDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */