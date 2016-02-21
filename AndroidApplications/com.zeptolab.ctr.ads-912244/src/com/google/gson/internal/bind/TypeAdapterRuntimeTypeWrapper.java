package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class TypeAdapterRuntimeTypeWrapper extends TypeAdapter {
    private final Gson context;
    private final TypeAdapter delegate;
    private final Type type;

    TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter typeAdapter, Type type) {
        this.context = gson;
        this.delegate = typeAdapter;
        this.type = type;
    }

    private Type getRuntimeTypeIfMoreSpecific(Type type, Object obj) {
        if (obj == null) {
            return type;
        }
        return (type == Object.class || type instanceof TypeVariable || type instanceof Class) ? obj.getClass() : type;
    }

    public Object read(JsonReader jsonReader) {
        return this.delegate.read(jsonReader);
    }

    public void write(JsonWriter jsonWriter, Object obj) {
        TypeAdapter typeAdapter = this.delegate;
        Type runtimeTypeIfMoreSpecific = getRuntimeTypeIfMoreSpecific(this.type, obj);
        if (runtimeTypeIfMoreSpecific != this.type) {
            typeAdapter = this.context.getAdapter(TypeToken.get(runtimeTypeIfMoreSpecific));
            if (typeAdapter instanceof Adapter && !this.delegate instanceof Adapter) {
                typeAdapter = this.delegate;
            }
        }
        typeAdapter.write(jsonWriter, obj);
    }
}