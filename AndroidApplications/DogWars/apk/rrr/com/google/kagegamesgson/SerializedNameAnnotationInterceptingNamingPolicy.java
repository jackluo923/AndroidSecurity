package com.google.kagegamesgson;

import com.google.kagegamesgson.annotations.SerializedName;

final class SerializedNameAnnotationInterceptingNamingPolicy
  implements FieldNamingStrategy2
{
  private static final JsonFieldNameValidator fieldNameValidator;
  private final FieldNamingStrategy2 delegate;
  
  static
  {
    JsonFieldNameValidator localJsonFieldNameValidator = new com/google/kagegamesgson/JsonFieldNameValidator;
    localJsonFieldNameValidator.<init>();
    fieldNameValidator = localJsonFieldNameValidator;
  }
  
  public SerializedNameAnnotationInterceptingNamingPolicy(FieldNamingStrategy2 paramFieldNamingStrategy2)
  {
    delegate = paramFieldNamingStrategy2;
  }
  
  public String translateName(FieldAttributes paramFieldAttributes)
  {
    Preconditions.checkNotNull(paramFieldAttributes);
    Object localObject2 = SerializedName.class;
    Object localObject1 = paramFieldAttributes.getAnnotation((Class)localObject2);
    localObject1 = (SerializedName)localObject1;
    if (localObject1 == null) {
      localObject2 = delegate;
    }
    String str;
    for (localObject2 = ((FieldNamingStrategy2)localObject2).translateName(paramFieldAttributes);; localObject2 = ((JsonFieldNameValidator)localObject2).validate(str))
    {
      return (String)localObject2;
      localObject2 = fieldNameValidator;
      str = ((SerializedName)localObject1).value();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.SerializedNameAnnotationInterceptingNamingPolicy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */