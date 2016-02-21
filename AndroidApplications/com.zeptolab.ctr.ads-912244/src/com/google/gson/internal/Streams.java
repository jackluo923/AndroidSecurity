package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams {

    private static final class AppendableWriter extends Writer {
        private final Appendable appendable;
        private final CurrentWrite currentWrite;

        static class CurrentWrite implements CharSequence {
            char[] chars;

            CurrentWrite() {
            }

            public char charAt(int i) {
                return this.chars[i];
            }

            public int length() {
                return this.chars.length;
            }

            public CharSequence subSequence(int i, int i2) {
                return new String(this.chars, i, i2 - i);
            }
        }

        private AppendableWriter(Appendable appendable) {
            this.currentWrite = new CurrentWrite();
            this.appendable = appendable;
        }

        public void close() {
        }

        public void flush() {
        }

        public void write(int i) {
            this.appendable.append((char) i);
        }

        public void write(char[] cArr, int i, int i2) {
            this.currentWrite.chars = cArr;
            this.appendable.append(this.currentWrite, i, i + i2);
        }
    }

    public static JsonElement parse(JsonReader jsonReader) {
        try {
            jsonReader.peek();
            return (JsonElement) TypeAdapters.JSON_ELEMENT.read(jsonReader);
        } catch (EOFException e) {
            th = e;
            if (1 != 0) {
                return JsonNull.INSTANCE;
            }
            Throwable th2;
            throw new JsonSyntaxException(th2);
        } catch (MalformedJsonException e2) {
            throw new JsonSyntaxException(e2);
        } catch (IOException e3) {
            throw new JsonIOException(e3);
        } catch (NumberFormatException e4) {
            throw new JsonSyntaxException(e4);
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(null);
    }
}