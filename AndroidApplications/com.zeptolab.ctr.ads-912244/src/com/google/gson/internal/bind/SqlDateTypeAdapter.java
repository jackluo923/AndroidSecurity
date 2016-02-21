package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class SqlDateTypeAdapter extends TypeAdapter {
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat format;

    static {
        FACTORY = new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                return typeToken.getRawType() == Date.class ? new SqlDateTypeAdapter() : null;
            }
        };
    }

    public SqlDateTypeAdapter() {
        this.format = new SimpleDateFormat("MMM d, yyyy");
    }

    public synchronized Date read(JsonReader jsonReader) {
        Date date;
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                date = null;
            } else {
                date = new Date(this.format.parse(jsonReader.nextString()).getTime());
            }
        } catch (ParseException e) {
            throw new JsonSyntaxException(e);
        } catch (Throwable th) {
        }
        return date;
    }

    public synchronized void write(JsonWriter jsonWriter, Date date) {
        jsonWriter.value(date == null ? null : this.format.format(date));
    }
}