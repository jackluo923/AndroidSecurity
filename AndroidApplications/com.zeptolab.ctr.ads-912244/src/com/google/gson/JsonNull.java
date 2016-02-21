package com.google.gson;

public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE;

    static {
        INSTANCE = new JsonNull();
    }

    JsonNull deepCopy() {
        return INSTANCE;
    }

    public boolean equals(JsonNull jsonNull) {
        return this == jsonNull || jsonNull instanceof JsonNull;
    }

    public int hashCode() {
        return JsonNull.class.hashCode();
    }
}