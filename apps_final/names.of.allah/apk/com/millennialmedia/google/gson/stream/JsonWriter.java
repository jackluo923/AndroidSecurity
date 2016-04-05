package com.millennialmedia.google.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class JsonWriter
  implements Closeable, Flushable
{
  private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
  private static final String[] REPLACEMENT_CHARS = new String[''];
  private String deferredName;
  private boolean htmlSafe;
  private String indent;
  private boolean lenient;
  private final Writer out;
  private String separator;
  private boolean serializeNulls;
  private int[] stack = new int[32];
  private int stackSize = 0;
  
  static
  {
    int i = 0;
    while (i <= 31)
    {
      REPLACEMENT_CHARS[i] = String.format("\\u%04x", new Object[] { Integer.valueOf(i) });
      i += 1;
    }
    REPLACEMENT_CHARS[34] = "\\\"";
    REPLACEMENT_CHARS[92] = "\\\\";
    REPLACEMENT_CHARS[9] = "\\t";
    REPLACEMENT_CHARS[8] = "\\b";
    REPLACEMENT_CHARS[10] = "\\n";
    REPLACEMENT_CHARS[13] = "\\r";
    REPLACEMENT_CHARS[12] = "\\f";
    String[] arrayOfString = (String[])REPLACEMENT_CHARS.clone();
    HTML_SAFE_REPLACEMENT_CHARS = arrayOfString;
    arrayOfString[60] = "\\u003c";
    HTML_SAFE_REPLACEMENT_CHARS[62] = "\\u003e";
    HTML_SAFE_REPLACEMENT_CHARS[38] = "\\u0026";
    HTML_SAFE_REPLACEMENT_CHARS[61] = "\\u003d";
    HTML_SAFE_REPLACEMENT_CHARS[39] = "\\u0027";
  }
  
  public JsonWriter(Writer paramWriter)
  {
    push(6);
    separator = ":";
    serializeNulls = true;
    if (paramWriter == null) {
      throw new NullPointerException("out == null");
    }
    out = paramWriter;
  }
  
  private void beforeName()
  {
    int i = peek();
    if (i == 5) {
      out.write(44);
    }
    while (i == 3)
    {
      newline();
      replaceTop(4);
      return;
    }
    throw new IllegalStateException("Nesting problem.");
  }
  
  private void beforeValue(boolean paramBoolean)
  {
    switch (peek())
    {
    case 3: 
    case 5: 
    default: 
      throw new IllegalStateException("Nesting problem.");
    case 7: 
      if (!lenient) {
        throw new IllegalStateException("JSON must have only one top-level value.");
      }
    case 6: 
      if ((!lenient) && (!paramBoolean)) {
        throw new IllegalStateException("JSON must start with an array or an object.");
      }
      replaceTop(7);
      return;
    case 1: 
      replaceTop(2);
      newline();
      return;
    case 2: 
      out.append(',');
      newline();
      return;
    }
    out.append(separator);
    replaceTop(5);
  }
  
  private JsonWriter close(int paramInt1, int paramInt2, String paramString)
  {
    int i = peek();
    if ((i != paramInt2) && (i != paramInt1)) {
      throw new IllegalStateException("Nesting problem.");
    }
    if (deferredName != null) {
      throw new IllegalStateException("Dangling name: " + deferredName);
    }
    stackSize -= 1;
    if (i == paramInt2) {
      newline();
    }
    out.write(paramString);
    return this;
  }
  
  private void newline()
  {
    if (indent == null) {}
    for (;;)
    {
      return;
      out.write("\n");
      int i = 1;
      int j = stackSize;
      while (i < j)
      {
        out.write(indent);
        i += 1;
      }
    }
  }
  
  private JsonWriter open(int paramInt, String paramString)
  {
    beforeValue(true);
    push(paramInt);
    out.write(paramString);
    return this;
  }
  
  private int peek()
  {
    if (stackSize == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    return stack[(stackSize - 1)];
  }
  
  private void push(int paramInt)
  {
    if (stackSize == stack.length)
    {
      arrayOfInt = new int[stackSize * 2];
      System.arraycopy(stack, 0, arrayOfInt, 0, stackSize);
      stack = arrayOfInt;
    }
    int[] arrayOfInt = stack;
    int i = stackSize;
    stackSize = (i + 1);
    arrayOfInt[i] = paramInt;
  }
  
  private void replaceTop(int paramInt)
  {
    stack[(stackSize - 1)] = paramInt;
  }
  
  private void string(String paramString)
  {
    int j = 0;
    if (htmlSafe) {}
    int m;
    int i;
    int n;
    int k;
    for (String[] arrayOfString = HTML_SAFE_REPLACEMENT_CHARS;; arrayOfString = REPLACEMENT_CHARS)
    {
      out.write("\"");
      m = paramString.length();
      i = 0;
      for (;;)
      {
        if (i >= m) {
          break label161;
        }
        n = paramString.charAt(i);
        if (n >= 128) {
          break;
        }
        String str2 = arrayOfString[n];
        str1 = str2;
        if (str2 != null) {
          break label104;
        }
        k = j;
        i += 1;
        j = k;
      }
    }
    if (n == 8232) {}
    for (String str1 = "\\u2028";; str1 = "\\u2029")
    {
      label104:
      if (j < i) {
        out.write(paramString, j, i - j);
      }
      out.write(str1);
      k = i + 1;
      break;
      k = j;
      if (n != 8233) {
        break;
      }
    }
    label161:
    if (j < m) {
      out.write(paramString, j, m - j);
    }
    out.write("\"");
  }
  
  private void writeDeferredName()
  {
    if (deferredName != null)
    {
      beforeName();
      string(deferredName);
      deferredName = null;
    }
  }
  
  public JsonWriter beginArray()
  {
    writeDeferredName();
    return open(1, "[");
  }
  
  public JsonWriter beginObject()
  {
    writeDeferredName();
    return open(3, "{");
  }
  
  public void close()
  {
    out.close();
    int i = stackSize;
    if ((i > 1) || ((i == 1) && (stack[(i - 1)] != 7))) {
      throw new IOException("Incomplete document");
    }
    stackSize = 0;
  }
  
  public JsonWriter endArray()
  {
    return close(1, 2, "]");
  }
  
  public JsonWriter endObject()
  {
    return close(3, 5, "}");
  }
  
  public void flush()
  {
    if (stackSize == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    out.flush();
  }
  
  public final boolean getSerializeNulls()
  {
    return serializeNulls;
  }
  
  public final boolean isHtmlSafe()
  {
    return htmlSafe;
  }
  
  public boolean isLenient()
  {
    return lenient;
  }
  
  public JsonWriter name(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("name == null");
    }
    if (deferredName != null) {
      throw new IllegalStateException();
    }
    if (stackSize == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    deferredName = paramString;
    return this;
  }
  
  public JsonWriter nullValue()
  {
    if (deferredName != null)
    {
      if (serializeNulls) {
        writeDeferredName();
      }
    }
    else
    {
      beforeValue(false);
      out.write("null");
      return this;
    }
    deferredName = null;
    return this;
  }
  
  public final void setHtmlSafe(boolean paramBoolean)
  {
    htmlSafe = paramBoolean;
  }
  
  public final void setIndent(String paramString)
  {
    if (paramString.length() == 0)
    {
      indent = null;
      separator = ":";
      return;
    }
    indent = paramString;
    separator = ": ";
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    lenient = paramBoolean;
  }
  
  public final void setSerializeNulls(boolean paramBoolean)
  {
    serializeNulls = paramBoolean;
  }
  
  public JsonWriter value(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramDouble);
    }
    writeDeferredName();
    beforeValue(false);
    out.append(Double.toString(paramDouble));
    return this;
  }
  
  public JsonWriter value(long paramLong)
  {
    writeDeferredName();
    beforeValue(false);
    out.write(Long.toString(paramLong));
    return this;
  }
  
  public JsonWriter value(Number paramNumber)
  {
    if (paramNumber == null) {
      return nullValue();
    }
    writeDeferredName();
    String str = paramNumber.toString();
    if ((!lenient) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN")))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
    }
    beforeValue(false);
    out.append(str);
    return this;
  }
  
  public JsonWriter value(String paramString)
  {
    if (paramString == null) {
      return nullValue();
    }
    writeDeferredName();
    beforeValue(false);
    string(paramString);
    return this;
  }
  
  public JsonWriter value(boolean paramBoolean)
  {
    writeDeferredName();
    beforeValue(false);
    Writer localWriter = out;
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localWriter.write(str);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.stream.JsonWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */