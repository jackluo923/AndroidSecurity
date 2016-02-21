package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter {
    public final Object fromJson(Reader reader) {
        return read(new JsonReader(reader));
    }

    public final Object fromJson(String str) {
        return fromJson(new StringReader(str));
    }

    public final Object fromJsonTree(JsonElement jsonElement) {
        try {
            return read(new JsonTreeReader(jsonElement));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public final TypeAdapter nullSafe() {
        return new TypeAdapter() {
            public Object read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return TypeAdapter.this.read(jsonReader);
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Object obj) {
                if (obj == null) {
                    jsonWriter.nullValue();
                } else {
                    TypeAdapter.this.write(jsonWriter, obj);
                }
            }
        };
    }

    public abstract Object read(JsonReader jsonReader);

    public final String toJson(Object obj) {
        Writer stringWriter = new StringWriter();
        toJson(stringWriter, obj);
        return stringWriter.toString();
    }

    public final void toJson(Writer writer, Object obj) {
        write(new JsonWriter(writer), obj);
    }

    public final JsonElement toJsonTree(Object obj) {
        try {
            JsonWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, obj);
            return jsonTreeWriter.get();
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public abstract void write(JsonWriter jsonWriter, Object obj);
}