package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.internal._$Gson$Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    private final boolean complexMapKeySerialization;
    private final ConstructorConstructor constructorConstructor;

    private final class Adapter extends TypeAdapter {
        private final ObjectConstructor constructor;
        private final TypeAdapter keyTypeAdapter;
        private final TypeAdapter valueTypeAdapter;

        public Adapter(Gson gson, Type type, TypeAdapter typeAdapter, Type type2, TypeAdapter typeAdapter2, ObjectConstructor objectConstructor) {
            this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.constructor = objectConstructor;
        }

        private String keyToString(JsonElement jsonElement) {
            if (jsonElement.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                if (asJsonPrimitive.isNumber()) {
                    return String.valueOf(asJsonPrimitive.getAsNumber());
                }
                if (asJsonPrimitive.isBoolean()) {
                    return Boolean.toString(asJsonPrimitive.getAsBoolean());
                }
                if (asJsonPrimitive.isString()) {
                    return asJsonPrimitive.getAsString();
                }
                throw new AssertionError();
            } else if (jsonElement.isJsonNull()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        public Map read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            } else {
                Map map = (Map) this.constructor.construct();
                Object read;
                if (peek == JsonToken.BEGIN_ARRAY) {
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginArray();
                        read = this.keyTypeAdapter.read(jsonReader);
                        if (map.put(read, this.valueTypeAdapter.read(jsonReader)) != null) {
                            throw new JsonSyntaxException("duplicate key: " + read);
                        }
                        jsonReader.endArray();
                    }
                    jsonReader.endArray();
                    return map;
                } else {
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                        read = this.keyTypeAdapter.read(jsonReader);
                        if (map.put(read, this.valueTypeAdapter.read(jsonReader)) != null) {
                            throw new JsonSyntaxException("duplicate key: " + read);
                        }
                    }
                    jsonReader.endObject();
                    return map;
                }
            }
        }

        public void write(JsonWriter jsonWriter, Map map) {
            int i = 0;
            if (map == null) {
                jsonWriter.nullValue();
            } else if (MapTypeAdapterFactory.this.complexMapKeySerialization) {
                List arrayList = new ArrayList(map.size());
                List arrayList2 = new ArrayList(map.size());
                Iterator it = map.entrySet().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    int i3;
                    entry = (Entry) it.next();
                    JsonElement toJsonTree = this.keyTypeAdapter.toJsonTree(entry.getKey());
                    arrayList.add(toJsonTree);
                    arrayList2.add(entry.getValue());
                    i3 = (toJsonTree.isJsonArray() || toJsonTree.isJsonObject()) ? 1 : 0;
                    i2 = i3 | i2;
                }
                if (i2 != 0) {
                    jsonWriter.beginArray();
                    while (i < arrayList.size()) {
                        jsonWriter.beginArray();
                        Streams.write((JsonElement) arrayList.get(i), jsonWriter);
                        this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i));
                        jsonWriter.endArray();
                        i++;
                    }
                    jsonWriter.endArray();
                } else {
                    jsonWriter.beginObject();
                    while (i < arrayList.size()) {
                        jsonWriter.name(keyToString((JsonElement) arrayList.get(i)));
                        this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i));
                        i++;
                    }
                    jsonWriter.endObject();
                }
            } else {
                jsonWriter.beginObject();
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    entry = (Entry) it2.next();
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.valueTypeAdapter.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            }
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean z) {
        this.constructorConstructor = constructorConstructor;
        this.complexMapKeySerialization = z;
    }

    private TypeAdapter getKeyAdapter(Gson gson, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? TypeAdapters.BOOLEAN_AS_STRING : gson.getAdapter(TypeToken.get(type));
    }

    public TypeAdapter create(Gson gson, TypeToken typeToken) {
        Type type = typeToken.getType();
        if (!Map.class.isAssignableFrom(typeToken.getRawType())) {
            return null;
        }
        Type[] mapKeyAndValueTypes = _$Gson$Types.getMapKeyAndValueTypes(type, _$Gson$Types.getRawType(type));
        TypeAdapter keyAdapter = getKeyAdapter(gson, mapKeyAndValueTypes[0]);
        TypeAdapter adapter = gson.getAdapter(TypeToken.get(mapKeyAndValueTypes[1]));
        ObjectConstructor objectConstructor = this.constructorConstructor.get(typeToken);
        return new Adapter(gson, mapKeyAndValueTypes[0], keyAdapter, mapKeyAndValueTypes[1], adapter, objectConstructor);
    }
}