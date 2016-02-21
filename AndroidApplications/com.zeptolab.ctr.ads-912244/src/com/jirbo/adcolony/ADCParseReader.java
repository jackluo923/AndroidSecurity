package com.jirbo.adcolony;

import java.io.InputStream;

class ADCParseReader {
    int count;
    char[] data;
    int position;

    ADCParseReader(InputStream inputStream) {
        StringBuilder stringBuilder = new StringBuilder(inputStream.available());
        int read = inputStream.read();
        while (read != -1) {
            if ((read < 32 || read > 126) && read != 10 && read < 128) {
                stringBuilder.append(' ');
            } else {
                stringBuilder.append((char) read);
            }
            read = inputStream.read();
        }
        this.count = stringBuilder.length();
        this.data = new char[this.count];
        stringBuilder.getChars(0, this.count, this.data, 0);
    }

    ADCParseReader(String str) {
        this.count = str.length();
        this.data = new char[this.count];
        int i = 0;
        while (i < this.count) {
            char charAt = str.charAt(i);
            if ((charAt < ' ' || charAt > '~') && charAt != '\n' && charAt < '\u0080') {
                this.data[i] = ' ';
            } else {
                this.data[i] = charAt;
            }
            i++;
        }
    }

    public static void main(String[] strArr) {
    }

    boolean consume(char c) {
        if (this.position == this.count || this.data[this.position] != c) {
            return false;
        }
        this.position++;
        return true;
    }

    boolean consume(String str) {
        int length = str.length();
        if (this.position + length > this.count) {
            return false;
        }
        int i = 0;
        while (i < length) {
            if (str.charAt(i) != this.data[this.position + i]) {
                return false;
            }
            i++;
        }
        this.position += length;
        return true;
    }

    void consume_ws() {
        while (this.position != this.count) {
            char c = this.data[this.position];
            if (c == ' ' || c == '\n') {
                this.position++;
            } else {
                return;
            }
        }
    }

    boolean has_another() {
        return this.position < this.count;
    }

    void must_consume(char c) {
        if (!consume(c)) {
            throw new AdColonyException("'" + c + "' expected.");
        }
    }

    void must_consume(String str) {
        if (!consume(str)) {
            throw new AdColonyException("\"" + str + "\" expected.");
        }
    }

    char peek() {
        return this.position == this.count ? '\u0000' : this.data[this.position];
    }

    char read() {
        char[] cArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return cArr[i];
    }
}