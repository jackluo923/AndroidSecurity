package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT;
    private static final double IGNORE_VERSIONS = -1.0d;
    private List deserializationStrategies;
    private int modifiers;
    private boolean requireExpose;
    private List serializationStrategies;
    private boolean serializeInnerClasses;
    private double version;

    class AnonymousClass_1 extends TypeAdapter {
        private TypeAdapter delegate;
        final /* synthetic */ Gson val$gson;
        final /* synthetic */ boolean val$skipDeserialize;
        final /* synthetic */ boolean val$skipSerialize;
        final /* synthetic */ TypeToken val$type;

        AnonymousClass_1(boolean z, boolean z2, Gson gson, TypeToken typeToken) {
            this.val$skipDeserialize = z;
            this.val$skipSerialize = z2;
            this.val$gson = gson;
            this.val$type = typeToken;
        }

        private TypeAdapter delegate() {
            TypeAdapter typeAdapter = this.delegate;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            typeAdapter = this.val$gson.getDelegateAdapter(Excluder.this, this.val$type);
            this.delegate = typeAdapter;
            return typeAdapter;
        }

        public Object read(JsonReader jsonReader) {
            if (!this.val$skipDeserialize) {
                return delegate().read(jsonReader);
            }
            jsonReader.skipValue();
            return null;
        }

        public void write(JsonWriter jsonWriter, Object obj) {
            if (this.val$skipSerialize) {
                jsonWriter.nullValue();
            } else {
                delegate().write(jsonWriter, obj);
            }
        }
    }

    static {
        DEFAULT = new Excluder();
    }

    public Excluder() {
        this.version = -1.0d;
        this.modifiers = 136;
        this.serializeInnerClasses = true;
        this.serializationStrategies = Collections.emptyList();
        this.deserializationStrategies = Collections.emptyList();
    }

    private boolean isAnonymousOrLocal(Class cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean isInnerClass(Class cls) {
        return cls.isMemberClass() && !isStatic(cls);
    }

    private boolean isStatic(Class cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean isValidSince(Since since) {
        return since == null || since.value() <= this.version;
    }

    private boolean isValidUntil(Until until) {
        return until == null || until.value() > this.version;
    }

    private boolean isValidVersion(Since since, Until until) {
        return isValidSince(since) && isValidUntil(until);
    }

    protected Excluder clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public TypeAdapter create(Gson gson, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        boolean excludeClass = excludeClass(rawType, true);
        boolean excludeClass2 = excludeClass(rawType, false);
        return (excludeClass || excludeClass2) ? new AnonymousClass_1(excludeClass2, excludeClass, gson, typeToken) : null;
    }

    public Excluder disableInnerClassSerialization() {
        Excluder clone = clone();
        clone.serializeInnerClasses = false;
        return clone;
    }

    public boolean excludeClass(Class cls, boolean z) {
        if (this.version != -1.0d && !isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if (!this.serializeInnerClasses && isInnerClass(cls)) {
            return true;
        }
        if (isAnonymousOrLocal(cls)) {
            return true;
        }
        Iterator it = (z ? this.serializationStrategies : this.deserializationStrategies).iterator();
        while (it.hasNext()) {
            if (((ExclusionStrategy) it.next()).shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean excludeField(java.lang.reflect.Field r6, boolean r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.Excluder.excludeField(java.lang.reflect.Field, boolean):boolean");
        /*
        r5 = this;
        r2 = 1;
        r0 = r5.modifiers;
        r1 = r6.getModifiers();
        r0 = r0 & r1;
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        r0 = r2;
    L_0x000b:
        return r0;
    L_0x000c:
        r0 = r5.version;
        r3 = -4616189618054758400; // 0xbff0000000000000 float:0.0 double:-1.0;
        r0 = (r0 > r3 ? 1 : (r0 == r3? 0 : -1));
        if (r0 == 0) goto L_0x002c;
    L_0x0014:
        r0 = com.google.gson.annotations.Since.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.google.gson.annotations.Since) r0;
        r1 = com.google.gson.annotations.Until.class;
        r1 = r6.getAnnotation(r1);
        r1 = (com.google.gson.annotations.Until) r1;
        r0 = r5.isValidVersion(r0, r1);
        if (r0 != 0) goto L_0x002c;
    L_0x002a:
        r0 = r2;
        goto L_0x000b;
    L_0x002c:
        r0 = r6.isSynthetic();
        if (r0 == 0) goto L_0x0034;
    L_0x0032:
        r0 = r2;
        goto L_0x000b;
    L_0x0034:
        r0 = r5.requireExpose;
        if (r0 == 0) goto L_0x0052;
    L_0x0038:
        r0 = com.google.gson.annotations.Expose.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.google.gson.annotations.Expose) r0;
        if (r0 == 0) goto L_0x004a;
    L_0x0042:
        if (r7 == 0) goto L_0x004c;
    L_0x0044:
        r0 = r0.serialize();
        if (r0 != 0) goto L_0x0052;
    L_0x004a:
        r0 = r2;
        goto L_0x000b;
    L_0x004c:
        r0 = r0.deserialize();
        if (r0 == 0) goto L_0x004a;
    L_0x0052:
        r0 = r5.serializeInnerClasses;
        if (r0 != 0) goto L_0x0062;
    L_0x0056:
        r0 = r6.getType();
        r0 = r5.isInnerClass(r0);
        if (r0 == 0) goto L_0x0062;
    L_0x0060:
        r0 = r2;
        goto L_0x000b;
    L_0x0062:
        r0 = r6.getType();
        r0 = r5.isAnonymousOrLocal(r0);
        if (r0 == 0) goto L_0x006e;
    L_0x006c:
        r0 = r2;
        goto L_0x000b;
    L_0x006e:
        if (r7 == 0) goto L_0x0096;
    L_0x0070:
        r0 = r5.serializationStrategies;
    L_0x0072:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x0099;
    L_0x0078:
        r1 = new com.google.gson.FieldAttributes;
        r1.<init>(r6);
        r3 = r0.iterator();
    L_0x0081:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x0099;
    L_0x0087:
        r0 = r3.next();
        r0 = (com.google.gson.ExclusionStrategy) r0;
        r0 = r0.shouldSkipField(r1);
        if (r0 == 0) goto L_0x0081;
    L_0x0093:
        r0 = r2;
        goto L_0x000b;
    L_0x0096:
        r0 = r5.deserializationStrategies;
        goto L_0x0072;
    L_0x0099:
        r0 = 0;
        goto L_0x000b;
        */
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder clone = clone();
        clone.requireExpose = true;
        return clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z, boolean z2) {
        Excluder clone = clone();
        if (z) {
            clone.serializationStrategies = new ArrayList(this.serializationStrategies);
            clone.serializationStrategies.add(exclusionStrategy);
        }
        if (z2) {
            clone.deserializationStrategies = new ArrayList(this.deserializationStrategies);
            clone.deserializationStrategies.add(exclusionStrategy);
        }
        return clone;
    }

    public Excluder withModifiers(int... iArr) {
        int i = 0;
        Excluder clone = clone();
        clone.modifiers = 0;
        int length = iArr.length;
        while (i < length) {
            clone.modifiers = iArr[i] | clone.modifiers;
            i++;
        }
        return clone;
    }

    public Excluder withVersion(double d) {
        Excluder clone = clone();
        clone.version = d;
        return clone;
    }
}