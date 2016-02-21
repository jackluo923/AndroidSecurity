package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;
import java.util.UUID;

public final class TypeAdapters {
    public static final TypeAdapter BIG_DECIMAL;
    public static final TypeAdapter BIG_INTEGER;
    public static final TypeAdapter BIT_SET;
    public static final TypeAdapterFactory BIT_SET_FACTORY;
    public static final TypeAdapter BOOLEAN;
    public static final TypeAdapter BOOLEAN_AS_STRING;
    public static final TypeAdapterFactory BOOLEAN_FACTORY;
    public static final TypeAdapter BYTE;
    public static final TypeAdapterFactory BYTE_FACTORY;
    public static final TypeAdapter CALENDAR;
    public static final TypeAdapterFactory CALENDAR_FACTORY;
    public static final TypeAdapter CHARACTER;
    public static final TypeAdapterFactory CHARACTER_FACTORY;
    public static final TypeAdapter CLASS;
    public static final TypeAdapterFactory CLASS_FACTORY;
    public static final TypeAdapter DOUBLE;
    public static final TypeAdapterFactory ENUM_FACTORY;
    public static final TypeAdapter FLOAT;
    public static final TypeAdapter INET_ADDRESS;
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
    public static final TypeAdapter INTEGER;
    public static final TypeAdapterFactory INTEGER_FACTORY;
    public static final TypeAdapter JSON_ELEMENT;
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
    public static final TypeAdapter LOCALE;
    public static final TypeAdapterFactory LOCALE_FACTORY;
    public static final TypeAdapter LONG;
    public static final TypeAdapter NUMBER;
    public static final TypeAdapterFactory NUMBER_FACTORY;
    public static final TypeAdapter SHORT;
    public static final TypeAdapterFactory SHORT_FACTORY;
    public static final TypeAdapter STRING;
    public static final TypeAdapter STRING_BUFFER;
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
    public static final TypeAdapter STRING_BUILDER;
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
    public static final TypeAdapterFactory STRING_FACTORY;
    public static final TypeAdapterFactory TIMESTAMP_FACTORY;
    public static final TypeAdapter URI;
    public static final TypeAdapterFactory URI_FACTORY;
    public static final TypeAdapter URL;
    public static final TypeAdapterFactory URL_FACTORY;
    public static final TypeAdapter UUID;
    public static final TypeAdapterFactory UUID_FACTORY;

    final class AnonymousClass_27 implements TypeAdapterFactory {
        final /* synthetic */ TypeToken val$type;
        final /* synthetic */ TypeAdapter val$typeAdapter;

        AnonymousClass_27(TypeToken typeToken, TypeAdapter typeAdapter) {
            this.val$type = typeToken;
            this.val$typeAdapter = typeAdapter;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            return typeToken.equals(this.val$type) ? this.val$typeAdapter : null;
        }
    }

    final class AnonymousClass_28 implements TypeAdapterFactory {
        final /* synthetic */ Class val$type;
        final /* synthetic */ TypeAdapter val$typeAdapter;

        AnonymousClass_28(Class cls, TypeAdapter typeAdapter) {
            this.val$type = cls;
            this.val$typeAdapter = typeAdapter;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            return typeToken.getRawType() == this.val$type ? this.val$typeAdapter : null;
        }

        public String toString() {
            return "Factory[type=" + this.val$type.getName() + ",adapter=" + this.val$typeAdapter + "]";
        }
    }

    final class AnonymousClass_29 implements TypeAdapterFactory {
        final /* synthetic */ Class val$boxed;
        final /* synthetic */ TypeAdapter val$typeAdapter;
        final /* synthetic */ Class val$unboxed;

        AnonymousClass_29(Class cls, Class cls2, TypeAdapter typeAdapter) {
            this.val$unboxed = cls;
            this.val$boxed = cls2;
            this.val$typeAdapter = typeAdapter;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            return (rawType == this.val$unboxed || rawType == this.val$boxed) ? this.val$typeAdapter : null;
        }

        public String toString() {
            return "Factory[type=" + this.val$boxed.getName() + "+" + this.val$unboxed.getName() + ",adapter=" + this.val$typeAdapter + "]";
        }
    }

    final class AnonymousClass_30 implements TypeAdapterFactory {
        final /* synthetic */ Class val$base;
        final /* synthetic */ Class val$sub;
        final /* synthetic */ TypeAdapter val$typeAdapter;

        AnonymousClass_30(Class cls, Class cls2, TypeAdapter typeAdapter) {
            this.val$base = cls;
            this.val$sub = cls2;
            this.val$typeAdapter = typeAdapter;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            Class rawType = typeToken.getRawType();
            return (rawType == this.val$base || rawType == this.val$sub) ? this.val$typeAdapter : null;
        }

        public String toString() {
            return "Factory[type=" + this.val$base.getName() + "+" + this.val$sub.getName() + ",adapter=" + this.val$typeAdapter + "]";
        }
    }

    final class AnonymousClass_31 implements TypeAdapterFactory {
        final /* synthetic */ Class val$clazz;
        final /* synthetic */ TypeAdapter val$typeAdapter;

        AnonymousClass_31(Class cls, TypeAdapter typeAdapter) {
            this.val$clazz = cls;
            this.val$typeAdapter = typeAdapter;
        }

        public TypeAdapter create(Gson gson, TypeToken typeToken) {
            return this.val$clazz.isAssignableFrom(typeToken.getRawType()) ? this.val$typeAdapter : null;
        }

        public String toString() {
            return "Factory[typeHierarchy=" + this.val$clazz.getName() + ",adapter=" + this.val$typeAdapter + "]";
        }
    }

    static /* synthetic */ class AnonymousClass_32 {
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        static {
            $SwitchMap$com$google$gson$stream$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
        }
    }

    private static final class EnumTypeAdapter extends TypeAdapter {
        private final Map constantToName;
        private final Map nameToConstant;

        public EnumTypeAdapter(Class cls) {
            this.nameToConstant = new HashMap();
            this.constantToName = new HashMap();
            try {
                Enum[] enumArr = (Enum[]) cls.getEnumConstants();
                int length = enumArr.length;
                int i = 0;
                while (i < length) {
                    Object value;
                    Enum enumR = enumArr[i];
                    String name = enumR.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        value = serializedName.value();
                    } else {
                        String str = name;
                    }
                    this.nameToConstant.put(value, enumR);
                    this.constantToName.put(enumR, value);
                    i++;
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        public Enum read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return (Enum) this.nameToConstant.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, Enum enumR) {
            jsonWriter.value(enumR == null ? null : (String) this.constantToName.get(enumR));
        }
    }

    static {
        CLASS = new TypeAdapter() {
            public Class read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                }
            }

            public void write(JsonWriter jsonWriter, Class cls) {
                if (cls == null) {
                    jsonWriter.nullValue();
                } else {
                    throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
                }
            }
        };
        CLASS_FACTORY = newFactory(Class.class, CLASS);
        BIT_SET = new TypeAdapter() {
            public BitSet read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    BitSet bitSet = new BitSet();
                    jsonReader.beginArray();
                    JsonToken peek = jsonReader.peek();
                    int i = 0;
                    while (peek != JsonToken.END_ARRAY) {
                        boolean z;
                        switch (AnonymousClass_32.$SwitchMap$com$google$gson$stream$JsonToken[peek.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                z = jsonReader.nextInt() != 0;
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                z = jsonReader.nextBoolean();
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                String nextString = jsonReader.nextString();
                                try {
                                    z = Integer.parseInt(nextString) != 0;
                                } catch (NumberFormatException e) {
                                    throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + nextString);
                                }
                                break;
                            default:
                                throw new JsonSyntaxException("Invalid bitset value type: " + peek);
                        }
                        if (z) {
                            bitSet.set(i);
                        }
                        i++;
                        peek = jsonReader.peek();
                    }
                    jsonReader.endArray();
                    return bitSet;
                }
            }

            public void write(JsonWriter jsonWriter, BitSet bitSet) {
                if (bitSet == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.beginArray();
                    int i = 0;
                    while (i < bitSet.length()) {
                        jsonWriter.value((long) (bitSet.get(i) ? 1 : 0));
                        i++;
                    }
                    jsonWriter.endArray();
                }
            }
        };
        BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
        BOOLEAN = new TypeAdapter() {
            public Boolean read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else if (jsonReader.peek() == JsonToken.STRING) {
                    return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
                } else {
                    return Boolean.valueOf(jsonReader.nextBoolean());
                }
            }

            public void write(JsonWriter jsonWriter, Boolean bool) {
                if (bool == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(bool.booleanValue());
                }
            }
        };
        BOOLEAN_AS_STRING = new TypeAdapter() {
            public Boolean read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Boolean.valueOf(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Boolean bool) {
                jsonWriter.value(bool == null ? "null" : bool.toString());
            }
        };
        BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
        BYTE = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return Byte.valueOf((byte) jsonReader.nextInt());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
        SHORT = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return Short.valueOf((short) jsonReader.nextInt());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
        INTEGER = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return Integer.valueOf(jsonReader.nextInt());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
        LONG = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return Long.valueOf(jsonReader.nextLong());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        FLOAT = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Float.valueOf((float) jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        DOUBLE = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Double.valueOf(jsonReader.nextDouble());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        NUMBER = new TypeAdapter() {
            public Number read(JsonReader jsonReader) {
                JsonToken peek = jsonReader.peek();
                switch (AnonymousClass_32.$SwitchMap$com$google$gson$stream$JsonToken[peek.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        return new LazilyParsedNumber(jsonReader.nextString());
                    case GoogleScorer.CLIENT_APPSTATE:
                        jsonReader.nextNull();
                        return null;
                    default:
                        throw new JsonSyntaxException("Expecting number, got: " + peek);
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        NUMBER_FACTORY = newFactory(Number.class, NUMBER);
        CHARACTER = new TypeAdapter() {
            public Character read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    String nextString = jsonReader.nextString();
                    if (nextString.length() == 1) {
                        return Character.valueOf(nextString.charAt(0));
                    }
                    throw new JsonSyntaxException("Expecting character, got: " + nextString);
                }
            }

            public void write(JsonWriter jsonWriter, Character ch) {
                jsonWriter.value(ch == null ? null : String.valueOf(ch));
            }
        };
        CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
        STRING = new TypeAdapter() {
            public String read(JsonReader jsonReader) {
                JsonToken peek = jsonReader.peek();
                if (peek == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else if (peek == JsonToken.BOOLEAN) {
                    return Boolean.toString(jsonReader.nextBoolean());
                } else {
                    return jsonReader.nextString();
                }
            }

            public void write(JsonWriter jsonWriter, String str) {
                jsonWriter.value(str);
            }
        };
        BIG_DECIMAL = new TypeAdapter() {
            public BigDecimal read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return new BigDecimal(jsonReader.nextString());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        BIG_INTEGER = new TypeAdapter() {
            public BigInteger read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        return new BigInteger(jsonReader.nextString());
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, Number number) {
                jsonWriter.value(number);
            }
        };
        STRING_FACTORY = newFactory(String.class, STRING);
        STRING_BUILDER = new TypeAdapter() {
            public StringBuilder read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, StringBuilder stringBuilder) {
                jsonWriter.value(stringBuilder == null ? null : stringBuilder.toString());
            }
        };
        STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
        STRING_BUFFER = new TypeAdapter() {
            public StringBuffer read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) {
                jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
        URL = new TypeAdapter() {
            public URL read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    String nextString = jsonReader.nextString();
                    return "null".equals(nextString) ? null : new URL(nextString);
                }
            }

            public void write(JsonWriter jsonWriter, URL url) {
                jsonWriter.value(url == null ? null : url.toExternalForm());
            }
        };
        URL_FACTORY = newFactory(URL.class, URL);
        URI = new TypeAdapter() {
            public URI read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    try {
                        String nextString = jsonReader.nextString();
                        return "null".equals(nextString) ? null : new URI(nextString);
                    } catch (URISyntaxException e) {
                        throw new JsonIOException(e);
                    }
                }
            }

            public void write(JsonWriter jsonWriter, URI uri) {
                jsonWriter.value(uri == null ? null : uri.toASCIIString());
            }
        };
        URI_FACTORY = newFactory(URI.class, URI);
        INET_ADDRESS = new TypeAdapter() {
            public InetAddress read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, InetAddress inetAddress) {
                jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
        UUID = new TypeAdapter() {
            public UUID read(JsonReader jsonReader) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return UUID.fromString(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, UUID uuid) {
                jsonWriter.value(uuid == null ? null : uuid.toString());
            }
        };
        UUID_FACTORY = newFactory(UUID.class, UUID);
        TIMESTAMP_FACTORY = new TypeAdapterFactory() {

            class AnonymousClass_1 extends TypeAdapter {
                final /* synthetic */ TypeAdapter val$dateTypeAdapter;

                AnonymousClass_1(TypeAdapter typeAdapter) {
                    this.val$dateTypeAdapter = typeAdapter;
                }

                public Timestamp read(JsonReader jsonReader) {
                    Date date = (Date) this.val$dateTypeAdapter.read(jsonReader);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }

                public void write(JsonWriter jsonWriter, Timestamp timestamp) {
                    this.val$dateTypeAdapter.write(jsonWriter, timestamp);
                }
            }

            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                return typeToken.getRawType() != Timestamp.class ? null : new AnonymousClass_1(gson.getAdapter(Date.class));
            }
        };
        CALENDAR = new TypeAdapter() {
            private static final String DAY_OF_MONTH = "dayOfMonth";
            private static final String HOUR_OF_DAY = "hourOfDay";
            private static final String MINUTE = "minute";
            private static final String MONTH = "month";
            private static final String SECOND = "second";
            private static final String YEAR = "year";

            public Calendar read(JsonReader jsonReader) {
                int i = 0;
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    jsonReader.beginObject();
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    while (jsonReader.peek() != JsonToken.END_OBJECT) {
                        String nextName = jsonReader.nextName();
                        int nextInt = jsonReader.nextInt();
                        if (YEAR.equals(nextName)) {
                            i6 = nextInt;
                        } else if (MONTH.equals(nextName)) {
                            i5 = nextInt;
                        } else if (DAY_OF_MONTH.equals(nextName)) {
                            i4 = nextInt;
                        } else if (HOUR_OF_DAY.equals(nextName)) {
                            i3 = nextInt;
                        } else if (MINUTE.equals(nextName)) {
                            i2 = nextInt;
                        } else if (SECOND.equals(nextName)) {
                            i = nextInt;
                        }
                    }
                    jsonReader.endObject();
                    return new GregorianCalendar(i6, i5, i4, i3, i2, i);
                }
            }

            public void write(JsonWriter jsonWriter, Calendar calendar) {
                if (calendar == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.beginObject();
                    jsonWriter.name(YEAR);
                    jsonWriter.value((long) calendar.get(1));
                    jsonWriter.name(MONTH);
                    jsonWriter.value((long) calendar.get(GoogleScorer.CLIENT_PLUS));
                    jsonWriter.name(DAY_OF_MONTH);
                    jsonWriter.value((long) calendar.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    jsonWriter.name(HOUR_OF_DAY);
                    jsonWriter.value((long) calendar.get(R.styleable.MapAttrs_uiZoomGestures));
                    jsonWriter.name(MINUTE);
                    jsonWriter.value((long) calendar.get(R.styleable.MapAttrs_useViewLifecycle));
                    jsonWriter.name(SECOND);
                    jsonWriter.value((long) calendar.get(R.styleable.MapAttrs_zOrderOnTop));
                    jsonWriter.endObject();
                }
            }
        };
        CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
        LOCALE = new TypeAdapter() {
            public Locale read(JsonReader jsonReader) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                } else {
                    String nextToken;
                    String nextToken2;
                    String nextToken3;
                    StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                    nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    if (nextToken2 == null && nextToken3 == null) {
                        return new Locale(nextToken);
                    }
                    return nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
                }
            }

            public void write(JsonWriter jsonWriter, Locale locale) {
                jsonWriter.value(locale == null ? null : locale.toString());
            }
        };
        LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
        JSON_ELEMENT = new TypeAdapter() {
            public JsonElement read(JsonReader jsonReader) {
                JsonElement jsonArray;
                switch (AnonymousClass_32.$SwitchMap$com$google$gson$stream$JsonToken[jsonReader.peek().ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        return new JsonPrimitive(new LazilyParsedNumber(jsonReader.nextString()));
                    case GoogleScorer.CLIENT_PLUS:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        return new JsonPrimitive(jsonReader.nextString());
                    case GoogleScorer.CLIENT_APPSTATE:
                        jsonReader.nextNull();
                        return JsonNull.INSTANCE;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        jsonArray = new JsonArray();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(read(jsonReader));
                        }
                        jsonReader.endArray();
                        return jsonArray;
                    case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                        jsonArray = new JsonObject();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(jsonReader.nextName(), read(jsonReader));
                        }
                        jsonReader.endObject();
                        return jsonArray;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            public void write(JsonWriter jsonWriter, JsonElement jsonElement) {
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    jsonWriter.nullValue();
                } else if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                    }
                } else if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(jsonWriter, (JsonElement) it.next());
                    }
                    jsonWriter.endArray();
                } else if (jsonElement.isJsonObject()) {
                    jsonWriter.beginObject();
                    Iterator it2 = jsonElement.getAsJsonObject().entrySet().iterator();
                    while (it2.hasNext()) {
                        Entry entry = (Entry) it2.next();
                        jsonWriter.name((String) entry.getKey());
                        write(jsonWriter, (JsonElement) entry.getValue());
                    }
                    jsonWriter.endObject();
                } else {
                    throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
                }
            }
        };
        JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);
        ENUM_FACTORY = newEnumTypeHierarchyFactory();
    }

    private TypeAdapters() {
    }

    public static TypeAdapterFactory newEnumTypeHierarchyFactory() {
        return new TypeAdapterFactory() {
            public TypeAdapter create(Gson gson, TypeToken typeToken) {
                Class rawType = typeToken.getRawType();
                if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                    return null;
                }
                if (!rawType.isEnum()) {
                    rawType = rawType.getSuperclass();
                }
                return new EnumTypeAdapter(rawType);
            }
        };
    }

    public static TypeAdapterFactory newFactory(TypeToken typeToken, TypeAdapter typeAdapter) {
        return new AnonymousClass_27(typeToken, typeAdapter);
    }

    public static TypeAdapterFactory newFactory(Class cls, TypeAdapter typeAdapter) {
        return new AnonymousClass_28(cls, typeAdapter);
    }

    public static TypeAdapterFactory newFactory(Class cls, Class cls2, TypeAdapter typeAdapter) {
        return new AnonymousClass_29(cls, cls2, typeAdapter);
    }

    public static TypeAdapterFactory newFactoryForMultipleTypes(Class cls, Class cls2, TypeAdapter typeAdapter) {
        return new AnonymousClass_30(cls, cls2, typeAdapter);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class cls, TypeAdapter typeAdapter) {
        return new AnonymousClass_31(cls, typeAdapter);
    }
}