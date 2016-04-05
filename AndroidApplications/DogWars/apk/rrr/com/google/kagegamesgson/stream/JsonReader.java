package com.google.kagegamesgson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public final class JsonReader
  implements Closeable
{
  private static final char[] NON_EXECUTE_PREFIX;
  private final char[] buffer;
  private boolean hasToken;
  private final Reader in;
  private boolean lenient;
  private int limit;
  private String name;
  private int pos;
  private boolean skipping;
  private final List stack;
  private JsonToken token;
  private String value;
  
  static
  {
    Object localObject = ")]}'\n";
    localObject = ((String)localObject).toCharArray();
    NON_EXECUTE_PREFIX = (char[])localObject;
  }
  
  public JsonReader(Reader paramReader)
  {
    lenient = j;
    int i = 1024;
    Object localObject = new char[i];
    buffer = ((char[])localObject);
    pos = j;
    limit = j;
    localObject = new java/util/ArrayList;
    ((ArrayList)localObject).<init>();
    stack = ((List)localObject);
    localObject = JsonScope.EMPTY_DOCUMENT;
    push((JsonScope)localObject);
    skipping = j;
    if (paramReader == null)
    {
      localObject = new java/lang/NullPointerException;
      String str = "in == null";
      ((NullPointerException)localObject).<init>(str);
      throw ((Throwable)localObject);
    }
    in = paramReader;
  }
  
  private JsonToken advance()
    throws IOException
  {
    JsonToken localJsonToken2 = null;
    quickPeek();
    JsonToken localJsonToken1 = token;
    boolean bool = false;
    hasToken = bool;
    token = localJsonToken2;
    value = localJsonToken2;
    name = localJsonToken2;
    return localJsonToken1;
  }
  
  public void beginArray()
    throws IOException
  {
    JsonToken localJsonToken = JsonToken.BEGIN_ARRAY;
    expect(localJsonToken);
  }
  
  public void beginObject()
    throws IOException
  {
    JsonToken localJsonToken = JsonToken.BEGIN_OBJECT;
    expect(localJsonToken);
  }
  
  private void checkLenient()
    throws IOException
  {
    boolean bool = lenient;
    if (!bool)
    {
      Object localObject = "Use JsonReader.setLenient(true) to accept malformed JSON";
      localObject = syntaxError((String)localObject);
      throw ((Throwable)localObject);
    }
  }
  
  public void close()
    throws IOException
  {
    JsonScope localJsonScope = null;
    boolean bool = false;
    hasToken = bool;
    value = localJsonScope;
    token = localJsonScope;
    Object localObject = stack;
    ((List)localObject).clear();
    localObject = stack;
    localJsonScope = JsonScope.CLOSED;
    ((List)localObject).add(localJsonScope);
    localObject = in;
    ((Reader)localObject).close();
  }
  
  private void consumeNonExecutePrefix()
    throws IOException
  {
    nextNonWhitespace();
    int j = pos;
    int i1 = 1;
    j -= i1;
    pos = j;
    j = pos;
    char[] arrayOfChar4 = NON_EXECUTE_PREFIX;
    int i2 = arrayOfChar4.length;
    j += i2;
    i2 = limit;
    if (j > i2)
    {
      char[] arrayOfChar1 = NON_EXECUTE_PREFIX;
      int k = arrayOfChar1.length;
      boolean bool = fillBuffer(k);
      if (bool) {}
    }
    for (;;)
    {
      return;
      int i = 0;
      for (;;)
      {
        char[] arrayOfChar2 = NON_EXECUTE_PREFIX;
        int m = arrayOfChar2.length;
        if (i >= m) {
          break label118;
        }
        char[] arrayOfChar3 = buffer;
        i2 = pos;
        i2 += i;
        n = arrayOfChar3[i2];
        char[] arrayOfChar5 = NON_EXECUTE_PREFIX;
        int i3 = arrayOfChar5[i];
        if (n != i3) {
          break;
        }
        i += 1;
      }
      label118:
      int n = pos;
      char[] arrayOfChar6 = NON_EXECUTE_PREFIX;
      int i4 = arrayOfChar6.length;
      n += i4;
      pos = n;
    }
  }
  
  private void decodeLiteral()
    throws IOException
  {
    String str1 = value;
    String str3 = "null";
    boolean bool1 = str1.equalsIgnoreCase(str3);
    Object localObject1;
    if (bool1)
    {
      localObject1 = JsonToken.NULL;
      token = ((JsonToken)localObject1);
    }
    for (;;)
    {
      return;
      localObject1 = value;
      str3 = "true";
      boolean bool2 = ((String)localObject1).equalsIgnoreCase(str3);
      Object localObject2;
      if (!bool2)
      {
        String str2 = value;
        str3 = "false";
        boolean bool3 = str2.equalsIgnoreCase(str3);
        if (!bool3) {}
      }
      else
      {
        localObject2 = JsonToken.BOOLEAN;
        token = ((JsonToken)localObject2);
        continue;
      }
      try
      {
        localObject2 = value;
        Double.parseDouble((String)localObject2);
        localObject2 = JsonToken.NUMBER;
        token = ((JsonToken)localObject2);
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        NumberFormatException localNumberFormatException1 = localNumberFormatException2;
        Object localObject3 = "invalid number or unquoted string";
        localObject3 = syntaxError((String)localObject3);
        throw ((Throwable)localObject3);
      }
    }
  }
  
  public void endArray()
    throws IOException
  {
    JsonToken localJsonToken = JsonToken.END_ARRAY;
    expect(localJsonToken);
  }
  
  public void endObject()
    throws IOException
  {
    JsonToken localJsonToken = JsonToken.END_OBJECT;
    expect(localJsonToken);
  }
  
  private void expect(JsonToken paramJsonToken)
    throws IOException
  {
    quickPeek();
    Object localObject1 = token;
    if (localObject1 != paramJsonToken)
    {
      localObject1 = new java/lang/IllegalStateException;
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Expected ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).append(paramJsonToken);
      localObject3 = " but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    advance();
  }
  
  private boolean fillBuffer(int paramInt)
    throws IOException
  {
    int i4 = 0;
    int j = limit;
    int m = pos;
    if (j != m)
    {
      j = limit;
      m = pos;
      j -= m;
      limit = j;
      Object localObject = buffer;
      m = pos;
      char[] arrayOfChar2 = buffer;
      int i1 = limit;
      System.arraycopy(localObject, m, arrayOfChar2, i4, i1);
      pos = i4;
      do
      {
        localObject = in;
        char[] arrayOfChar1 = buffer;
        int n = limit;
        char[] arrayOfChar3 = buffer;
        int i2 = arrayOfChar3.length;
        int i3 = limit;
        i2 -= i3;
        int i = ((Reader)localObject).read(arrayOfChar1, n, i2);
        k = -1;
        if (i == k) {
          break;
        }
        k = limit;
        k += i;
        limit = k;
        k = limit;
      } while (k < paramInt);
    }
    for (int k = 1;; k = i4)
    {
      return k;
      limit = i4;
      break;
    }
  }
  
  private CharSequence getSnippet()
  {
    int i1 = 20;
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    int k = pos;
    int j = Math.min(k, i1);
    char[] arrayOfChar1 = buffer;
    int n = pos;
    n -= j;
    localStringBuilder.append(arrayOfChar1, n, j);
    int m = limit;
    n = pos;
    m -= n;
    int i = Math.min(m, i1);
    char[] arrayOfChar2 = buffer;
    n = pos;
    localStringBuilder.append(arrayOfChar2, n, i);
    return localStringBuilder;
  }
  
  public boolean hasNext()
    throws IOException
  {
    quickPeek();
    JsonToken localJsonToken1 = token;
    JsonToken localJsonToken2 = JsonToken.END_OBJECT;
    if (localJsonToken1 != localJsonToken2)
    {
      localJsonToken1 = token;
      localJsonToken2 = JsonToken.END_ARRAY;
      if (localJsonToken1 == localJsonToken2) {}
    }
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean isLenient()
  {
    boolean bool = lenient;
    return bool;
  }
  
  public boolean nextBoolean()
    throws IOException
  {
    quickPeek();
    Object localObject1 = value;
    if (localObject1 != null)
    {
      localObject1 = token;
      localObject2 = JsonToken.STRING;
      if (localObject1 != localObject2) {}
    }
    else
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "Expected a boolean but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    localObject1 = value;
    Object localObject2 = "true";
    boolean bool2 = ((String)localObject1).equalsIgnoreCase((String)localObject2);
    if (bool2) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      advance();
      return bool1;
      String str = value;
      localObject2 = "false";
      boolean bool3 = str.equalsIgnoreCase((String)localObject2);
      if (!bool3) {
        break;
      }
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    Object localObject3 = "Not a boolean: ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    localObject3 = value;
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    localObject2 = ((StringBuilder)localObject2).toString();
    localIllegalStateException.<init>((String)localObject2);
    throw localIllegalStateException;
  }
  
  public double nextDouble()
    throws IOException
  {
    quickPeek();
    Object localObject1 = value;
    Object localObject2;
    Object localObject3;
    if (localObject1 == null)
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "Expected a double but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    localObject1 = value;
    double d1 = Double.parseDouble((String)localObject1);
    double d2 = 1.0D;
    boolean bool1 = d1 < d2;
    if (!bool1)
    {
      String str = value;
      localObject2 = "0";
      boolean bool2 = str.startsWith((String)localObject2);
      if (bool2)
      {
        NumberFormatException localNumberFormatException1 = new java/lang/NumberFormatException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject3 = "JSON forbids octal prefixes: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject3 = value;
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject2 = ((StringBuilder)localObject2).toString();
        localNumberFormatException1.<init>((String)localObject2);
        throw localNumberFormatException1;
      }
    }
    boolean bool3 = lenient;
    if (!bool3)
    {
      bool3 = Double.isNaN(d1);
      if (!bool3)
      {
        bool3 = Double.isInfinite(d1);
        if (!bool3) {}
      }
      else
      {
        NumberFormatException localNumberFormatException2 = new java/lang/NumberFormatException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject3 = "JSON forbids NaN and infinities: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject3 = value;
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject2 = ((StringBuilder)localObject2).toString();
        localNumberFormatException2.<init>((String)localObject2);
        throw localNumberFormatException2;
      }
    }
    advance();
    return d1;
  }
  
  private JsonToken nextInArray(boolean paramBoolean)
    throws IOException
  {
    int m = 1;
    label16:
    JsonToken localJsonToken;
    if (paramBoolean)
    {
      JsonScope localJsonScope = JsonScope.NONEMPTY_ARRAY;
      replaceTop(localJsonScope);
      int i = nextNonWhitespace();
      switch (i)
      {
      default: 
        i = pos;
        i -= m;
        pos = i;
        localJsonToken = nextValue();
      }
    }
    for (;;)
    {
      return localJsonToken;
      int j = nextNonWhitespace();
      Object localObject1;
      switch (j)
      {
      case 44: 
      default: 
        localObject1 = "Unterminated array";
        localObject1 = syntaxError((String)localObject1);
        throw ((Throwable)localObject1);
      case 93: 
        pop();
        hasToken = m;
        localObject1 = JsonToken.END_ARRAY;
        token = ((JsonToken)localObject1);
        break;
      case 59: 
        checkLenient();
        break label16;
        if (paramBoolean)
        {
          pop();
          hasToken = m;
          localObject1 = JsonToken.END_ARRAY;
          token = ((JsonToken)localObject1);
        }
        else
        {
          checkLenient();
          int k = pos;
          k -= m;
          pos = k;
          hasToken = m;
          Object localObject2 = "null";
          value = ((String)localObject2);
          localObject2 = JsonToken.NULL;
          token = ((JsonToken)localObject2);
        }
        break;
      }
    }
  }
  
  private JsonToken nextInObject(boolean paramBoolean)
    throws IOException
  {
    int n = 1;
    int i;
    Object localObject1;
    if (paramBoolean)
    {
      int j = nextNonWhitespace();
      switch (j)
      {
      default: 
        j = pos;
        j -= n;
        pos = j;
        i = nextNonWhitespace();
        switch (i)
        {
        default: 
          checkLenient();
          j = pos;
          j -= n;
          pos = j;
          String str = nextLiteral();
          name = str;
          str = name;
          int k = str.length();
          if (k == 0)
          {
            localObject1 = "Expected name";
            localObject1 = syntaxError((String)localObject1);
            throw ((Throwable)localObject1);
          }
          break;
        }
      case 125: 
        pop();
        hasToken = n;
        localObject1 = JsonToken.END_OBJECT;
        token = ((JsonToken)localObject1);
      }
    }
    for (;;)
    {
      return (JsonToken)localObject1;
      int m = nextNonWhitespace();
      switch (m)
      {
      case 44: 
      case 59: 
      default: 
        localObject2 = "Unterminated object";
        localObject2 = syntaxError((String)localObject2);
        throw ((Throwable)localObject2);
      }
      pop();
      hasToken = n;
      Object localObject2 = JsonToken.END_OBJECT;
      token = ((JsonToken)localObject2);
      continue;
      checkLenient();
      char c = (char)i;
      Object localObject3 = nextString(c);
      name = ((String)localObject3);
      localObject3 = JsonScope.DANGLING_NAME;
      replaceTop((JsonScope)localObject3);
      hasToken = n;
      localObject3 = JsonToken.NAME;
      token = ((JsonToken)localObject3);
    }
  }
  
  public int nextInt()
    throws IOException
  {
    quickPeek();
    Object localObject1 = value;
    Object localObject2;
    if (localObject1 == null)
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Expected an int but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    int i;
    try
    {
      localObject1 = value;
      i = Integer.parseInt((String)localObject1);
    }
    catch (NumberFormatException localNumberFormatException3)
    {
      boolean bool3;
      do
      {
        long l1;
        long l2;
        boolean bool1;
        String str1;
        boolean bool2;
        NumberFormatException localNumberFormatException2;
        String str3;
        NumberFormatException localNumberFormatException1 = localNumberFormatException3;
        String str2 = value;
        double d1 = Double.parseDouble(str2);
        i = (int)d1;
        double d2 = i;
        bool3 = d2 < d1;
      } while (!bool3);
      NumberFormatException localNumberFormatException4 = new java/lang/NumberFormatException;
      localObject2 = value;
      localNumberFormatException4.<init>((String)localObject2);
      throw localNumberFormatException4;
    }
    l1 = i;
    l2 = 1L;
    bool1 = l1 < l2;
    if (!bool1)
    {
      str1 = value;
      localObject2 = "0";
      bool2 = str1.startsWith((String)localObject2);
      if (bool2)
      {
        localNumberFormatException2 = new java/lang/NumberFormatException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        str3 = "JSON forbids octal prefixes: ";
        localObject2 = ((StringBuilder)localObject2).append(str3);
        str3 = value;
        localObject2 = ((StringBuilder)localObject2).append(str3);
        localObject2 = ((StringBuilder)localObject2).toString();
        localNumberFormatException2.<init>((String)localObject2);
        throw localNumberFormatException2;
      }
    }
    advance();
    return i;
  }
  
  private String nextLiteral()
    throws IOException
  {
    int i3 = 1;
    StringBuilder localStringBuilder = null;
    int j = pos;
    int i2;
    for (;;)
    {
      int k = pos;
      int n = limit;
      if (k >= n) {
        break;
      }
      char[] arrayOfChar1 = buffer;
      n = pos;
      i2 = n + 1;
      pos = i2;
      int i = arrayOfChar1[n];
      switch (i)
      {
      }
    }
    label203:
    int m = pos;
    m -= i3;
    pos = m;
    boolean bool1 = skipping;
    Object localObject;
    if (bool1) {
      localObject = "skipped!";
    }
    for (;;)
    {
      return (String)localObject;
      checkLenient();
      break label203;
      if (localStringBuilder == null)
      {
        localObject = new java/lang/String;
        char[] arrayOfChar2 = buffer;
        i2 = pos;
        i2 -= j;
        ((String)localObject).<init>(arrayOfChar2, j, i2);
      }
      else
      {
        localObject = buffer;
        int i1 = pos;
        i1 -= j;
        localStringBuilder.append((char[])localObject, j, i1);
        localObject = localStringBuilder.toString();
        continue;
        if (localStringBuilder == null)
        {
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
        }
        localObject = buffer;
        i1 = pos;
        i1 -= j;
        localStringBuilder.append((char[])localObject, j, i1);
        boolean bool2 = fillBuffer(i3);
        if (bool2) {
          break;
        }
        String str = localStringBuilder.toString();
      }
    }
  }
  
  public long nextLong()
    throws IOException
  {
    quickPeek();
    Object localObject1 = value;
    Object localObject2;
    Object localObject3;
    if (localObject1 == null)
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "Expected a long but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    long l1;
    try
    {
      localObject1 = value;
      l1 = Long.parseLong((String)localObject1);
    }
    catch (NumberFormatException localNumberFormatException3)
    {
      boolean bool3;
      do
      {
        long l2;
        boolean bool1;
        String str1;
        boolean bool2;
        NumberFormatException localNumberFormatException2;
        NumberFormatException localNumberFormatException1 = localNumberFormatException3;
        String str2 = value;
        double d1 = Double.parseDouble(str2);
        l1 = d1;
        double d2 = l1;
        bool3 = d2 < d1;
      } while (!bool3);
      NumberFormatException localNumberFormatException4 = new java/lang/NumberFormatException;
      localObject2 = value;
      localNumberFormatException4.<init>((String)localObject2);
      throw localNumberFormatException4;
    }
    l2 = 1L;
    bool1 = l1 < l2;
    if (!bool1)
    {
      str1 = value;
      localObject2 = "0";
      bool2 = str1.startsWith((String)localObject2);
      if (bool2)
      {
        localNumberFormatException2 = new java/lang/NumberFormatException;
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject3 = "JSON forbids octal prefixes: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject3 = value;
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject2 = ((StringBuilder)localObject2).toString();
        localNumberFormatException2.<init>((String)localObject2);
        throw localNumberFormatException2;
      }
    }
    advance();
    return l1;
  }
  
  public String nextName()
    throws IOException
  {
    quickPeek();
    Object localObject1 = token;
    Object localObject2 = JsonToken.NAME;
    if (localObject1 != localObject2)
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Expected a name but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    String str = name;
    advance();
    return str;
  }
  
  private int nextNonWhitespace()
    throws IOException
  {
    int i4 = 1;
    for (;;)
    {
      int k = pos;
      int i2 = limit;
      if (k >= i2)
      {
        boolean bool1 = fillBuffer(i4);
        if (!bool1) {
          break;
        }
      }
      char[] arrayOfChar1 = buffer;
      i2 = pos;
      int i3 = i2 + 1;
      pos = i3;
      int i = arrayOfChar1[i2];
      switch (i)
      {
      case 9: 
      case 10: 
      case 13: 
      case 32: 
      default: 
      case 47: 
        for (;;)
        {
          return i;
          int m = pos;
          i2 = limit;
          if (m == i2)
          {
            boolean bool2 = fillBuffer(i4);
            if (!bool2) {}
          }
          else
          {
            checkLenient();
            char[] arrayOfChar2 = buffer;
            i2 = pos;
            int j = arrayOfChar2[i2];
            switch (j)
            {
            }
          }
        }
        int n = pos;
        n += 1;
        pos = n;
        String str1 = "*/";
        boolean bool3 = skipTo(str1);
        if (!bool3)
        {
          Object localObject = "Unterminated comment";
          localObject = syntaxError((String)localObject);
          throw ((Throwable)localObject);
        }
        int i1 = pos;
        i1 += 2;
        pos = i1;
        continue;
        i1 = pos;
        i1 += 1;
        pos = i1;
        skipToEndOfLine();
        break;
      case 35: 
        checkLenient();
        skipToEndOfLine();
      }
    }
    EOFException localEOFException = new java/io/EOFException;
    String str2 = "End of input";
    localEOFException.<init>(str2);
    throw localEOFException;
  }
  
  public void nextNull()
    throws IOException
  {
    quickPeek();
    Object localObject1 = value;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject1 = token;
      localObject2 = JsonToken.STRING;
      if (localObject1 != localObject2) {}
    }
    else
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "Expected null but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    localObject1 = value;
    Object localObject2 = "null";
    boolean bool = ((String)localObject1).equalsIgnoreCase((String)localObject2);
    if (!bool)
    {
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "Not a null: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = value;
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      localIllegalStateException.<init>((String)localObject2);
      throw localIllegalStateException;
    }
    advance();
  }
  
  public String nextString()
    throws IOException
  {
    peek();
    Object localObject1 = value;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = token;
      localObject2 = JsonToken.STRING;
      if (localObject1 != localObject2)
      {
        localObject1 = token;
        localObject2 = JsonToken.NUMBER;
        if (localObject1 == localObject2) {}
      }
    }
    else
    {
      localObject1 = new java/lang/IllegalStateException;
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Expected a string but was ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = peek();
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((IllegalStateException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    String str = value;
    advance();
    return str;
  }
  
  private String nextString(char paramChar)
    throws IOException
  {
    int i1 = 1;
    StringBuilder localStringBuilder = null;
    boolean bool2;
    do
    {
      int i = pos;
      for (;;)
      {
        int j = pos;
        int k = limit;
        if (j >= k) {
          break;
        }
        char[] arrayOfChar1 = buffer;
        k = pos;
        int n = k + 1;
        pos = n;
        char c1 = arrayOfChar1[k];
        if (c1 == paramChar)
        {
          boolean bool1 = skipping;
          Object localObject1;
          if (bool1) {
            localObject1 = "skipped!";
          }
          for (;;)
          {
            return (String)localObject1;
            if (localStringBuilder == null)
            {
              localObject1 = new java/lang/String;
              char[] arrayOfChar4 = buffer;
              n = pos;
              n -= i;
              n -= i1;
              ((String)localObject1).<init>(arrayOfChar4, i, n);
            }
            else
            {
              localObject1 = buffer;
              m = pos;
              m -= i;
              m -= i1;
              localStringBuilder.append((char[])localObject1, i, m);
              localObject1 = localStringBuilder.toString();
            }
          }
        }
        char c2 = '\\';
        if (c1 == c2)
        {
          if (localStringBuilder == null)
          {
            localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
          }
          char[] arrayOfChar2 = buffer;
          m = pos;
          m -= i;
          m -= i1;
          localStringBuilder.append(arrayOfChar2, i, m);
          char c3 = readEscapeCharacter();
          localStringBuilder.append(c3);
          i = pos;
        }
      }
      if (localStringBuilder == null)
      {
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
      }
      char[] arrayOfChar3 = buffer;
      int m = pos;
      m -= i;
      localStringBuilder.append(arrayOfChar3, i, m);
      bool2 = fillBuffer(i1);
    } while (bool2);
    Object localObject2 = "Unterminated string";
    localObject2 = syntaxError((String)localObject2);
    throw ((Throwable)localObject2);
  }
  
  private JsonToken nextValue()
    throws IOException
  {
    int k = 1;
    int i = nextNonWhitespace();
    Object localObject1;
    switch (i)
    {
    default: 
      int j = pos;
      j -= k;
      pos = j;
      localObject1 = readLiteral();
    }
    for (;;)
    {
      return (JsonToken)localObject1;
      localObject1 = JsonScope.EMPTY_OBJECT;
      push((JsonScope)localObject1);
      hasToken = k;
      localObject1 = JsonToken.BEGIN_OBJECT;
      token = ((JsonToken)localObject1);
      continue;
      localObject1 = JsonScope.EMPTY_ARRAY;
      push((JsonScope)localObject1);
      hasToken = k;
      localObject1 = JsonToken.BEGIN_ARRAY;
      token = ((JsonToken)localObject1);
      continue;
      checkLenient();
      char c = (char)i;
      Object localObject2 = nextString(c);
      value = ((String)localObject2);
      hasToken = k;
      localObject2 = JsonToken.STRING;
      token = ((JsonToken)localObject2);
    }
  }
  
  private JsonToken objectValue()
    throws IOException
  {
    int i = nextNonWhitespace();
    switch (i)
    {
    case 59: 
    case 60: 
    default: 
      Object localObject1 = "Expected ':'";
      localObject1 = syntaxError((String)localObject1);
      throw ((Throwable)localObject1);
    case 61: 
      checkLenient();
      int j = pos;
      int m = limit;
      if (j >= m)
      {
        j = 1;
        boolean bool = fillBuffer(j);
        if (!bool) {
          break;
        }
      }
      else
      {
        char[] arrayOfChar = buffer;
        m = pos;
        int k = arrayOfChar[m];
        m = 62;
        if (k == m)
        {
          k = pos;
          k += 1;
          pos = k;
        }
      }
      break;
    }
    Object localObject2 = JsonScope.NONEMPTY_OBJECT;
    replaceTop((JsonScope)localObject2);
    localObject2 = nextValue();
    return (JsonToken)localObject2;
  }
  
  public JsonToken peek()
    throws IOException
  {
    quickPeek();
    JsonToken localJsonToken = token;
    if (localJsonToken == null) {
      decodeLiteral();
    }
    localJsonToken = token;
    return localJsonToken;
  }
  
  private JsonScope peekStack()
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
  
  private JsonScope pop()
  {
    List localList1 = stack;
    List localList2 = stack;
    int i = localList2.size();
    int j = 1;
    i -= j;
    this = localList1.remove(i);
    this = (JsonScope)this;
    return this;
  }
  
  private void push(JsonScope paramJsonScope)
  {
    List localList = stack;
    localList.add(paramJsonScope);
  }
  
  private JsonToken quickPeek()
    throws IOException
  {
    boolean bool6 = false;
    boolean bool5 = true;
    boolean bool1 = hasToken;
    Object localObject1;
    if (bool1) {
      localObject1 = token;
    }
    for (;;)
    {
      return (JsonToken)localObject1;
      localObject1 = JsonReader.1.$SwitchMap$com$google$gson$stream$JsonScope;
      JsonScope localJsonScope2 = peekStack();
      int j = localJsonScope2.ordinal();
      int i = localObject1[j];
      Object localObject2;
      switch (i)
      {
      default: 
        AssertionError localAssertionError = new java/lang/AssertionError;
        localAssertionError.<init>();
        throw localAssertionError;
      case 1: 
        boolean bool2 = lenient;
        if (bool2) {
          consumeNonExecutePrefix();
        }
        JsonScope localJsonScope1 = JsonScope.NONEMPTY_DOCUMENT;
        replaceTop(localJsonScope1);
        JsonToken localJsonToken1 = nextValue();
        boolean bool3 = lenient;
        if (!bool3)
        {
          localObject2 = JsonToken.BEGIN_ARRAY;
          if (localJsonToken1 != localObject2)
          {
            localObject2 = JsonToken.BEGIN_OBJECT;
            if (localJsonToken1 != localObject2)
            {
              localObject2 = "Expected JSON document to start with '[' or '{'";
              syntaxError((String)localObject2);
            }
          }
        }
        localObject2 = localJsonToken1;
        break;
      case 2: 
        localObject2 = nextInArray(bool5);
        break;
      case 3: 
        localObject2 = nextInArray(bool6);
        break;
      case 4: 
        localObject2 = nextInObject(bool5);
        break;
      case 5: 
        localObject2 = objectValue();
        break;
      case 6: 
        localObject2 = nextInObject(bool6);
        break;
      case 7: 
        try
        {
          JsonToken localJsonToken2 = nextValue();
          boolean bool4 = lenient;
          Object localObject3;
          if (bool4)
          {
            localObject3 = localJsonToken2;
          }
          else
          {
            localObject3 = "Expected EOF";
            localObject3 = syntaxError((String)localObject3);
            throw ((Throwable)localObject3);
          }
        }
        catch (EOFException localEOFException2)
        {
          EOFException localEOFException1 = localEOFException2;
          hasToken = bool5;
          localObject4 = JsonToken.END_DOCUMENT;
          token = ((JsonToken)localObject4);
        }
      }
    }
    Object localObject4 = new java/lang/IllegalStateException;
    String str = "JsonReader is closed";
    ((IllegalStateException)localObject4).<init>(str);
    throw ((Throwable)localObject4);
  }
  
  private char readEscapeCharacter()
    throws IOException
  {
    int i2 = 4;
    int j = pos;
    int n = limit;
    if (j == n)
    {
      j = 1;
      boolean bool1 = fillBuffer(j);
      if (!bool1)
      {
        localObject1 = "Unterminated escape sequence";
        localObject1 = syntaxError((String)localObject1);
        throw ((Throwable)localObject1);
      }
    }
    Object localObject1 = buffer;
    n = pos;
    int i1 = n + 1;
    pos = i1;
    int i = localObject1[n];
    switch (i)
    {
    default: 
      localObject1 = i;
    }
    for (;;)
    {
      return (char)localObject1;
      int k = pos;
      k += 4;
      n = limit;
      if (k > n)
      {
        boolean bool2 = fillBuffer(i2);
        if (!bool2)
        {
          localObject2 = "Unterminated escape sequence";
          localObject2 = syntaxError((String)localObject2);
          throw ((Throwable)localObject2);
        }
      }
      String str = new java/lang/String;
      Object localObject2 = buffer;
      n = pos;
      str.<init>((char[])localObject2, n, i2);
      int m = pos;
      m += 4;
      pos = m;
      m = 16;
      m = Integer.parseInt(str, m);
      m = (char)m;
      continue;
      m = 9;
      continue;
      m = 8;
      continue;
      m = 10;
      continue;
      m = 13;
      continue;
      m = 12;
    }
  }
  
  private JsonToken readLiteral()
    throws IOException
  {
    String str = nextLiteral();
    int i = str.length();
    if (i == 0)
    {
      Object localObject = "Expected literal value";
      localObject = syntaxError((String)localObject);
      throw ((Throwable)localObject);
    }
    value = str;
    boolean bool = true;
    hasToken = bool;
    JsonToken localJsonToken = null;
    token = localJsonToken;
    return localJsonToken;
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
  
  public void setLenient(boolean paramBoolean)
  {
    lenient = paramBoolean;
  }
  
  private boolean skipTo(String paramString)
    throws IOException
  {
    int k = pos;
    int i2 = paramString.length();
    k += i2;
    i2 = limit;
    if (k >= i2)
    {
      k = paramString.length();
      boolean bool = fillBuffer(k);
      if (!bool) {}
    }
    else
    {
      int i = 0;
      for (;;)
      {
        int m = paramString.length();
        if (i >= m) {
          break label115;
        }
        char[] arrayOfChar = buffer;
        i2 = pos;
        i2 += i;
        n = arrayOfChar[i2];
        i2 = paramString.charAt(i);
        if (n != i2)
        {
          n = pos;
          n += 1;
          pos = n;
          break;
        }
        int j;
        i += 1;
      }
    }
    label115:
    int i1;
    for (int n = 1;; i1 = 0) {
      return n;
    }
  }
  
  private void skipToEndOfLine()
    throws IOException
  {
    int i;
    int k;
    do
    {
      int j = pos;
      int m = limit;
      if (j >= m)
      {
        j = 1;
        boolean bool = fillBuffer(j);
        if (!bool) {
          break;
        }
      }
      char[] arrayOfChar = buffer;
      m = pos;
      int n = m + 1;
      pos = n;
      i = arrayOfChar[m];
      k = 13;
      if (i == k) {
        break;
      }
      k = 10;
    } while (i != k);
  }
  
  /* Error */
  public void skipValue()
    throws IOException
  {
    // Byte code:
    //   0: nop
    //   1: iconst_0
    //   2: istore 4
    //   4: iconst_1
    //   5: istore_3
    //   6: aload_0
    //   7: iload_3
    //   8: putfield 132	com/google/kagegamesgson/stream/JsonReader:skipping	Z
    //   11: iconst_0
    //   12: istore_1
    //   13: aload_0
    //   14: invokespecial 372	com/google/kagegamesgson/stream/JsonReader:advance	()Lcom/google/kagegamesgson/stream/JsonToken;
    //   17: astore_2
    //   18: getstatic 326	com/google/kagegamesgson/stream/JsonToken:BEGIN_ARRAY	Lcom/google/kagegamesgson/stream/JsonToken;
    //   21: astore_3
    //   22: aload_2
    //   23: aload_3
    //   24: if_acmpeq +12 -> 36
    //   27: getstatic 267	com/google/kagegamesgson/stream/JsonToken:BEGIN_OBJECT	Lcom/google/kagegamesgson/stream/JsonToken;
    //   30: astore_3
    //   31: aload_2
    //   32: aload_3
    //   33: if_acmpne +18 -> 51
    //   36: iload_1
    //   37: iconst_1
    //   38: iadd
    //   39: istore_1
    //   40: iload_1
    //   41: ifne -28 -> 13
    //   44: aload_0
    //   45: iload 4
    //   47: putfield 132	com/google/kagegamesgson/stream/JsonReader:skipping	Z
    //   50: return
    //   51: getstatic 10	com/google/kagegamesgson/stream/JsonToken:END_ARRAY	Lcom/google/kagegamesgson/stream/JsonToken;
    //   54: astore_3
    //   55: aload_2
    //   56: aload_3
    //   57: if_acmpeq +12 -> 69
    //   60: getstatic 255	com/google/kagegamesgson/stream/JsonToken:END_OBJECT	Lcom/google/kagegamesgson/stream/JsonToken;
    //   63: astore_3
    //   64: aload_2
    //   65: aload_3
    //   66: if_acmpne -26 -> 40
    //   69: iload_1
    //   70: iconst_m1
    //   71: iadd
    //   72: istore_1
    //   73: goto -33 -> 40
    //   76: astore_3
    //   77: aload_0
    //   78: iload 4
    //   80: putfield 132	com/google/kagegamesgson/stream/JsonReader:skipping	Z
    //   83: aload_3
    //   84: athrow
    //   85: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	JsonReader
    //   12	61	1	i	int
    //   17	48	2	localJsonToken1	JsonToken
    //   5	3	3	bool1	boolean
    //   21	45	3	localJsonToken2	JsonToken
    //   76	8	3	localObject	Object
    //   2	77	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   13	17	76	finally
    //   18	22	76	finally
    //   27	31	76	finally
    //   51	55	76	finally
    //   60	64	76	finally
  }
  
  private IOException syntaxError(String paramString)
    throws IOException
  {
    MalformedJsonException localMalformedJsonException = new com/google/kagegamesgson/stream/MalformedJsonException;
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    localObject1 = ((StringBuilder)localObject1).append(paramString);
    Object localObject2 = " near ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = getSnippet();
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    localMalformedJsonException.<init>((String)localObject1);
    throw localMalformedJsonException;
  }
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = getClass();
    localObject2 = ((Class)localObject2).getSimpleName();
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = " near ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = getSnippet();
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    return (String)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.JsonReader
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */