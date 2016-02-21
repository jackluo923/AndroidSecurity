package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ObjectTypeAdapter extends TypeAdapter {
    public static final TypeAdapterFactory FACTORY;
    private final Gson gson;

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            $SwitchMap$com$google$gson$stream$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 6;
        }
    }

    static {
        FACTORY = new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                return typeToken.getRawType() == Object.class ? new ObjectTypeAdapter(null) : null;
            }
        };
    }

    private ObjectTypeAdapter(Gson gson) {
        this.gson = gson;
    }

    public Object read(JsonReader jsonReader) {
        switch (AnonymousClass_2.$SwitchMap$com$google$gson$stream$JsonToken[jsonReader.peek().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                List arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(read(jsonReader));
                }
                jsonReader.endArray();
                return arrayList;
            case GoogleScorer.CLIENT_PLUS:
                Map linkedTreeMap = new LinkedTreeMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    linkedTreeMap.put(jsonReader.nextName(), read(jsonReader));
                }
                jsonReader.endObject();
                return linkedTreeMap;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return jsonReader.nextString();
            case GoogleScorer.CLIENT_APPSTATE:
                return Double.valueOf(jsonReader.nextDouble());
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return Boolean.valueOf(jsonReader.nextBoolean());
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                jsonReader.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    public void write(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            TypeAdapter adapter = this.gson.getAdapter(obj.getClass());
            if (adapter instanceof ObjectTypeAdapter) {
                jsonWriter.beginObject();
                jsonWriter.endObject();
            } else {
                adapter.write(jsonWriter, obj);
            }
        }
    }
}