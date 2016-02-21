package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class DateTypeAdapter extends TypeAdapter {
    public static final TypeAdapterFactory FACTORY;
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;

    static {
        FACTORY = new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                return typeToken.getRawType() == Date.class ? new DateTypeAdapter() : null;
            }
        };
    }

    public DateTypeAdapter() {
        this.enUsFormat = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS, Locale.US);
        this.localFormat = DateFormat.getDateTimeInstance(GoogleScorer.CLIENT_PLUS, GoogleScorer.CLIENT_PLUS);
        this.iso8601Format = buildIso8601Format();
    }

    private static DateFormat buildIso8601Format() {
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date deserializeToDate(String str) {
        Date parse;
        try {
            parse = this.localFormat.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.enUsFormat.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.iso8601Format.parse(str);
                } catch (ParseException e3) {
                    throw new JsonSyntaxException(str, e3);
                } catch (Throwable th) {
                }
            }
        }
        return parse;
    }

    public Date read(JsonReader jsonReader) {
        if (jsonReader.peek() != JsonToken.NULL) {
            return deserializeToDate(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    public synchronized void write(JsonWriter jsonWriter, Date date) {
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(this.enUsFormat.format(date));
        }
    }
}