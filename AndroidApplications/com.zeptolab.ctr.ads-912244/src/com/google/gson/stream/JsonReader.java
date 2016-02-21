package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final char[] buffer;
    private final Reader in;
    private boolean lenient;
    private int limit;
    private int lineNumber;
    private int lineStart;
    private int peeked;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int pos;
    private int[] stack;
    private int stackSize;

    static {
        NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() {
            public void promoteNameToValue(JsonReader jsonReader) {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                } else {
                    int access$000 = jsonReader.peeked;
                    if (access$000 == 0) {
                        access$000 = jsonReader.doPeek();
                    }
                    if (access$000 == 13) {
                        jsonReader.peeked = PEEKED_DOUBLE_QUOTED;
                    } else if (access$000 == 12) {
                        jsonReader.peeked = PEEKED_SINGLE_QUOTED;
                    } else if (access$000 == 14) {
                        jsonReader.peeked = PEEKED_UNQUOTED;
                    } else {
                        throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + " " + " at line " + jsonReader.getLineNumber() + " column " + jsonReader.getColumnNumber());
                    }
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        this.lenient = false;
        this.buffer = new char[1024];
        this.pos = 0;
        this.limit = 0;
        this.lineNumber = 0;
        this.lineStart = 0;
        this.peeked = 0;
        this.stack = new int[32];
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    private void checkLenient() {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            int i = PEEKED_NONE;
            while (i < NON_EXECUTE_PREFIX.length) {
                if (this.buffer[this.pos + i] == NON_EXECUTE_PREFIX[i]) {
                    i++;
                } else {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }

    private int doPeek() {
        int nextNonWhitespace;
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            switch (nextNonWhitespace(true)) {
                case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    break;
                case 59:
                    checkLenient();
                    break;
                case 93:
                    this.peeked = 4;
                    return PEEKED_END_ARRAY;
                default:
                    throw syntaxError("Unterminated array");
            }
        } else if (i == 3 || i == 5) {
            this.stack[this.stackSize - 1] = 4;
            if (i == 5) {
                switch (nextNonWhitespace(true)) {
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                        break;
                    case 59:
                        checkLenient();
                        break;
                    case 125:
                        this.peeked = 2;
                        return 2;
                    default:
                        throw syntaxError("Unterminated object");
                }
            }
            nextNonWhitespace = nextNonWhitespace(true);
            switch (nextNonWhitespace) {
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    this.peeked = 13;
                    return PEEKED_DOUBLE_QUOTED_NAME;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    checkLenient();
                    this.peeked = 12;
                    return PEEKED_SINGLE_QUOTED_NAME;
                case 125:
                    if (i != 5) {
                        this.peeked = 2;
                        return 2;
                    } else {
                        throw syntaxError("Expected name");
                    }
                default:
                    checkLenient();
                    this.pos--;
                    if (isLiteral((char) nextNonWhitespace)) {
                        this.peeked = 14;
                        return PEEKED_UNQUOTED_NAME;
                    } else {
                        throw syntaxError("Expected name");
                    }
            }
        } else if (i == 4) {
            this.stack[this.stackSize - 1] = 5;
            switch (nextNonWhitespace(true)) {
                case 58:
                    break;
                case 61:
                    checkLenient();
                    if ((this.pos < this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) && this.buffer[this.pos] == '>') {
                        this.pos++;
                    }
                    break;
                default:
                    throw syntaxError("Expected ':'");
            }
        } else if (i == 6) {
            if (this.lenient) {
                consumeNonExecutePrefix();
            }
            this.stack[this.stackSize - 1] = 7;
        } else if (i == 7) {
            if (nextNonWhitespace(false) == -1) {
                this.peeked = 17;
                return PEEKED_EOF;
            } else {
                checkLenient();
                this.pos--;
            }
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (nextNonWhitespace(true)) {
            case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                if (this.stackSize == 1) {
                    checkLenient();
                }
                this.peeked = 9;
                return PEEKED_DOUBLE_QUOTED;
            case ApiEventType.API_MRAID_PAUSE_AUDIO:
                checkLenient();
                this.peeked = 8;
                return PEEKED_SINGLE_QUOTED;
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
            case 59:
                if (i == 1 || i == 2) {
                    checkLenient();
                    this.pos--;
                    this.peeked = 7;
                    return 7;
                } else {
                    throw syntaxError("Unexpected value");
                }
            case 91:
                this.peeked = 3;
                return PEEKED_BEGIN_ARRAY;
            case 93:
                if (i == 1) {
                    this.peeked = 4;
                    return PEEKED_END_ARRAY;
                }
                checkLenient();
                this.pos--;
                this.peeked = 7;
                return 7;
            case 123:
                this.peeked = 1;
                return 1;
            default:
                this.pos--;
                if (this.stackSize == 1) {
                    checkLenient();
                }
                nextNonWhitespace = peekKeyword();
                if (nextNonWhitespace != 0) {
                    return nextNonWhitespace;
                }
                nextNonWhitespace = peekNumber();
                if (nextNonWhitespace != 0) {
                    return nextNonWhitespace;
                }
                if (isLiteral(this.buffer[this.pos])) {
                    checkLenient();
                    this.peeked = 10;
                    return PEEKED_UNQUOTED;
                } else {
                    throw syntaxError("Expected value");
                }
        }
    }

    private boolean fillBuffer(int i) {
        Object obj = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(obj, this.pos, obj, PEEKED_NONE, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.in.read(obj, this.limit, obj.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit = read + this.limit;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && obj[0] == '\ufeff') {
                this.pos++;
                this.lineStart++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    private int getColumnNumber() {
        return this.pos - this.lineStart + 1;
    }

    private int getLineNumber() {
        return this.lineNumber + 1;
    }

    private boolean isLiteral(char c) {
        switch (c) {
            case PEEKED_DOUBLE_QUOTED:
            case PEEKED_UNQUOTED:
            case PEEKED_SINGLE_QUOTED_NAME:
            case PEEKED_DOUBLE_QUOTED_NAME:
            case ApiEventType.API_MRAID_PLAY_AUDIO:
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
            case ApiEventType.API_MRAID_PAUSE_VIDEO:
            case ';':
            case '=':
            case '\\':
                checkLenient();
                return false;
            default:
                return true;
        }
    }

    private int nextNonWhitespace(boolean z) {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (fillBuffer(PEEKED_BEGIN_OBJECT)) {
                    i = this.pos;
                    i2 = this.limit;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean fillBuffer = fillBuffer(PEEKED_END_OBJECT);
                    this.pos++;
                    if (!fillBuffer) {
                        return c;
                    }
                }
                checkLenient();
                switch (cArr[this.pos]) {
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        this.pos++;
                        if (skipTo("*/")) {
                            i = this.pos + 2;
                            i2 = this.limit;
                        } else {
                            throw syntaxError("Unterminated comment");
                        }
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                        this.pos++;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                        break;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.pos = i3;
                checkLenient();
                skipToEndOfLine();
                i = this.pos;
                i2 = this.limit;
            } else {
                this.pos = i3;
                return c;
            }
        }
    }

    private String nextQuotedValue(char c) {
        char[] cArr = this.buffer;
        StringBuilder stringBuilder = new StringBuilder();
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    stringBuilder.append(cArr, i, i4 - i - 1);
                    return stringBuilder.toString();
                } else {
                    if (c2 == '\\') {
                        this.pos = i4;
                        stringBuilder.append(cArr, i, i4 - i - 1);
                        stringBuilder.append(readEscapeCharacter());
                        i = this.pos;
                        i2 = this.limit;
                        i4 = i;
                    } else if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i4;
                    }
                    i3 = i4;
                }
            }
            stringBuilder.append(cArr, i, i3 - i);
            this.pos = i3;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
        throw syntaxError("Unterminated string");
    }

    private String nextUnquotedValue() {
        StringBuilder stringBuilder = null;
        int i = 0;
        while (true) {
            String str;
            if (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case PEEKED_DOUBLE_QUOTED:
                    case PEEKED_UNQUOTED:
                    case PEEKED_SINGLE_QUOTED_NAME:
                    case PEEKED_DOUBLE_QUOTED_NAME:
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                        break;
                }
            } else if (i >= this.buffer.length) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                }
                stringBuilder.append(this.buffer, this.pos, i);
                this.pos = i + this.pos;
                i = fillBuffer(PEEKED_BEGIN_OBJECT) ? 0 : 0;
            } else if (fillBuffer(i + 1)) {
            }
            if (stringBuilder == null) {
                str = new String(this.buffer, this.pos, i);
            } else {
                stringBuilder.append(this.buffer, this.pos, i);
                str = stringBuilder.toString();
            }
            this.pos = i + this.pos;
            return str;
        }
    }

    private int peekKeyword() {
        String str;
        int i;
        char c = this.buffer[this.pos];
        String str2;
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = PEEKED_TRUE;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = PEEKED_FALSE;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = PEEKED_NULL;
        }
        int length = str.length();
        int i2 = PEEKED_BEGIN_OBJECT;
        while (i2 < length) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != str.charAt(i2)) {
                return 0;
            }
            i2++;
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    private int peekNumber() {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        long j = 0;
        boolean z = PEEKED_NONE;
        int i3 = PEEKED_BEGIN_OBJECT;
        boolean z2 = PEEKED_NONE;
        int i4 = 0;
        int i5 = i2;
        i2 = i;
        while (true) {
            if (i2 + i4 == i5 && i4 == cArr.length) {
                return PEEKED_NONE;
            }
            int i6;
            int i7;
            if (fillBuffer(i4 + 1)) {
                boolean z3;
                long j2;
                int i8;
                i2 = this.pos;
                i5 = this.limit;
                char c = cArr[i2 + i4];
                switch (c) {
                    case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                        if (i6 != 5) {
                            return PEEKED_NONE;
                        }
                        z3 = PEEKED_FALSE;
                        i6 = i3;
                        i3 = i7;
                        j2 = j;
                        break;
                    case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                        if (i6 == 0) {
                            z3 = PEEKED_BEGIN_OBJECT;
                            i8 = i3;
                            i3 = 1;
                            i6 = i8;
                            j2 = j;
                        } else if (i6 != 5) {
                            return PEEKED_NONE;
                        } else {
                            z3 = PEEKED_FALSE;
                            i6 = i3;
                            i3 = i7;
                            j2 = j;
                        }
                        break;
                    case ApiEventType.API_MRAID_SEEK_VIDEO:
                        if (i6 != 2) {
                            return PEEKED_NONE;
                        }
                        z3 = PEEKED_BEGIN_ARRAY;
                        i6 = i3;
                        i3 = i7;
                        j2 = j;
                        break;
                    case 'E':
                    case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                        if (i6 != 2 && i6 != 4) {
                            return PEEKED_NONE;
                        }
                        z3 = PEEKED_TRUE;
                        i6 = i3;
                        i3 = i7;
                        j2 = j;
                        break;
                    default:
                        if (c >= '0' && c <= '9') {
                            if (i6 == 1 || i6 == 0) {
                                j = (long) (-(c - 48));
                                z3 = PEEKED_END_OBJECT;
                                i6 = i3;
                                i3 = i7;
                                j2 = j;
                            } else if (i6 == 2) {
                                if (j == 0) {
                                    return PEEKED_NONE;
                                }
                                long j3 = 10 * j - ((long) (c - 48));
                                i = (j > -922337203685477580L || (j == -922337203685477580L && j3 < j)) ? PEEKED_BEGIN_OBJECT : PEEKED_NONE;
                                i &= i3;
                                i3 = i7;
                                j2 = j3;
                                i8 = i6;
                                i6 = i;
                                i = i8;
                            } else if (i6 == 3) {
                                z3 = PEEKED_END_ARRAY;
                                i6 = i3;
                                i3 = i7;
                                j2 = j;
                            } else if (i6 == 5 || i6 == 6) {
                                z3 = PEEKED_NULL;
                                i6 = i3;
                                i3 = i7;
                                j2 = j;
                            } else {
                                i = i6;
                                i6 = i3;
                                i3 = i7;
                                j2 = j;
                            }
                        }
                        if (isLiteral(c)) {
                            return PEEKED_NONE;
                        }
                }
                i4++;
                i8 = i6;
                z2 = z3;
                int i9 = i3;
                i3 = i8;
                j = j2;
                i7 = i9;
            }
            if (i6 == 2 && i3 != 0 && (j != Long.MIN_VALUE || i7 != 0)) {
                if (i7 == 0) {
                    j = -j;
                }
                this.peekedLong = j;
                this.pos += i4;
                this.peeked = 15;
                return PEEKED_LONG;
            } else if (i6 != 2 && i6 != 4 && i6 != 7) {
                return PEEKED_NONE;
            } else {
                this.peekedNumberLength = i4;
                this.peeked = 16;
                return PEEKED_NUMBER;
            }
        }
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            Object obj = new Object[(this.stackSize * 2)];
            System.arraycopy(this.stack, PEEKED_NONE, obj, PEEKED_NONE, this.stackSize);
            this.stack = obj;
        }
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    private char readEscapeCharacter() {
        if (this.pos != this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) {
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            char c = cArr[i];
            switch (c) {
                case PEEKED_UNQUOTED:
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return c;
                case 'b':
                    return '\b';
                case IMBrowserActivity.EXPAND_ACTIVITY:
                    return '\f';
                case 'n':
                    return '\n';
                case 'r':
                    return '\r';
                case 't':
                    return '\t';
                case 'u':
                    if (this.pos + 4 <= this.limit || fillBuffer(PEEKED_END_ARRAY)) {
                        int i2 = this.pos;
                        int i3 = i2 + 4;
                        int i4 = i2;
                        c = '\u0000';
                        i = i4;
                        while (i < i3) {
                            char c2 = this.buffer[i];
                            c = (char) (c << 4);
                            if (c2 >= '0' && c2 <= '9') {
                                c = (char) (c + c2 - 48);
                            } else if (c2 < 'a' || c2 > 'f') {
                                if (c2 >= 'A' && c2 <= 'F') {
                                    c = (char) (c + c2 - 65 + 10);
                                }
                                throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                            } else {
                                c = (char) (c + c2 - 97 + 10);
                            }
                            i++;
                        }
                        this.pos += 4;
                        return c;
                    } else {
                        throw syntaxError("Unterminated escape sequence");
                    }
                default:
                    return c;
            }
        } else {
            throw syntaxError("Unterminated escape sequence");
        }
    }

    private void skipQuotedValue(char c) {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                i = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i;
                    return;
                } else {
                    if (c2 == '\\') {
                        this.pos = i;
                        readEscapeCharacter();
                        i = this.pos;
                        i2 = this.limit;
                    } else if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i;
                    }
                    i3 = i;
                }
            }
            this.pos = i3;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) {
        while (true) {
            if (this.pos + str.length() > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            if (this.buffer[this.pos] == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos + 1;
            } else {
                int i = 0;
                while (i < str.length()) {
                    if (this.buffer[this.pos + i] == str.charAt(i)) {
                        i++;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    private void skipToEndOfLine() {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(PEEKED_BEGIN_OBJECT)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private void skipUnquotedValue() {
        do {
            int i = PEEKED_NONE;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case PEEKED_DOUBLE_QUOTED:
                    case PEEKED_UNQUOTED:
                    case PEEKED_SINGLE_QUOTED_NAME:
                    case PEEKED_DOUBLE_QUOTED_NAME:
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                        break;
                }
                this.pos = i + this.pos;
                return;
            }
            this.pos = i + this.pos;
        } while (fillBuffer(PEEKED_BEGIN_OBJECT));
    }

    private IOException syntaxError(String str) {
        throw new MalformedJsonException(str + " at line " + getLineNumber() + " column " + getColumnNumber());
    }

    public void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            push(PEEKED_BEGIN_OBJECT);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            push(PEEKED_BEGIN_ARRAY);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public void close() {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public void endArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 4) {
            this.stackSize--;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public void endObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 2) {
            this.stackSize--;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public boolean hasNext() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return i != 2 && i != 4;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public boolean nextBoolean() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 5) {
            this.peeked = 0;
            return true;
        } else if (i == 6) {
            this.peeked = 0;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public double nextDouble() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            return (double) this.peekedLong;
        } else {
            if (i == 16) {
                this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
                this.pos += this.peekedNumberLength;
            } else if (i == 8 || i == 9) {
                this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
            } else if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else if (i != 11) {
                throw new IllegalStateException("Expected a double but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = 11;
            double parseDouble = Double.parseDouble(this.peekedString);
            if (this.lenient || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                this.peekedString = null;
                this.peeked = 0;
                return parseDouble;
            } else {
                throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
        }
    }

    public int nextInt() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            i = (int) this.peekedLong;
            if (this.peekedLong != ((long) i)) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = 0;
            return i;
        } else {
            if (i == 16) {
                this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
                this.pos += this.peekedNumberLength;
            } else if (i == 8 || i == 9) {
                this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
                try {
                    i = Integer.parseInt(this.peekedString);
                    this.peeked = 0;
                    return i;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected an int but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = 11;
            double parseDouble = Double.parseDouble(this.peekedString);
            i = (int) parseDouble;
            if (((double) i) != parseDouble) {
                throw new NumberFormatException("Expected an int but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peekedString = null;
            this.peeked = 0;
            return i;
        }
    }

    public long nextLong() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            return this.peekedLong;
        } else {
            long parseLong;
            if (i == 16) {
                this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
                this.pos += this.peekedNumberLength;
            } else if (i == 8 || i == 9) {
                this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
                try {
                    parseLong = Long.parseLong(this.peekedString);
                    this.peeked = 0;
                    return parseLong;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected a long but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peeked = 11;
            double parseDouble = Double.parseDouble(this.peekedString);
            parseLong = (long) parseDouble;
            if (((double) parseLong) != parseDouble) {
                throw new NumberFormatException("Expected a long but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
            }
            this.peekedString = null;
            this.peeked = 0;
            return parseLong;
        }
    }

    public String nextName() {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 12) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 13) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = 0;
        return nextUnquotedValue;
    }

    public void nextNull() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 7) {
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected null but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
    }

    public String nextString() {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 8) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 9) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else if (i == 11) {
            nextUnquotedValue = this.peekedString;
            this.peekedString = null;
        } else if (i == 15) {
            nextUnquotedValue = Long.toString(this.peekedLong);
        } else if (i == 16) {
            nextUnquotedValue = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
        }
        this.peeked = 0;
        return nextUnquotedValue;
    }

    public JsonToken peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case PEEKED_BEGIN_OBJECT:
                return JsonToken.BEGIN_OBJECT;
            case PEEKED_END_OBJECT:
                return JsonToken.END_OBJECT;
            case PEEKED_BEGIN_ARRAY:
                return JsonToken.BEGIN_ARRAY;
            case PEEKED_END_ARRAY:
                return JsonToken.END_ARRAY;
            case PEEKED_TRUE:
            case PEEKED_FALSE:
                return JsonToken.BOOLEAN;
            case PEEKED_NULL:
                return JsonToken.NULL;
            case PEEKED_SINGLE_QUOTED:
            case PEEKED_DOUBLE_QUOTED:
            case PEEKED_UNQUOTED:
            case PEEKED_BUFFERED:
                return JsonToken.STRING;
            case PEEKED_SINGLE_QUOTED_NAME:
            case PEEKED_DOUBLE_QUOTED_NAME:
            case PEEKED_UNQUOTED_NAME:
                return JsonToken.NAME;
            case PEEKED_LONG:
            case PEEKED_NUMBER:
                return JsonToken.NUMBER;
            case PEEKED_EOF:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public void skipValue() {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == 3) {
                push(PEEKED_BEGIN_OBJECT);
                i++;
            } else if (i2 == 1) {
                push(PEEKED_BEGIN_ARRAY);
                i++;
            } else if (i2 == 4) {
                this.stackSize--;
                i--;
            } else if (i2 == 2) {
                this.stackSize--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                skipUnquotedValue();
            } else if (i2 == 8 || i2 == 12) {
                skipQuotedValue('\'');
            } else if (i2 == 9 || i2 == 13) {
                skipQuotedValue('\"');
            } else if (i2 == 16) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = 0;
        } while (i != 0);
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
    }
}