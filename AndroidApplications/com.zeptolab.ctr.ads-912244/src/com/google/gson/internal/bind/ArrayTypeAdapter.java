package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal._$Gson$Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class ArrayTypeAdapter extends TypeAdapter {
    public static final TypeAdapterFactory FACTORY;
    private final Class componentType;
    private final TypeAdapter componentTypeAdapter;

    static {
        FACTORY = new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                Type type = typeToken.getType();
                if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                    return null;
                }
                type = _$Gson$Types.getArrayComponentType(type);
                return new ArrayTypeAdapter(gson, gson.getAdapter(TypeToken.get(type)), _$Gson$Types.getRawType(type));
            }
        };
    }

    public ArrayTypeAdapter(Gson gson, TypeAdapter typeAdapter, Class cls) {
        this.componentTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.componentType = cls;
    }

    public Object read(JsonReader jsonReader) {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        } else {
            List arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(this.componentTypeAdapter.read(jsonReader));
            }
            jsonReader.endArray();
            Object newInstance = Array.newInstance(this.componentType, arrayList.size());
            int i = 0;
            while (i < arrayList.size()) {
                Array.set(newInstance, i, arrayList.get(i));
                i++;
            }
            return newInstance;
        }
    }

    public void write(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.beginArray();
            int i = 0;
            int length = Array.getLength(obj);
            while (i < length) {
                this.componentTypeAdapter.write(jsonWriter, Array.get(obj, i));
                i++;
            }
            jsonWriter.endArray();
        }
    }
}