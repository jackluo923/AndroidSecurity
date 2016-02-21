package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class TimeTypeAdapter extends TypeAdapter {
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat format;

    static {
        FACTORY = new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                return typeToken.getRawType() == Time.class ? new TimeTypeAdapter() : null;
            }
        };
    }

    public TimeTypeAdapter() {
        this.format = new SimpleDateFormat("hh:mm:ss a");
    }

    public synchronized Time read(JsonReader jsonReader) {
        Time time;
        try {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                time = null;
            } else {
                time = new Time(this.format.parse(jsonReader.nextString()).getTime());
            }
        } catch (ParseException e) {
            throw new JsonSyntaxException(e);
        } catch (Throwable th) {
        }
        return time;
    }

    public synchronized void write(JsonWriter jsonWriter, Time time) {
        jsonWriter.value(time == null ? null : this.format.format(time));
    }
}