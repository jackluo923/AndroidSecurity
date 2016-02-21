package com.google.gson;

import java.lang.reflect.Type;

public interface JsonDeserializer {
    Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext);
}