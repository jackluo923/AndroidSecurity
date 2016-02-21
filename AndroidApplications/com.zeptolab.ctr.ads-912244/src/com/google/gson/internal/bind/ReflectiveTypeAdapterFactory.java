package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal._$Gson$Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;

    static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        protected BoundField(String str, boolean z, boolean z2) {
            this.name = str;
            this.serialized = z;
            this.deserialized = z2;
        }

        abstract void read(JsonReader jsonReader, Object obj);

        abstract void write(JsonWriter jsonWriter, Object obj);
    }

    class AnonymousClass_1 extends BoundField {
        final TypeAdapter typeAdapter;
        final /* synthetic */ Gson val$context;
        final /* synthetic */ Field val$field;
        final /* synthetic */ TypeToken val$fieldType;
        final /* synthetic */ boolean val$isPrimitive;

        AnonymousClass_1(String str, boolean z, boolean z2, Gson gson, TypeToken typeToken, Field field, boolean z3) {
            this.val$context = gson;
            this.val$fieldType = typeToken;
            this.val$field = field;
            this.val$isPrimitive = z3;
            super(str, z, z2);
            this.typeAdapter = this.val$context.getAdapter(this.val$fieldType);
        }

        void read(JsonReader jsonReader, Object obj) {
            Object read = this.typeAdapter.read(jsonReader);
            if (read != null || !this.val$isPrimitive) {
                this.val$field.set(obj, read);
            }
        }

        void write(JsonWriter jsonWriter, Object obj) {
            new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(jsonWriter, this.val$field.get(obj));
        }
    }

    public static final class Adapter extends TypeAdapter {
        private final Map boundFields;
        private final ObjectConstructor constructor;

        private Adapter(ObjectConstructor objectConstructor, Map map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        public Object read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            } else {
                Object construct = this.constructor.construct();
                try {
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        BoundField boundField = (BoundField) this.boundFields.get(jsonReader.nextName());
                        if (boundField == null || !boundField.deserialized) {
                            jsonReader.skipValue();
                        } else {
                            boundField.read(jsonReader, construct);
                        }
                    }
                    jsonReader.endObject();
                    return construct;
                } catch (IllegalStateException e) {
                    throw new JsonSyntaxException(e);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            }
        }

        public void write(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.beginObject();
                try {
                    Iterator it = this.boundFields.values().iterator();
                    while (it.hasNext()) {
                        BoundField boundField = (BoundField) it.next();
                        if (boundField.serialized) {
                            jsonWriter.name(boundField.name);
                            boundField.write(jsonWriter, obj);
                        }
                    }
                    jsonWriter.endObject();
                } catch (IllegalAccessException e) {
                    throw new AssertionError();
                }
            }
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
    }

    private BoundField createBoundField(Gson gson, Field field, String str, TypeToken typeToken, boolean z, boolean z2) {
        return new AnonymousClass_1(str, z, z2, gson, typeToken, field, Primitives.isPrimitive(typeToken.getRawType()));
    }

    private Map getBoundFields(Gson gson, TypeToken typeToken, Class cls) {
        Map linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        while (cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                boolean excludeField = excludeField(field, true);
                boolean excludeField2 = excludeField(field, false);
                if (excludeField || excludeField2) {
                    field.setAccessible(true);
                    Type resolve = _$Gson$Types.resolve(typeToken.getType(), cls, field.getGenericType());
                    BoundField createBoundField = createBoundField(gson, field, getFieldName(field), TypeToken.get(resolve), excludeField, excludeField2);
                    createBoundField = (BoundField) linkedHashMap.put(createBoundField.name, createBoundField);
                    if (createBoundField != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + createBoundField.name);
                    }
                }
                i++;
            }
            typeToken = TypeToken.get(_$Gson$Types.resolve(typeToken.getType(), cls, cls.getGenericSuperclass()));
            cls = typeToken.getRawType();
        }
        return linkedHashMap;
    }

    private String getFieldName(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        return serializedName == null ? this.fieldNamingPolicy.translateName(field) : serializedName.value();
    }

    public TypeAdapter create(Gson gson, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        return Object.class.isAssignableFrom(rawType) ? new Adapter(getBoundFields(gson, typeToken, rawType), null) : null;
    }

    public boolean excludeField(Field field, boolean z) {
        return !this.excluder.excludeClass(field.getType(), z) && !this.excluder.excludeField(field, z);
    }
}