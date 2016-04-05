package com.google.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class d
  implements Closeable, Flushable
{
  private static final String[] c = new String[''];
  private static final String[] d;
  public boolean a;
  public boolean b;
  private final Writer e;
  private int[] f = new int[32];
  private int g = 0;
  private String h;
  private String i;
  private boolean j;
  private String k;
  
  static
  {
    int m = 0;
    while (m <= 31)
    {
      c[m] = String.format("\\u%04x", new Object[] { Integer.valueOf(m) });
      m += 1;
    }
    c[34] = "\\\"";
    c[92] = "\\\\";
    c[9] = "\\t";
    c[8] = "\\b";
    c[10] = "\\n";
    c[13] = "\\r";
    c[12] = "\\f";
    String[] arrayOfString = (String[])c.clone();
    d = arrayOfString;
    arrayOfString[60] = "\\u003c";
    d[62] = "\\u003e";
    d[38] = "\\u0026";
    d[61] = "\\u003d";
    d[39] = "\\u0027";
  }
  
  public d(Writer paramWriter)
  {
    a(6);
    i = ":";
    b = true;
    if (paramWriter == null) {
      throw new NullPointerException("out == null");
    }
    e = paramWriter;
  }
  
  private int a()
  {
    if (g == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    return f[(g - 1)];
  }
  
  private d a(int paramInt1, int paramInt2, String paramString)
  {
    int m = a();
    if ((m != paramInt2) && (m != paramInt1)) {
      throw new IllegalStateException("Nesting problem.");
    }
    if (k != null) {
      throw new IllegalStateException("Dangling name: " + k);
    }
    g -= 1;
    if (m == paramInt2) {
      i();
    }
    e.write(paramString);
    return this;
  }
  
  private d a(int paramInt, String paramString)
  {
    b(true);
    a(paramInt);
    e.write(paramString);
    return this;
  }
  
  private void a(int paramInt)
  {
    if (g == f.length)
    {
      arrayOfInt = new int[g * 2];
      System.arraycopy(f, 0, arrayOfInt, 0, g);
      f = arrayOfInt;
    }
    int[] arrayOfInt = f;
    int m = g;
    g = (m + 1);
    arrayOfInt[m] = paramInt;
  }
  
  private void b(int paramInt)
  {
    f[(g - 1)] = paramInt;
  }
  
  private void b(boolean paramBoolean)
  {
    switch (a())
    {
    case 3: 
    case 5: 
    default: 
      throw new IllegalStateException("Nesting problem.");
    case 7: 
      if (!a) {
        throw new IllegalStateException("JSON must have only one top-level value.");
      }
    case 6: 
      if ((!a) && (!paramBoolean)) {
        throw new IllegalStateException("JSON must start with an array or an object.");
      }
      b(7);
      return;
    case 1: 
      b(2);
      i();
      return;
    case 2: 
      e.append(',');
      i();
      return;
    }
    e.append(i);
    b(5);
  }
  
  private void c(String paramString)
  {
    int n = 0;
    if (j) {}
    int i2;
    int m;
    int i3;
    int i1;
    for (String[] arrayOfString = d;; arrayOfString = c)
    {
      e.write("\"");
      i2 = paramString.length();
      m = 0;
      for (;;)
      {
        if (m >= i2) {
          break label161;
        }
        i3 = paramString.charAt(m);
        if (i3 >= 128) {
          break;
        }
        String str2 = arrayOfString[i3];
        str1 = str2;
        if (str2 != null) {
          break label104;
        }
        i1 = n;
        m += 1;
        n = i1;
      }
    }
    if (i3 == 8232) {}
    for (String str1 = "\\u2028";; str1 = "\\u2029")
    {
      label104:
      if (n < m) {
        e.write(paramString, n, m - n);
      }
      e.write(str1);
      i1 = m + 1;
      break;
      i1 = n;
      if (i3 != 8233) {
        break;
      }
    }
    label161:
    if (n < i2) {
      e.write(paramString, n, i2 - n);
    }
    e.write("\"");
  }
  
  private void h()
  {
    int m;
    if (k != null)
    {
      m = a();
      if (m != 5) {
        break label49;
      }
      e.write(44);
    }
    label49:
    while (m == 3)
    {
      i();
      b(4);
      c(k);
      k = null;
      return;
    }
    throw new IllegalStateException("Nesting problem.");
  }
  
  private void i()
  {
    if (h == null) {}
    for (;;)
    {
      return;
      e.write("\n");
      int m = 1;
      int n = g;
      while (m < n)
      {
        e.write(h);
        m += 1;
      }
    }
  }
  
  public d a(long paramLong)
  {
    h();
    b(false);
    e.write(Long.toString(paramLong));
    return this;
  }
  
  public d a(Number paramNumber)
  {
    if (paramNumber == null) {
      return f();
    }
    h();
    String str = paramNumber.toString();
    if ((!a) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN")))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
    }
    b(false);
    e.append(str);
    return this;
  }
  
  public d a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("name == null");
    }
    if (k != null) {
      throw new IllegalStateException();
    }
    if (g == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    k = paramString;
    return this;
  }
  
  public d a(boolean paramBoolean)
  {
    h();
    b(false);
    Writer localWriter = e;
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localWriter.write(str);
      return this;
    }
  }
  
  public d b()
  {
    h();
    return a(1, "[");
  }
  
  public d b(String paramString)
  {
    if (paramString == null) {
      return f();
    }
    h();
    b(false);
    c(paramString);
    return this;
  }
  
  public d c()
  {
    return a(1, 2, "]");
  }
  
  public void close()
  {
    e.close();
    int m = g;
    if ((m > 1) || ((m == 1) && (f[(m - 1)] != 7))) {
      throw new IOException("Incomplete document");
    }
    g = 0;
  }
  
  public d d()
  {
    h();
    return a(3, "{");
  }
  
  public d e()
  {
    return a(3, 5, "}");
  }
  
  public d f()
  {
    if (k != null)
    {
      if (b) {
        h();
      }
    }
    else
    {
      b(false);
      e.write("null");
      return this;
    }
    k = null;
    return this;
  }
  
  public void flush()
  {
    if (g == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    e.flush();
  }
  
  public final void g()
  {
    a = true;
  }
}

/* Location:
 * Qualified Name:     com.google.a.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */