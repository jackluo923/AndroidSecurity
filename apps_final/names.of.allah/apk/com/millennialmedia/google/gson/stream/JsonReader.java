package com.millennialmedia.google.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
  private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
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
  private final char[] buffer = new char['Ѐ'];
  private final Reader in;
  private boolean lenient = false;
  private int limit = 0;
  private int lineNumber = 0;
  private int lineStart = 0;
  private int peeked = 0;
  private long peekedLong;
  private int peekedNumberLength;
  private String peekedString;
  private int pos = 0;
  private int[] stack = new int[32];
  private int stackSize = 0;
  
  static
  {
    com.millennialmedia.google.gson.internal.JsonReaderInternalAccess.INSTANCE = new JsonReader.1();
  }
  
  public JsonReader(Reader paramReader)
  {
    int[] arrayOfInt = stack;
    int i = stackSize;
    stackSize = (i + 1);
    arrayOfInt[i] = 6;
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    in = paramReader;
  }
  
  private void checkLenient()
  {
    if (!lenient) {
      throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void consumeNonExecutePrefix()
  {
    nextNonWhitespace(true);
    pos -= 1;
    if ((pos + NON_EXECUTE_PREFIX.length > limit) && (!fillBuffer(NON_EXECUTE_PREFIX.length))) {
      return;
    }
    int i = 0;
    for (;;)
    {
      if (i >= NON_EXECUTE_PREFIX.length) {
        break label80;
      }
      if (buffer[(pos + i)] != NON_EXECUTE_PREFIX[i]) {
        break;
      }
      i += 1;
    }
    label80:
    pos += NON_EXECUTE_PREFIX.length;
  }
  
  private int doPeek()
  {
    int i = stack[(stackSize - 1)];
    if (i == 1)
    {
      stack[(stackSize - 1)] = 2;
      switch (nextNonWhitespace(true))
      {
      default: 
        pos -= 1;
        if (stackSize == 1) {
          checkLenient();
        }
        i = peekKeyword();
        if (i == 0) {
          break;
        }
      }
    }
    int j;
    do
    {
      return i;
      if (i == 2)
      {
        switch (nextNonWhitespace(true))
        {
        case 44: 
        default: 
          throw syntaxError("Unterminated array");
        case 93: 
          peeked = 4;
          return 4;
        }
        checkLenient();
        break;
      }
      if ((i == 3) || (i == 5))
      {
        stack[(stackSize - 1)] = 4;
        if (i == 5) {
          switch (nextNonWhitespace(true))
          {
          default: 
            throw syntaxError("Unterminated object");
          case 125: 
            peeked = 2;
            return 2;
          case 59: 
            checkLenient();
          }
        }
        j = nextNonWhitespace(true);
        switch (j)
        {
        default: 
          checkLenient();
          pos -= 1;
          if (isLiteral((char)j))
          {
            peeked = 14;
            return 14;
          }
          break;
        case 34: 
          peeked = 13;
          return 13;
        case 39: 
          checkLenient();
          peeked = 12;
          return 12;
        case 125: 
          if (i != 5)
          {
            peeked = 2;
            return 2;
          }
          throw syntaxError("Expected name");
        }
        throw syntaxError("Expected name");
      }
      if (i == 4)
      {
        stack[(stackSize - 1)] = 5;
        switch (nextNonWhitespace(true))
        {
        case 58: 
        case 59: 
        case 60: 
        default: 
          throw syntaxError("Expected ':'");
        }
        checkLenient();
        if (((pos >= limit) && (!fillBuffer(1))) || (buffer[pos] != '>')) {
          break;
        }
        pos += 1;
        break;
      }
      if (i == 6)
      {
        if (lenient) {
          consumeNonExecutePrefix();
        }
        stack[(stackSize - 1)] = 7;
        break;
      }
      if (i == 7)
      {
        if (nextNonWhitespace(false) == -1)
        {
          peeked = 17;
          return 17;
        }
        checkLenient();
        pos -= 1;
        break;
      }
      if (i != 8) {
        break;
      }
      throw new IllegalStateException("JsonReader is closed");
      if (i == 1)
      {
        peeked = 4;
        return 4;
      }
      if ((i == 1) || (i == 2))
      {
        checkLenient();
        pos -= 1;
        peeked = 7;
        return 7;
      }
      throw syntaxError("Unexpected value");
      checkLenient();
      peeked = 8;
      return 8;
      if (stackSize == 1) {
        checkLenient();
      }
      peeked = 9;
      return 9;
      peeked = 3;
      return 3;
      peeked = 1;
      return 1;
      j = peekNumber();
      i = j;
    } while (j != 0);
    if (!isLiteral(buffer[pos])) {
      throw syntaxError("Expected value");
    }
    checkLenient();
    peeked = 10;
    return 10;
  }
  
  private boolean fillBuffer(int paramInt)
  {
    boolean bool2 = false;
    char[] arrayOfChar = buffer;
    lineStart -= pos;
    if (limit != pos)
    {
      limit -= pos;
      System.arraycopy(arrayOfChar, pos, arrayOfChar, 0, limit);
    }
    for (;;)
    {
      pos = 0;
      int i;
      do
      {
        i = in.read(arrayOfChar, limit, arrayOfChar.length - limit);
        bool1 = bool2;
        if (i == -1) {
          break;
        }
        limit = (i + limit);
        i = paramInt;
        if (lineNumber == 0)
        {
          i = paramInt;
          if (lineStart == 0)
          {
            i = paramInt;
            if (limit > 0)
            {
              i = paramInt;
              if (arrayOfChar[0] == 65279)
              {
                pos += 1;
                lineStart += 1;
                i = paramInt + 1;
              }
            }
          }
        }
        paramInt = i;
      } while (limit < i);
      boolean bool1 = true;
      return bool1;
      limit = 0;
    }
  }
  
  private int getColumnNumber()
  {
    return pos - lineStart + 1;
  }
  
  private int getLineNumber()
  {
    return lineNumber + 1;
  }
  
  private boolean isLiteral(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      return true;
    case '#': 
    case '/': 
    case ';': 
    case '=': 
    case '\\': 
      checkLenient();
    }
    return false;
  }
  
  private int nextNonWhitespace(boolean paramBoolean)
  {
    char[] arrayOfChar = buffer;
    int i = pos;
    int j = limit;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i == j)
      {
        pos = i;
        if (fillBuffer(1))
        {
          m = pos;
          k = limit;
        }
      }
      else
      {
        i = m + 1;
        j = arrayOfChar[m];
        if (j == 10)
        {
          lineNumber += 1;
          lineStart = i;
          j = k;
          continue;
        }
        if ((j == 32) || (j == 13) || (j == 9)) {
          break label364;
        }
        if (j == 47)
        {
          pos = i;
          if (i == k)
          {
            pos -= 1;
            boolean bool = fillBuffer(2);
            pos += 1;
            if (!bool) {
              return j;
            }
          }
          checkLenient();
          switch (arrayOfChar[pos])
          {
          default: 
            return j;
          case '*': 
            pos += 1;
            if (!skipTo("*/")) {
              throw syntaxError("Unterminated comment");
            }
            i = pos + 2;
            j = limit;
            break;
          case '/': 
            pos += 1;
            skipToEndOfLine();
            i = pos;
            j = limit;
            break;
          }
        }
        if (j == 35)
        {
          pos = i;
          checkLenient();
          skipToEndOfLine();
          i = pos;
          j = limit;
          continue;
        }
        pos = i;
        return j;
      }
      if (paramBoolean) {
        throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
      }
      return -1;
      label364:
      j = k;
    }
  }
  
  private String nextQuotedValue(char paramChar)
  {
    char[] arrayOfChar = buffer;
    StringBuilder localStringBuilder = new StringBuilder();
    label150:
    do
    {
      char c2 = pos;
      int i = limit;
      char c3;
      for (char c1 = c2;; c1 = c3)
      {
        if (c1 >= i) {
          break label150;
        }
        c3 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          pos = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          return localStringBuilder.toString();
        }
        if (c1 == '\\')
        {
          pos = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          localStringBuilder.append(readEscapeCharacter());
          break;
        }
        if (c1 == '\n')
        {
          lineNumber += 1;
          lineStart = c3;
        }
      }
      localStringBuilder.append(arrayOfChar, c2, c1 - c2);
      pos = c1;
    } while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }
  
  private String nextUnquotedValue()
  {
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      Object localObject2;
      int j;
      if (pos + i < limit)
      {
        localObject2 = localObject1;
        j = i;
        switch (buffer[(pos + i)])
        {
        default: 
          i += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          checkLenient();
          j = i;
          localObject2 = localObject1;
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          label188:
          if (localObject2 != null) {}
          break;
        }
      }
      else
      {
        for (localObject1 = new String(buffer, pos, j);; localObject1 = ((StringBuilder)localObject2).toString())
        {
          pos = (j + pos);
          return (String)localObject1;
          if (i < buffer.length)
          {
            localObject2 = localObject1;
            j = i;
            if (!fillBuffer(i + 1)) {
              break label188;
            }
            break;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder();
          }
          ((StringBuilder)localObject2).append(buffer, pos, i);
          pos = (i + pos);
          if (fillBuffer(1)) {
            break label325;
          }
          j = 0;
          break label188;
          ((StringBuilder)localObject2).append(buffer, pos, j);
        }
        label325:
        i = 0;
        localObject1 = localObject2;
      }
    }
  }
  
  private int peekKeyword()
  {
    int i = buffer[pos];
    String str2;
    String str1;
    int k;
    int j;
    if ((i == 116) || (i == 84))
    {
      str2 = "true";
      str1 = "TRUE";
      i = 5;
      k = str2.length();
      j = 1;
    }
    for (;;)
    {
      if (j >= k) {
        break label176;
      }
      if ((pos + j >= limit) && (!fillBuffer(j + 1)))
      {
        return 0;
        if ((i == 102) || (i == 70))
        {
          str2 = "false";
          str1 = "FALSE";
          i = 6;
          break;
        }
        if ((i == 110) || (i == 78))
        {
          str2 = "null";
          str1 = "NULL";
          i = 7;
          break;
        }
        return 0;
      }
      int m = buffer[(pos + j)];
      if ((m != str2.charAt(j)) && (m != str1.charAt(j))) {
        return 0;
      }
      j += 1;
    }
    label176:
    if (((pos + k < limit) || (fillBuffer(k + 1))) && (isLiteral(buffer[(pos + k)]))) {
      return 0;
    }
    pos += k;
    peeked = i;
    return i;
  }
  
  private int peekNumber()
  {
    char[] arrayOfChar = buffer;
    int i2 = pos;
    int n = limit;
    long l1 = 0L;
    int i = 0;
    int j = 1;
    int k = 0;
    int m = 0;
    int i3 = n;
    int i1 = i3;
    n = i2;
    char c;
    if (i2 + m == i3)
    {
      if (m == arrayOfChar.length) {
        return 0;
      }
      if (fillBuffer(m + 1))
      {
        n = pos;
        i1 = limit;
      }
    }
    else
    {
      c = arrayOfChar[(n + m)];
      switch (c)
      {
      default: 
        if ((c < '0') || (c > '9'))
        {
          if (!isLiteral(c)) {
            break label458;
          }
          return 0;
        }
        break;
      case '-': 
        if (k == 0)
        {
          i = 1;
          k = 1;
        }
        break;
      }
    }
    for (;;)
    {
      int i4 = m + 1;
      m = k;
      i3 = i1;
      i2 = n;
      k = i;
      i = m;
      m = i4;
      break;
      if (k == 5)
      {
        i2 = 6;
        k = i;
        i = i2;
      }
      else
      {
        return 0;
        if (k == 5)
        {
          i2 = 6;
          k = i;
          i = i2;
        }
        else
        {
          return 0;
          if ((k == 2) || (k == 4))
          {
            i2 = 5;
            k = i;
            i = i2;
          }
          else
          {
            return 0;
            if (k == 2)
            {
              i2 = 3;
              k = i;
              i = i2;
            }
            else
            {
              return 0;
              if ((k == 1) || (k == 0))
              {
                l1 = -(c - '0');
                i2 = 2;
                k = i;
                i = i2;
              }
              else
              {
                if (k == 2)
                {
                  if (l1 == 0L) {
                    return 0;
                  }
                  long l2 = 10L * l1 - (c - '0');
                  if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {}
                  for (i3 = 1;; i3 = 0)
                  {
                    i2 = i;
                    l1 = l2;
                    j = i3 & j;
                    i = k;
                    k = i2;
                    break;
                  }
                }
                if (k == 3)
                {
                  i2 = 4;
                  k = i;
                  i = i2;
                }
                else if ((k == 5) || (k == 6))
                {
                  i2 = 7;
                  k = i;
                  i = i2;
                  continue;
                  label458:
                  if ((k == 2) && (j != 0) && ((l1 != Long.MIN_VALUE) || (i != 0)))
                  {
                    if (i != 0) {}
                    for (;;)
                    {
                      peekedLong = l1;
                      pos += m;
                      peeked = 15;
                      return 15;
                      l1 = -l1;
                    }
                  }
                  if ((k == 2) || (k == 4) || (k == 7))
                  {
                    peekedNumberLength = m;
                    peeked = 16;
                    return 16;
                  }
                  return 0;
                }
                else
                {
                  i2 = i;
                  i = k;
                  k = i2;
                }
              }
            }
          }
        }
      }
    }
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
  
  private char readEscapeCharacter()
  {
    if ((pos == limit) && (!fillBuffer(1))) {
      throw syntaxError("Unterminated escape sequence");
    }
    char[] arrayOfChar = buffer;
    int i = pos;
    pos = (i + 1);
    char c = arrayOfChar[i];
    switch (c)
    {
    default: 
      return c;
    case 'u': 
      if ((pos + 4 > limit) && (!fillBuffer(4))) {
        throw syntaxError("Unterminated escape sequence");
      }
      int j = pos;
      c = '\000';
      i = j;
      if (i < j + 4)
      {
        int k = buffer[i];
        int m = (char)(c << '\004');
        if ((k >= 48) && (k <= 57)) {
          c = (char)(m + (k - 48));
        }
        for (;;)
        {
          i += 1;
          break;
          if ((k >= 97) && (k <= 102))
          {
            c = (char)(m + (k - 97 + 10));
          }
          else
          {
            if ((k < 65) || (k > 70)) {
              break label271;
            }
            c = (char)(m + (k - 65 + 10));
          }
        }
        throw new NumberFormatException("\\u" + new String(buffer, pos, 4));
      }
      pos += 4;
      return c;
    case 't': 
      return '\t';
    case 'b': 
      return '\b';
    case 'n': 
      return '\n';
    case 'r': 
      return '\r';
    case 'f': 
      label271:
      return '\f';
    }
    lineNumber += 1;
    lineStart = pos;
    return c;
  }
  
  private void skipQuotedValue(char paramChar)
  {
    char[] arrayOfChar = buffer;
    label91:
    do
    {
      char c1 = pos;
      char c3 = limit;
      for (;;)
      {
        if (c1 >= c3) {
          break label91;
        }
        char c2 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          pos = c2;
          return;
        }
        if (c1 == '\\')
        {
          pos = c2;
          readEscapeCharacter();
          break;
        }
        if (c1 == '\n')
        {
          lineNumber += 1;
          lineStart = c2;
        }
        c1 = c2;
      }
      pos = c1;
    } while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }
  
  private boolean skipTo(String paramString)
  {
    boolean bool2 = false;
    for (;;)
    {
      if (pos + paramString.length() > limit)
      {
        bool1 = bool2;
        if (!fillBuffer(paramString.length())) {
          return bool1;
        }
      }
      if (buffer[pos] != '\n') {
        break;
      }
      lineNumber += 1;
      lineStart = (pos + 1);
      pos += 1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramString.length()) {
        break label116;
      }
      if (buffer[(pos + i)] != paramString.charAt(i)) {
        break;
      }
      i += 1;
    }
    label116:
    boolean bool1 = true;
    return bool1;
  }
  
  private void skipToEndOfLine()
  {
    int i;
    do
    {
      if ((pos < limit) || (fillBuffer(1)))
      {
        char[] arrayOfChar = buffer;
        i = pos;
        pos = (i + 1);
        i = arrayOfChar[i];
        if (i == 10)
        {
          lineNumber += 1;
          lineStart = pos;
        }
      }
      else
      {
        return;
      }
    } while (i != 13);
  }
  
  private void skipUnquotedValue()
  {
    do
    {
      int i = 0;
      while (pos + i < limit) {
        switch (buffer[(pos + i)])
        {
        default: 
          i += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          checkLenient();
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          pos = (i + pos);
          return;
        }
      }
      pos = (i + pos);
    } while (fillBuffer(1));
  }
  
  private IOException syntaxError(String paramString)
  {
    throw new MalformedJsonException(paramString + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public void beginArray()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 3)
    {
      push(1);
      peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public void beginObject()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 1)
    {
      push(3);
      peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public void close()
  {
    peeked = 0;
    stack[0] = 8;
    stackSize = 1;
    in.close();
  }
  
  public void endArray()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 4)
    {
      stackSize -= 1;
      peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public void endObject()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 2)
    {
      stackSize -= 1;
      peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public boolean hasNext()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    return (i != 2) && (i != 4);
  }
  
  public final boolean isLenient()
  {
    return lenient;
  }
  
  public boolean nextBoolean()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 5)
    {
      peeked = 0;
      return true;
    }
    if (i == 6)
    {
      peeked = 0;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public double nextDouble()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 15)
    {
      peeked = 0;
      return peekedLong;
    }
    if (i == 16)
    {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
    }
    double d;
    do
    {
      for (;;)
      {
        peeked = 11;
        d = Double.parseDouble(peekedString);
        if ((lenient) || ((!Double.isNaN(d)) && (!Double.isInfinite(d)))) {
          break label287;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + d + " at line " + getLineNumber() + " column " + getColumnNumber());
        if ((i == 8) || (i == 9))
        {
          if (i == 8) {}
          for (char c = '\'';; c = '"')
          {
            peekedString = nextQuotedValue(c);
            break;
          }
        }
        if (i != 10) {
          break;
        }
        peekedString = nextUnquotedValue();
      }
    } while (i == 11);
    throw new IllegalStateException("Expected a double but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    label287:
    peekedString = null;
    peeked = 0;
    return d;
  }
  
  public int nextInt()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 15)
    {
      i = (int)peekedLong;
      if (peekedLong != i) {
        throw new NumberFormatException("Expected an int but was " + peekedLong + " at line " + getLineNumber() + " column " + getColumnNumber());
      }
      peeked = 0;
      return i;
    }
    if (i == 16)
    {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
      peeked = 11;
      double d = Double.parseDouble(peekedString);
      i = (int)d;
      if (i != d) {
        throw new NumberFormatException("Expected an int but was " + peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
      }
    }
    else
    {
      if ((i == 8) || (i == 9))
      {
        if (i == 8) {}
        for (char c = '\'';; c = '"')
        {
          peekedString = nextQuotedValue(c);
          try
          {
            i = Integer.parseInt(peekedString);
            peeked = 0;
            return i;
          }
          catch (NumberFormatException localNumberFormatException) {}
          break;
        }
      }
      throw new IllegalStateException("Expected an int but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    peekedString = null;
    peeked = 0;
    return i;
  }
  
  public long nextLong()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 15)
    {
      peeked = 0;
      return peekedLong;
    }
    long l;
    if (i == 16)
    {
      peekedString = new String(buffer, pos, peekedNumberLength);
      pos += peekedNumberLength;
      peeked = 11;
      double d = Double.parseDouble(peekedString);
      l = d;
      if (l != d) {
        throw new NumberFormatException("Expected a long but was " + peekedString + " at line " + getLineNumber() + " column " + getColumnNumber());
      }
    }
    else
    {
      if ((i == 8) || (i == 9))
      {
        if (i == 8) {}
        for (char c = '\'';; c = '"')
        {
          peekedString = nextQuotedValue(c);
          try
          {
            l = Long.parseLong(peekedString);
            peeked = 0;
            return l;
          }
          catch (NumberFormatException localNumberFormatException) {}
          break;
        }
      }
      throw new IllegalStateException("Expected a long but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    peekedString = null;
    peeked = 0;
    return l;
  }
  
  public String nextName()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    String str;
    if (i == 14) {
      str = nextUnquotedValue();
    }
    for (;;)
    {
      peeked = 0;
      return str;
      if (i == 12)
      {
        str = nextQuotedValue('\'');
      }
      else
      {
        if (i != 13) {
          break;
        }
        str = nextQuotedValue('"');
      }
    }
    throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public void nextNull()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 7)
    {
      peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected null but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public String nextString()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    String str;
    if (i == 10) {
      str = nextUnquotedValue();
    }
    for (;;)
    {
      peeked = 0;
      return str;
      if (i == 8)
      {
        str = nextQuotedValue('\'');
      }
      else if (i == 9)
      {
        str = nextQuotedValue('"');
      }
      else if (i == 11)
      {
        str = peekedString;
        peekedString = null;
      }
      else if (i == 15)
      {
        str = Long.toString(peekedLong);
      }
      else
      {
        if (i != 16) {
          break;
        }
        str = new String(buffer, pos, peekedNumberLength);
        pos += peekedNumberLength;
      }
    }
    throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
  }
  
  public JsonToken peek()
  {
    int j = peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    switch (i)
    {
    default: 
      throw new AssertionError();
    case 1: 
      return JsonToken.BEGIN_OBJECT;
    case 2: 
      return JsonToken.END_OBJECT;
    case 3: 
      return JsonToken.BEGIN_ARRAY;
    case 4: 
      return JsonToken.END_ARRAY;
    case 12: 
    case 13: 
    case 14: 
      return JsonToken.NAME;
    case 5: 
    case 6: 
      return JsonToken.BOOLEAN;
    case 7: 
      return JsonToken.NULL;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return JsonToken.STRING;
    case 15: 
    case 16: 
      return JsonToken.NUMBER;
    }
    return JsonToken.END_DOCUMENT;
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    lenient = paramBoolean;
  }
  
  public void skipValue()
  {
    int j = 0;
    int i = peeked;
    int k = i;
    if (i == 0) {
      k = doPeek();
    }
    if (k == 3)
    {
      push(1);
      i = j + 1;
    }
    for (;;)
    {
      peeked = 0;
      j = i;
      if (i != 0) {
        break;
      }
      return;
      if (k == 1)
      {
        push(3);
        i = j + 1;
      }
      else if (k == 4)
      {
        stackSize -= 1;
        i = j - 1;
      }
      else if (k == 2)
      {
        stackSize -= 1;
        i = j - 1;
      }
      else if ((k == 14) || (k == 10))
      {
        skipUnquotedValue();
        i = j;
      }
      else if ((k == 8) || (k == 12))
      {
        skipQuotedValue('\'');
        i = j;
      }
      else if ((k == 9) || (k == 13))
      {
        skipQuotedValue('"');
        i = j;
      }
      else
      {
        i = j;
        if (k == 16)
        {
          pos += peekedNumberLength;
          i = j;
        }
      }
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.stream.JsonReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */