package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.internal._$Gson$Preconditions;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

final class TreeTypeAdapter extends TypeAdapter {
    private TypeAdapter delegate;
    private final JsonDeserializer deserializer;
    private final Gson gson;
    private final JsonSerializer serializer;
    private final TypeAdapterFactory skipPast;
    private final TypeToken typeToken;

    private static class SingleTypeFactory implements TypeAdapterFactory {
        private final JsonDeserializer deserializer;
        private final TypeToken exactType;
        private final Class hierarchyType;
        private final boolean matchRawType;
        private final JsonSerializer serializer;

        private SingleTypeFactory(Object obj, TypeToken typeToken, boolean z, Class cls) {
            boolean z2;
            this.serializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.deserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            z2 = this.serializer != null || this.deserializer != null;
            _$Gson$Preconditions.checkArgument(z2);
            this.exactType = typeToken;
            this.matchRawType = z;
            this.hierarchyType = cls;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            boolean isAssignableFrom;
            if (this.exactType == null) {
                isAssignableFrom = this.hierarchyType.isAssignableFrom(typeToken.getRawType());
            } else if (this.exactType.equals(typeToken) || (this.matchRawType && this.exactType.getType() == typeToken.getRawType())) {
                isAssignableFrom = true;
            } else {
                isAssignableFrom = false;
            }
            return z ? new TreeTypeAdapter(this.deserializer, gson, typeToken, this, null) : null;
        }
    }

    private TreeTypeAdapter(JsonSerializer jsonSerializer, JsonDeserializer jsonDeserializer, Gson gson, TypeToken typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.serializer = jsonSerializer;
        this.deserializer = jsonDeserializer;
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPast = typeAdapterFactory;
    }

    private TypeAdapter delegate() {
        TypeAdapter typeAdapter = this.delegate;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
        this.delegate = typeAdapter;
        return typeAdapter;
    }

    public static TypeAdapterFactory newFactory(TypeToken typeToken, Object obj) {
        return new SingleTypeFactory(typeToken, false, null, null);
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken typeToken, Object obj) {
        return new SingleTypeFactory(typeToken, typeToken.getType() == typeToken.getRawType(), null, null);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class cls, Object obj) {
        return new SingleTypeFactory(null, false, cls, null);
    }

    public Object read(JsonReader jsonReader) {
        if (this.deserializer == null) {
            return delegate().read(jsonReader);
        }
        JsonElement parse = Streams.parse(jsonReader);
        return parse.isJsonNull() ? null : this.deserializer.deserialize(parse, this.typeToken.getType(), this.gson.deserializationContext);
    }

    public void write(JsonWriter jsonWriter, Object obj) {
        if (this.serializer == null) {
            delegate().write(jsonWriter, obj);
        } else if (obj == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(this.serializer.serialize(obj, this.typeToken.getType(), this.gson.serializationContext), jsonWriter);
        }
    }
}