package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$CharacterTypeAdapter
  implements JsonSerializer<Character>, JsonDeserializer<Character>
{
  private DefaultTypeAdapters$CharacterTypeAdapter() {}
  
  DefaultTypeAdapters$CharacterTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Character deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    char c = paramJsonElement.getAsCharacter();
    Character localCharacter = Character.valueOf(c);
    return localCharacter;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Character localCharacter = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localCharacter;
  }
  
  public JsonElement serialize(Character paramCharacter, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramCharacter);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Character)paramObject;
    JsonElement localJsonElement = serialize((Character)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = CharacterTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.CharacterTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */