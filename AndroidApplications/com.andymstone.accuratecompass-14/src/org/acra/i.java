package org.acra;

import android.content.Context;
import com.andymstone.core.o;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map.Entry;
import org.acra.b.c;

final class i {
    private final Context a;

    i(Context context) {
        this.a = context;
    }

    private synchronized c a(Reader reader) {
        c cVar;
        Object obj = new Object[40];
        int i = 0;
        cVar = new c();
        BufferedReader bufferedReader = new BufferedReader(reader, 8192);
        int i2 = 1;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int read = bufferedReader.read();
            if (read != -1) {
                int digit;
                boolean z;
                boolean z2;
                int i7;
                char c = (char) read;
                if (i == obj.length) {
                    Object obj2 = new Object[(obj.length * 2)];
                    System.arraycopy(obj, 0, obj2, 0, i);
                    obj = obj2;
                }
                if (i6 == 2) {
                    digit = Character.digit(c, 16);
                    if (digit >= 0) {
                        digit += i3 << 4;
                        i3 = i5 + 1;
                        if (i3 < 4) {
                            i5 = i3;
                            i3 = digit;
                        } else {
                            i6 = digit;
                        }
                    } else if (i5 <= 4) {
                        throw new IllegalArgumentException("luni.09");
                    } else {
                        i6 = i3;
                        i3 = i5;
                    }
                    i5 = i + 1;
                    obj[i] = (char) i6;
                    if (c == '\n' || c == '\u0085') {
                        z = false;
                        digit = i6;
                        i6 = i3;
                    } else {
                        i = i5;
                        i5 = i3;
                        i3 = i6;
                        z2 = false;
                    }
                } else {
                    digit = i3;
                    i7 = i5;
                    i5 = i;
                    i = i6;
                    i6 = i7;
                }
                if (i == 1) {
                    switch (c) {
                        case '\n':
                        case '\u0085':
                            i3 = digit;
                            i7 = i6;
                            i6 = 5;
                            i = i5;
                            i5 = i7;
                            break;
                        case '\r':
                            i3 = digit;
                            i7 = i6;
                            i6 = 3;
                            i = i5;
                            i5 = i7;
                            break;
                        case 'b':
                            c = '\b';
                            z = false;
                            break;
                        case 'f':
                            c = '\f';
                            z = false;
                            break;
                        case 'n':
                            c = '\n';
                            z = false;
                            break;
                        case 'r':
                            c = '\r';
                            z = false;
                            break;
                        case 't':
                            c = '\t';
                            z = false;
                            break;
                        case 'u':
                            i3 = 0;
                            i6 = 2;
                            i = i5;
                            i5 = 0;
                            break;
                        default:
                            z = false;
                            break;
                    }
                } else {
                    String str;
                    boolean z3;
                    switch (c) {
                        case '\n':
                            if (i == 3) {
                                i3 = digit;
                                i7 = i6;
                                i6 = 5;
                                i = i5;
                                i5 = i7;
                            }
                            if (i5 > 0 || (i5 == 0 && i4 == 0)) {
                                i = i4 != -1 ? i5 : i4;
                                str = new String(obj, 0, i5);
                                cVar.put((ReportField) Enum.valueOf(ReportField.class, str.substring(0, i)), str.substring(i));
                            }
                            z3 = -1;
                            i2 = 1;
                            i = 0;
                            i5 = i6;
                            i6 = 0;
                            i3 = digit;
                            break;
                        case '\r':
                        case '\u0085':
                            if (i4 != -1) {
                            }
                            str = new String(obj, 0, i5);
                            cVar.put((ReportField) Enum.valueOf(ReportField.class, str.substring(0, i)), str.substring(i));
                            z3 = -1;
                            i2 = 1;
                            i = 0;
                            i5 = i6;
                            i6 = 0;
                            i3 = digit;
                            break;
                        case '!':
                        case '#':
                            if (i2 != 0) {
                                do {
                                    read = bufferedReader.read();
                                    if (read == -1) {
                                        i3 = digit;
                                        i7 = i6;
                                        i6 = i;
                                        i = i5;
                                        i5 = i7;
                                    } else {
                                        c = (char) read;
                                        if (c == '\r' || c == '\n') {
                                        }
                                    }
                                } while (c != '\u0085');
                                i3 = digit;
                                i7 = i6;
                                i6 = i;
                                i = i5;
                                i5 = i7;
                            }
                            if (Character.isWhitespace(c)) {
                                if (i == 3) {
                                    z = o.MyAlertDialog_MAD_textAppearanceMedium;
                                }
                                if (i != 5) {
                                    i3 = digit;
                                    i7 = i6;
                                    i6 = i;
                                    i = i5;
                                    i5 = i7;
                                } else if (i4 == -1) {
                                    i3 = digit;
                                    i7 = i6;
                                    i6 = 4;
                                    i = i5;
                                    i5 = i7;
                                }
                            }
                            z = 0;
                            break;
                        case ':':
                        case '=':
                            if (i4 == -1) {
                                i4 = i5;
                                i3 = digit;
                                i7 = i6;
                                i6 = 0;
                                i = i5;
                                i5 = i7;
                            }
                            if (Character.isWhitespace(c)) {
                                if (i == 3) {
                                    z = o.MyAlertDialog_MAD_textAppearanceMedium;
                                }
                                if (i != 5) {
                                    i3 = digit;
                                    i7 = i6;
                                    i6 = i;
                                    i = i5;
                                    i5 = i7;
                                } else if (i4 == -1) {
                                    i3 = digit;
                                    i7 = i6;
                                    i6 = 4;
                                    i = i5;
                                    i5 = i7;
                                }
                            }
                            z = 0;
                            break;
                        case '\\':
                            if (i == 4) {
                                i4 = i5;
                            }
                            i3 = digit;
                            i7 = i6;
                            i6 = 1;
                            i = i5;
                            i5 = i7;
                            break;
                        default:
                            if (Character.isWhitespace(c)) {
                                if (i == 3) {
                                    z = o.MyAlertDialog_MAD_textAppearanceMedium;
                                }
                                if (!(i5 == 0 || i5 == i4)) {
                                    if (i != 5) {
                                        i3 = digit;
                                        i7 = i6;
                                        i6 = i;
                                        i = i5;
                                        i5 = i7;
                                    } else if (i4 == -1) {
                                        i3 = digit;
                                        i7 = i6;
                                        i6 = 4;
                                        i = i5;
                                        i5 = i7;
                                    }
                                }
                            }
                            if (i == 5 || i == 3) {
                                z = 0;
                            }
                            break;
                    }
                    i3 = digit;
                    i7 = i6;
                    z2 = z;
                    i = i5;
                    i5 = i7;
                }
                if (i == 4) {
                    i = 0;
                    i4 = i5;
                }
                i2 = i5 + 1;
                obj[i5] = c;
                i5 = i6;
                z2 = z;
                i = i2;
                i2 = 0;
                i3 = digit;
            } else if (i6 != 2 || i5 > 4) {
                i5 = (i4 != -1 || i <= 0) ? i4 : i;
                if (i5 >= 0) {
                    String str2 = new String(obj, 0, i);
                    ReportField reportField = (ReportField) Enum.valueOf(ReportField.class, str2.substring(0, i5));
                    Object substring = str2.substring(i5);
                    if (i6 == 1) {
                        substring = new StringBuilder(String.valueOf(substring)).append("\u0000").toString();
                    }
                    cVar.put(reportField, substring);
                }
            } else {
                throw new IllegalArgumentException("luni.08");
            }
        }
        return cVar;
    }

    private void a(StringBuilder stringBuilder, String str, boolean z) {
        int i;
        if (z || 0 >= str.length() || str.charAt(0) != ' ') {
            i = 0;
        } else {
            stringBuilder.append("\\ ");
            i = 1;
        }
        while (i < str.length()) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case '\t':
                    stringBuilder.append("\\t");
                    break;
                case '\n':
                    stringBuilder.append("\\n");
                    break;
                case '\f':
                    stringBuilder.append("\\f");
                    break;
                case '\r':
                    stringBuilder.append("\\r");
                    break;
                default:
                    if ("\\#!=:".indexOf(charAt) >= 0 || (z && charAt == ' ')) {
                        stringBuilder.append('\\');
                    }
                    if (charAt < ' ' || charAt > '~') {
                        String toHexString = Integer.toHexString(charAt);
                        stringBuilder.append("\\u");
                        int i2 = 0;
                        while (i2 < 4 - toHexString.length()) {
                            stringBuilder.append("0");
                            i2++;
                        }
                        stringBuilder.append(toHexString);
                    } else {
                        stringBuilder.append(charAt);
                    }
                    break;
            }
            i++;
        }
    }

    private boolean a(BufferedInputStream bufferedInputStream) {
        byte read;
        do {
            read = (byte) bufferedInputStream.read();
            if (read == (byte) -1 || read == (byte) 35 || read == (byte) 10 || read == (byte) 61) {
                return false;
            }
        } while (read != (byte) 21);
        return true;
    }

    public c a(String str) {
        InputStream openFileInput = this.a.openFileInput(str);
        if (openFileInput == null) {
            throw new IllegalArgumentException(new StringBuilder("Invalid crash report fileName : ").append(str).toString());
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(openFileInput, 8192);
        bufferedInputStream.mark(Integer.MAX_VALUE);
        boolean a = a(bufferedInputStream);
        bufferedInputStream.reset();
        c a2;
        if (a) {
            a2 = a(new InputStreamReader(bufferedInputStream));
            openFileInput.close();
            return a2;
        } else {
            a2 = a(new InputStreamReader(bufferedInputStream, "ISO8859-1"));
            openFileInput.close();
            return a2;
        }
    }

    public void a(c cVar, String str) {
        OutputStream openFileOutput = this.a.openFileOutput(str, 0);
        StringBuilder stringBuilder = new StringBuilder(200);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(openFileOutput, "ISO8859_1");
        Iterator it = cVar.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            a(stringBuilder, ((ReportField) entry.getKey()).toString(), true);
            stringBuilder.append('=');
            a(stringBuilder, (String) entry.getValue(), false);
            stringBuilder.append("\n");
            outputStreamWriter.write(stringBuilder.toString());
            stringBuilder.setLength(0);
        }
        outputStreamWriter.flush();
        openFileOutput.close();
    }
}