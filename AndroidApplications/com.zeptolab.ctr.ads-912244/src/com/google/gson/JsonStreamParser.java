package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser implements Iterator {
    private final Object lock;
    private final JsonReader parser;

    public JsonStreamParser(Reader reader) {
        this.parser = new JsonReader(reader);
        this.parser.setLenient(true);
        this.lock = new Object();
    }

    public JsonStreamParser(String str) {
        this(new StringReader(str));
    }

    public boolean hasNext() {
        boolean z;
        synchronized (this.lock) {
            try {
                z = this.parser.peek() != JsonToken.END_DOCUMENT;
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            } catch (Throwable th) {
            }
        }
        return z;
    }

    public JsonElement next() {
        if (hasNext()) {
            try {
                return Streams.parse(this.parser);
            } catch (StackOverflowError e) {
                throw new JsonParseException("Failed parsing JSON source to Json", e);
            } catch (OutOfMemoryError e2) {
                throw new JsonParseException("Failed parsing JSON source to Json", e2);
            } catch (JsonParseException e3) {
                NoSuchElementException noSuchElementException = e3;
                if (noSuchElementException.getCause() instanceof EOFException) {
                    noSuchElementException = new NoSuchElementException();
                }
                throw noSuchElementException;
            }
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}