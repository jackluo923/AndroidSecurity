package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.map.SerializerFactory.Config;
import org.codehaus.jackson.map.Serializers;
import org.codehaus.jackson.map.util.ArrayBuilders;

public class BeanSerializerFactory$ConfigImpl
  extends SerializerFactory.Config
{
  protected static final BeanSerializerModifier[] NO_MODIFIERS = new BeanSerializerModifier[0];
  protected static final Serializers[] NO_SERIALIZERS = new Serializers[0];
  protected final Serializers[] _additionalKeySerializers;
  protected final Serializers[] _additionalSerializers;
  protected final BeanSerializerModifier[] _modifiers;
  
  public BeanSerializerFactory$ConfigImpl()
  {
    this(null, null, null);
  }
  
  protected BeanSerializerFactory$ConfigImpl(Serializers[] paramArrayOfSerializers1, Serializers[] paramArrayOfSerializers2, BeanSerializerModifier[] paramArrayOfBeanSerializerModifier)
  {
    Serializers[] arrayOfSerializers = paramArrayOfSerializers1;
    if (paramArrayOfSerializers1 == null) {
      arrayOfSerializers = NO_SERIALIZERS;
    }
    _additionalSerializers = arrayOfSerializers;
    paramArrayOfSerializers1 = paramArrayOfSerializers2;
    if (paramArrayOfSerializers2 == null) {
      paramArrayOfSerializers1 = NO_SERIALIZERS;
    }
    _additionalKeySerializers = paramArrayOfSerializers1;
    paramArrayOfSerializers1 = paramArrayOfBeanSerializerModifier;
    if (paramArrayOfBeanSerializerModifier == null) {
      paramArrayOfSerializers1 = NO_MODIFIERS;
    }
    _modifiers = paramArrayOfSerializers1;
  }
  
  public boolean hasKeySerializers()
  {
    return _additionalKeySerializers.length > 0;
  }
  
  public boolean hasSerializerModifiers()
  {
    return _modifiers.length > 0;
  }
  
  public boolean hasSerializers()
  {
    return _additionalSerializers.length > 0;
  }
  
  public Iterable<Serializers> keySerializers()
  {
    return ArrayBuilders.arrayAsIterable(_additionalKeySerializers);
  }
  
  public Iterable<BeanSerializerModifier> serializerModifiers()
  {
    return ArrayBuilders.arrayAsIterable(_modifiers);
  }
  
  public Iterable<Serializers> serializers()
  {
    return ArrayBuilders.arrayAsIterable(_additionalSerializers);
  }
  
  public SerializerFactory.Config withAdditionalKeySerializers(Serializers paramSerializers)
  {
    if (paramSerializers == null) {
      throw new IllegalArgumentException("Can not pass null Serializers");
    }
    paramSerializers = (Serializers[])ArrayBuilders.insertInListNoDup(_additionalKeySerializers, paramSerializers);
    return new ConfigImpl(_additionalSerializers, paramSerializers, _modifiers);
  }
  
  public SerializerFactory.Config withAdditionalSerializers(Serializers paramSerializers)
  {
    if (paramSerializers == null) {
      throw new IllegalArgumentException("Can not pass null Serializers");
    }
    return new ConfigImpl((Serializers[])ArrayBuilders.insertInListNoDup(_additionalSerializers, paramSerializers), _additionalKeySerializers, _modifiers);
  }
  
  public SerializerFactory.Config withSerializerModifier(BeanSerializerModifier paramBeanSerializerModifier)
  {
    if (paramBeanSerializerModifier == null) {
      throw new IllegalArgumentException("Can not pass null modifier");
    }
    paramBeanSerializerModifier = (BeanSerializerModifier[])ArrayBuilders.insertInListNoDup(_modifiers, paramBeanSerializerModifier);
    return new ConfigImpl(_additionalSerializers, _additionalKeySerializers, paramBeanSerializerModifier);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerFactory.ConfigImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */