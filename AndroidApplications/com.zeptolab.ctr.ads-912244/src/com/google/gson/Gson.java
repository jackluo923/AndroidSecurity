package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class Gson {
    static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
    private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
    private final ThreadLocal calls;
    private final ConstructorConstructor constructorConstructor;
    final JsonDeserializationContext deserializationContext;
    private final List factories;
    private final boolean generateNonExecutableJson;
    private final boolean htmlSafe;
    private final boolean prettyPrinting;
    final JsonSerializationContext serializationContext;
    private final boolean serializeNulls;
    private final Map typeTokenCache;

    static class FutureTypeAdapter extends TypeAdapter {
        private TypeAdapter delegate;

        FutureTypeAdapter() {
        }

        public Object read(JsonReader jsonReader) {
            if (this.delegate != null) {
                return this.delegate.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        public void setDelegate(TypeAdapter typeAdapter) {
            if (this.delegate != null) {
                throw new AssertionError();
            }
            this.delegate = typeAdapter;
        }

        public void write(JsonWriter jsonWriter, Object obj) {
            if (this.delegate == null) {
                throw new IllegalStateException();
            }
            this.delegate.write(jsonWriter, obj);
        }
    }

    public Gson() {
        this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, LongSerializationPolicy longSerializationPolicy, List list) {
        this.calls = new ThreadLocal();
        this.typeTokenCache = Collections.synchronizedMap(new HashMap());
        this.deserializationContext = new JsonDeserializationContext() {
            public Object deserialize(JsonElement jsonElement, Type type) {
                return Gson.this.fromJson(jsonElement, type);
            }
        };
        this.serializationContext = new JsonSerializationContext() {
            public JsonElement serialize(Object obj) {
                return Gson.this.toJsonTree(obj);
            }

            public JsonElement serialize(Object obj, Type type) {
                return Gson.this.toJsonTree(obj, type);
            }
        };
        this.constructorConstructor = new ConstructorConstructor(map);
        this.serializeNulls = z;
        this.generateNonExecutableJson = z3;
        this.htmlSafe = z4;
        this.prettyPrinting = z5;
        List arrayList = new ArrayList();
        arrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        arrayList.add(ObjectTypeAdapter.FACTORY);
        arrayList.add(excluder);
        arrayList.addAll(list);
        arrayList.add(TypeAdapters.STRING_FACTORY);
        arrayList.add(TypeAdapters.INTEGER_FACTORY);
        arrayList.add(TypeAdapters.BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.BYTE_FACTORY);
        arrayList.add(TypeAdapters.SHORT_FACTORY);
        arrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, longAdapter(longSerializationPolicy)));
        arrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(z6)));
        arrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(z6)));
        arrayList.add(TypeAdapters.NUMBER_FACTORY);
        arrayList.add(TypeAdapters.CHARACTER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
        arrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
        arrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
        arrayList.add(TypeAdapters.URL_FACTORY);
        arrayList.add(TypeAdapters.URI_FACTORY);
        arrayList.add(TypeAdapters.UUID_FACTORY);
        arrayList.add(TypeAdapters.LOCALE_FACTORY);
        arrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
        arrayList.add(TypeAdapters.BIT_SET_FACTORY);
        arrayList.add(DateTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.CALENDAR_FACTORY);
        arrayList.add(TimeTypeAdapter.FACTORY);
        arrayList.add(SqlDateTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.TIMESTAMP_FACTORY);
        arrayList.add(ArrayTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.ENUM_FACTORY);
        arrayList.add(TypeAdapters.CLASS_FACTORY);
        arrayList.add(new CollectionTypeAdapterFactory(this.constructorConstructor));
        arrayList.add(new MapTypeAdapterFactory(this.constructorConstructor, z2));
        arrayList.add(new ReflectiveTypeAdapterFactory(this.constructorConstructor, fieldNamingStrategy, excluder));
        this.factories = Collections.unmodifiableList(arrayList);
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    private void checkValidFloatingPoint(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private TypeAdapter doubleAdapter(boolean z) {
        return z ? TypeAdapters.DOUBLE : new TypeAdapter() {
            public Double read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                } else {
                    Gson.this.checkValidFloatingPoint(number.doubleValue());
                    jsonWriter.value(number);
                }
            }
        };
    }

    private TypeAdapter floatAdapter(boolean z) {
        return z ? TypeAdapters.FLOAT : new TypeAdapter() {
            public Float read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Float.valueOf((float) jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                } else {
                    Gson.this.checkValidFloatingPoint((double) number.floatValue());
                    jsonWriter.value(number);
                }
            }
        };
    }

    private TypeAdapter longAdapter(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? TypeAdapters.LONG : new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Long.valueOf(jsonReader.nextLong());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Number number) {
                if (number == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number.toString());
                }
            }
        };
    }

    private JsonWriter newJsonWriter(Writer writer) {
        if (this.generateNonExecutableJson) {
            writer.write(JSON_NON_EXECUTABLE_PREFIX);
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.prettyPrinting) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.serializeNulls);
        return jsonWriter;
    }

    public Object fromJson(JsonElement jsonElement, Type type) {
        return Primitives.wrap(type).cast(fromJson(jsonElement, type));
    }

    public Object fromJson(JsonElement jsonElement, Type type) {
        return jsonElement == null ? null : fromJson(new JsonTreeReader(jsonElement), type);
    }

    public Object fromJson(JsonReader jsonReader, Type type) {
        boolean z = true;
        boolean isLenient = jsonReader.isLenient();
        jsonReader.setLenient(z);
        try {
            jsonReader.peek();
            Object read = getAdapter(TypeToken.get(type)).read(jsonReader);
            jsonReader.setLenient(isLenient);
            return read;
        } catch (EOFException e) {
            th = e;
            if (z) {
                jsonReader.setLenient(isLenient);
                return null;
            } else {
                Throwable th2;
                throw new JsonSyntaxException(th2);
            }
        } catch (IllegalStateException e2) {
            throw new JsonSyntaxException(e2);
        } catch (IOException e3) {
            throw new JsonSyntaxException(e3);
        } catch (Throwable th3) {
        }
    }

    public Object fromJson(Reader reader, Type type) {
        JsonReader jsonReader = new JsonReader(reader);
        Object fromJson = fromJson(jsonReader, type);
        assertFullConsumption(fromJson, jsonReader);
        return Primitives.wrap(type).cast(fromJson);
    }

    public Object fromJson(Reader reader, Type type) {
        JsonReader jsonReader = new JsonReader(reader);
        Object fromJson = fromJson(jsonReader, type);
        assertFullConsumption(fromJson, jsonReader);
        return fromJson;
    }

    public Object fromJson(String str, Type type) {
        return Primitives.wrap(type).cast(fromJson(str, type));
    }

    public Object fromJson(String str, Type type) {
        return str == null ? null : fromJson(new StringReader(str), type);
    }

    public TypeAdapter getAdapter(TypeToken typeToken) {
        int i;
        Map map;
        TypeAdapter typeAdapter = (TypeAdapter) this.typeTokenCache.get(typeToken);
        if (typeAdapter == null) {
            Map map2 = (Map) this.calls.get();
            boolean z = 0;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.calls.set(hashMap);
                HashMap hashMap2 = hashMap;
                i = 1;
            } else {
                map = map2;
            }
            FutureTypeAdapter futureTypeAdapter = (FutureTypeAdapter) map.get(typeToken);
            if (futureTypeAdapter == null) {
                try {
                    FutureTypeAdapter futureTypeAdapter2 = new FutureTypeAdapter();
                    map.put(typeToken, futureTypeAdapter2);
                    Iterator it = this.factories.iterator();
                    while (it.hasNext()) {
                        typeAdapter = ((TypeAdapterFactory) it.next()).create(this, typeToken);
                        if (typeAdapter != null) {
                            futureTypeAdapter2.setDelegate(typeAdapter);
                            this.typeTokenCache.put(typeToken, typeAdapter);
                            map.remove(typeToken);
                            if (i != 0) {
                                this.calls.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException("GSON cannot handle " + typeToken);
                } catch (Throwable th) {
                    map.remove(typeToken);
                    if (i != 0) {
                        this.calls.remove();
                    }
                }
            }
        }
        return typeAdapter;
    }

    public TypeAdapter getAdapter(Class cls) {
        return getAdapter(TypeToken.get(cls));
    }

    public TypeAdapter getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken typeToken) {
        Iterator it = this.factories.iterator();
        int i = 0;
        while (it.hasNext()) {
            TypeAdapterFactory typeAdapterFactory2 = (TypeAdapterFactory) it.next();
            if (i != 0) {
                TypeAdapter create = typeAdapterFactory2.create(this, typeToken);
                if (create != null) {
                    return create;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                i = 1;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
    }

    public String toJson(JsonElement jsonElement) {
        Appendable stringWriter = new StringWriter();
        toJson(jsonElement, stringWriter);
        return stringWriter.toString();
    }

    public String toJson(Object obj) {
        return obj == null ? toJson(JsonNull.INSTANCE) : toJson(obj, obj.getClass());
    }

    public String toJson(Object obj, Type type) {
        Appendable stringWriter = new StringWriter();
        toJson(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public void toJson(JsonElement jsonElement, JsonWriter jsonWriter) {
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.serializeNulls);
        try {
            Streams.write(jsonElement, jsonWriter);
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        } catch (IOException e) {
            throw new JsonIOException(e);
        } catch (Throwable th) {
        }
    }

    public void toJson(JsonElement jsonElement, Appendable appendable) {
        try {
            toJson(jsonElement, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void toJson(Object obj, Appendable appendable) {
        if (obj != null) {
            toJson(obj, obj.getClass(), appendable);
        } else {
            toJson(JsonNull.INSTANCE, appendable);
        }
    }

    public void toJson(Object obj, Type type, JsonWriter jsonWriter) {
        TypeAdapter adapter = getAdapter(TypeToken.get(type));
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.htmlSafe);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.serializeNulls);
        try {
            adapter.write(jsonWriter, obj);
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        } catch (IOException e) {
            throw new JsonIOException(e);
        } catch (Throwable th) {
        }
    }

    public void toJson(Object obj, Type type, Appendable appendable) {
        try {
            toJson(obj, type, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public JsonElement toJsonTree(Object obj) {
        return obj == null ? JsonNull.INSTANCE : toJsonTree(obj, obj.getClass());
    }

    public JsonElement toJsonTree(Object obj, Type type) {
        JsonWriter jsonTreeWriter = new JsonTreeWriter();
        toJson(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    public String toString() {
        return new StringBuilder("{serializeNulls:").append(this.serializeNulls).append("factories:").append(this.factories).append(",instanceCreators:").append(this.constructorConstructor).append("}").toString();
    }
}