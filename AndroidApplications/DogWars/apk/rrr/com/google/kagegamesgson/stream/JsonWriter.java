package com.google.kagegamesgson.stream;

import java.io.Closeable;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class JsonWriter
  implements Closeable
{
  private boolean htmlSafe;
  private String indent;
  private boolean lenient;
  private final Writer out;
  private String separator;
  private final List stack;
  
  public JsonWriter(Writer paramWriter)
  {
    Object localObject1 = new java/util/ArrayList;
    ((ArrayList)localObject1).<init>();
    stack = ((List)localObject1);
    localObject1 = stack;
    Object localObject2 = JsonScope.EMPTY_DOCUMENT;
    ((List)localObject1).add(localObject2);
    localObject1 = ":";
    separator = ((String)localObject1);
    if (paramWriter == null)
    {
      localObject1 = new java/lang/NullPointerException;
      localObject2 = "out == null";
      ((NullPointerException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    out = paramWriter;
  }
  
  private void beforeName()
    throws IOException
  {
    JsonScope localJsonScope = peek();
    Object localObject1 = JsonScope.NONEMPTY_OBJECT;
    if (localJsonScope == localObject1)
    {
      localObject1 = out;
      int i = 44;
      ((Writer)localObject1).write(i);
    }
    do
    {
      newline();
      localObject1 = JsonScope.DANGLING_NAME;
      replaceTop((JsonScope)localObject1);
      return;
      localObject1 = JsonScope.EMPTY_OBJECT;
    } while (localJsonScope == localObject1);
    localObject1 = new java/lang/IllegalStateException;
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    Object localObject3 = "Nesting problem: ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    localObject3 = stack;
    localObject2 = ((StringBuilder)localObject2).append(localObject3);
    localObject2 = ((StringBuilder)localObject2).toString();
    ((IllegalStateException)localObject1).<init>((String)localObject2);
    throw ((Throwable)localObject1);
  }
  
  private void beforeValue(boolean paramBoolean)
    throws IOException
  {
    int[] arrayOfInt = JsonWriter.1.$SwitchMap$com$google$gson$stream$JsonScope;
    JsonScope localJsonScope = peek();
    int j = localJsonScope.ordinal();
    int i = arrayOfInt[j];
    Object localObject2;
    switch (i)
    {
    default: 
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Nesting problem: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = stack;
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      localIllegalStateException.<init>((String)localObject2);
      throw localIllegalStateException;
    case 1: 
      boolean bool = lenient;
      if ((!bool) && (!paramBoolean))
      {
        localObject1 = new java/lang/IllegalStateException;
        localObject2 = "JSON must start with an array or an object.";
        ((IllegalStateException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
      localObject1 = JsonScope.NONEMPTY_DOCUMENT;
      replaceTop((JsonScope)localObject1);
    case 2: 
    case 3: 
    case 4: 
      for (;;)
      {
        return;
        localObject1 = JsonScope.NONEMPTY_ARRAY;
        replaceTop((JsonScope)localObject1);
        newline();
        continue;
        localObject1 = out;
        char c = ',';
        ((Writer)localObject1).append(c);
        newline();
        continue;
        localObject1 = out;
        str = separator;
        ((Writer)localObject1).append(str);
        localObject1 = JsonScope.NONEMPTY_OBJECT;
        replaceTop((JsonScope)localObject1);
      }
    }
    Object localObject1 = new java/lang/IllegalStateException;
    String str = "JSON must have only one top-level value.";
    ((IllegalStateException)localObject1).<init>(str);
    throw ((Throwable)localObject1);
  }
  
  public JsonWriter beginArray()
    throws IOException
  {
    Object localObject = JsonScope.EMPTY_ARRAY;
    String str = "[";
    localObject = open((JsonScope)localObject, str);
    return (JsonWriter)localObject;
  }
  
  public JsonWriter beginObject()
    throws IOException
  {
    Object localObject = JsonScope.EMPTY_OBJECT;
    String str = "{";
    localObject = open((JsonScope)localObject, str);
    return (JsonWriter)localObject;
  }
  
  private JsonWriter close(JsonScope paramJsonScope1, JsonScope paramJsonScope2, String paramString)
    throws IOException
  {
    JsonScope localJsonScope = peek();
    if ((localJsonScope != paramJsonScope2) && (localJsonScope != paramJsonScope1))
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Nesting problem: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = stack;
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    Object localObject1 = stack;
    Object localObject2 = stack;
    int i = ((List)localObject2).size();
    int j = 1;
    i -= j;
    ((List)localObject1).remove(i);
    if (localJsonScope == paramJsonScope2) {
      newline();
    }
    localObject1 = out;
    ((Writer)localObject1).write(paramString);
    return this;
  }
  
  public void close()
    throws IOException
  {
    Object localObject1 = out;
    ((Writer)localObject1).close();
    localObject1 = peek();
    Object localObject2 = JsonScope.NONEMPTY_DOCUMENT;
    if (localObject1 != localObject2)
    {
      localObject1 = new java/io/IOException;
      localObject2 = "Incomplete document";
      ((IOException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
  }
  
  public JsonWriter endArray()
    throws IOException
  {
    Object localObject = JsonScope.EMPTY_ARRAY;
    JsonScope localJsonScope = JsonScope.NONEMPTY_ARRAY;
    String str = "]";
    localObject = close((JsonScope)localObject, localJsonScope, str);
    return (JsonWriter)localObject;
  }
  
  public JsonWriter endObject()
    throws IOException
  {
    Object localObject = JsonScope.EMPTY_OBJECT;
    JsonScope localJsonScope = JsonScope.NONEMPTY_OBJECT;
    String str = "}";
    localObject = close((JsonScope)localObject, localJsonScope, str);
    return (JsonWriter)localObject;
  }
  
  public void flush()
    throws IOException
  {
    Writer localWriter = out;
    localWriter.flush();
  }
  
  public boolean isHtmlSafe()
  {
    boolean bool = htmlSafe;
    return bool;
  }
  
  public boolean isLenient()
  {
    boolean bool = lenient;
    return bool;
  }
  
  public JsonWriter name(String paramString)
    throws IOException
  {
    if (paramString == null)
    {
      NullPointerException localNullPointerException = new java/lang/NullPointerException;
      String str = "name == null";
      localNullPointerException.<init>(str);
      throw localNullPointerException;
    }
    beforeName();
    string(paramString);
    return this;
  }
  
  private void newline()
    throws IOException
  {
    Object localObject = indent;
    if (localObject == null) {
      return;
    }
    localObject = out;
    String str = "\n";
    ((Writer)localObject).write(str);
    int i = 1;
    for (;;)
    {
      localObject = stack;
      int j = ((List)localObject).size();
      if (i >= j) {
        break;
      }
      Writer localWriter = out;
      str = indent;
      localWriter.write(str);
      i += 1;
    }
  }
  
  public JsonWriter nullValue()
    throws IOException
  {
    boolean bool = false;
    beforeValue(bool);
    Writer localWriter = out;
    String str = "null";
    localWriter.write(str);
    return this;
  }
  
  private JsonWriter open(JsonScope paramJsonScope, String paramString)
    throws IOException
  {
    boolean bool = true;
    beforeValue(bool);
    Object localObject = stack;
    ((List)localObject).add(paramJsonScope);
    localObject = out;
    ((Writer)localObject).write(paramString);
    return this;
  }
  
  private JsonScope peek()
  {
    List localList1 = stack;
    List localList2 = stack;
    int i = localList2.size();
    int j = 1;
    i -= j;
    this = localList1.get(i);
    this = (JsonScope)this;
    return this;
  }
  
  private void replaceTop(JsonScope paramJsonScope)
  {
    List localList1 = stack;
    List localList2 = stack;
    int i = localList2.size();
    int j = 1;
    i -= j;
    localList1.set(i, paramJsonScope);
  }
  
  public void setHtmlSafe(boolean paramBoolean)
  {
    htmlSafe = paramBoolean;
  }
  
  public void setIndent(String paramString)
  {
    int i = paramString.length();
    String str;
    if (i == 0)
    {
      str = null;
      indent = str;
      str = ":";
    }
    for (separator = str;; separator = str)
    {
      return;
      indent = paramString;
      str = ": ";
    }
  }
  
  public void setLenient(boolean paramBoolean)
  {
    lenient = paramBoolean;
  }
  
  private void string(String paramString)
    throws IOException
  {
    int i2 = 1;
    int i1 = 0;
    Writer localWriter1 = out;
    String str1 = "\"";
    localWriter1.write(str1);
    int j = 0;
    int k = paramString.length();
    if (j < k)
    {
      int i = paramString.charAt(j);
      Writer localWriter2;
      Object[] arrayOfObject;
      Integer localInteger;
      switch (i)
      {
      default: 
        int m = 31;
        if (i <= m)
        {
          localWriter2 = out;
          str1 = "\\u%04x";
          arrayOfObject = new Object[i2];
          localInteger = Integer.valueOf(i);
          arrayOfObject[i1] = localInteger;
          str1 = String.format(str1, arrayOfObject);
          localWriter2.write(str1);
        }
        break;
      }
      for (;;)
      {
        j += 1;
        break;
        localWriter2 = out;
        int n = 92;
        localWriter2.write(n);
        localWriter2 = out;
        localWriter2.write(i);
        continue;
        localWriter2 = out;
        str2 = "\\t";
        localWriter2.write(str2);
        continue;
        localWriter2 = out;
        str2 = "\\b";
        localWriter2.write(str2);
        continue;
        localWriter2 = out;
        str2 = "\\n";
        localWriter2.write(str2);
        continue;
        localWriter2 = out;
        str2 = "\\r";
        localWriter2.write(str2);
        continue;
        localWriter2 = out;
        str2 = "\\f";
        localWriter2.write(str2);
        continue;
        boolean bool = htmlSafe;
        if (bool)
        {
          localWriter3 = out;
          str2 = "\\u%04x";
          arrayOfObject = new Object[i2];
          localInteger = Integer.valueOf(i);
          arrayOfObject[i1] = localInteger;
          str2 = String.format(str2, arrayOfObject);
          localWriter3.write(str2);
        }
        else
        {
          localWriter3 = out;
          localWriter3.write(i);
          continue;
          localWriter3 = out;
          localWriter3.write(i);
        }
      }
    }
    Writer localWriter3 = out;
    String str2 = "\"";
    localWriter3.write(str2);
  }
  
  public JsonWriter value(double paramDouble)
    throws IOException
  {
    boolean bool1 = Double.isNaN(paramDouble);
    if (!bool1)
    {
      bool1 = Double.isInfinite(paramDouble);
      if (!bool1) {}
    }
    else
    {
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str = "Numeric values must be finite, but was ";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).append(paramDouble);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException.<init>((String)localObject);
      throw localIllegalArgumentException;
    }
    boolean bool2 = false;
    beforeValue(bool2);
    Writer localWriter = out;
    Object localObject = Double.toString(paramDouble);
    localWriter.append((CharSequence)localObject);
    return this;
  }
  
  public JsonWriter value(long paramLong)
    throws IOException
  {
    boolean bool = false;
    beforeValue(bool);
    Writer localWriter = out;
    String str = Long.toString(paramLong);
    localWriter.write(str);
    return this;
  }
  
  public JsonWriter value(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null) {}
    label115:
    Object localObject1;
    for (JsonWriter localJsonWriter = nullValue();; localObject1 = this)
    {
      return localJsonWriter;
      String str1 = paramNumber.toString();
      boolean bool1 = lenient;
      if (!bool1)
      {
        String str2 = "-Infinity";
        boolean bool2 = str1.equals(str2);
        if (!bool2)
        {
          String str3 = "Infinity";
          boolean bool3 = str1.equals(str3);
          if (!bool3)
          {
            String str4 = "NaN";
            boolean bool4 = str1.equals(str4);
            if (!bool4) {
              break label115;
            }
          }
        }
        IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str5 = "Numeric values must be finite, but was ";
        localObject2 = ((StringBuilder)localObject2).append(str5);
        localObject2 = ((StringBuilder)localObject2).append(paramNumber);
        localObject2 = ((StringBuilder)localObject2).toString();
        localIllegalArgumentException.<init>((String)localObject2);
        throw localIllegalArgumentException;
      }
      boolean bool5 = false;
      beforeValue(bool5);
      localObject1 = out;
      ((Writer)localObject1).append(str1);
    }
  }
  
  public JsonWriter value(String paramString)
    throws IOException
  {
    if (paramString == null) {}
    JsonWriter localJsonWriter2;
    for (JsonWriter localJsonWriter1 = nullValue();; localJsonWriter2 = this)
    {
      return localJsonWriter1;
      boolean bool = false;
      beforeValue(bool);
      string(paramString);
    }
  }
  
  public JsonWriter value(boolean paramBoolean)
    throws IOException
  {
    boolean bool = false;
    beforeValue(bool);
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
 * Qualified Name:     com.google.kagegamesgson.stream.JsonWriter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */