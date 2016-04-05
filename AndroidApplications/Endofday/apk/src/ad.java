import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class ad
{
  private static final char[] a;
  private static final Set b;
  private static final Set c;
  private final boolean d;
  
  static
  {
    int i = 16;
    Object localObject = new char[i];
    a = (char[])localObject;
    localObject = new java/util/HashSet;
    ((HashSet)localObject).<init>();
    char c1 = '"';
    Character localCharacter1 = Character.valueOf(c1);
    ((Set)localObject).add(localCharacter1);
    char c2 = '\\';
    Character localCharacter2 = Character.valueOf(c2);
    ((Set)localObject).add(localCharacter2);
    localObject = Collections.unmodifiableSet((Set)localObject);
    b = (Set)localObject;
    localObject = new java/util/HashSet;
    ((HashSet)localObject).<init>();
    char c3 = '<';
    Character localCharacter3 = Character.valueOf(c3);
    ((Set)localObject).add(localCharacter3);
    char c4 = '>';
    Character localCharacter4 = Character.valueOf(c4);
    ((Set)localObject).add(localCharacter4);
    char c5 = '&';
    Character localCharacter5 = Character.valueOf(c5);
    ((Set)localObject).add(localCharacter5);
    char c6 = '=';
    Character localCharacter6 = Character.valueOf(c6);
    ((Set)localObject).add(localCharacter6);
    char c7 = '\'';
    Character localCharacter7 = Character.valueOf(c7);
    ((Set)localObject).add(localCharacter7);
    localObject = Collections.unmodifiableSet((Set)localObject);
    c = (Set)localObject;
  }
  
  ad(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public final String a(CharSequence paramCharSequence)
  {
    Object localObject = new java/lang/StringBuffer;
    int i = paramCharSequence.length();
    i += 20;
    ((StringBuffer)localObject).<init>(i);
    try
    {
      a(paramCharSequence, (StringBuffer)localObject);
      localObject = ((StringBuffer)localObject).toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      localRuntimeException.<init>(localIOException);
      throw localRuntimeException;
    }
  }
  
  private static void a(int paramInt, Appendable paramAppendable)
    throws IOException
  {
    char[] arrayOfChar1;
    int j;
    for (int i = paramInt;; c1 = arrayOfChar1[j])
    {
      boolean bool = Character.isSupplementaryCodePoint(i);
      if (!bool) {
        break;
      }
      arrayOfChar1 = Character.toChars(i);
      bool = false;
      j = arrayOfChar1[bool];
      a(j, paramAppendable);
      j = 1;
    }
    Object localObject = "\\u";
    localObject = paramAppendable.append((CharSequence)localObject);
    char[] arrayOfChar2 = a;
    int k = c1 >>> '\f';
    k &= 0xF;
    char c2 = arrayOfChar2[k];
    localObject = ((Appendable)localObject).append(c2);
    char[] arrayOfChar3 = a;
    k = c1 >>> '\b';
    k &= 0xF;
    char c3 = arrayOfChar3[k];
    localObject = ((Appendable)localObject).append(c3);
    char[] arrayOfChar4 = a;
    k = c1 >>> '\004';
    k &= 0xF;
    char c4 = arrayOfChar4[k];
    localObject = ((Appendable)localObject).append(c4);
    char[] arrayOfChar5 = a;
    c1 &= 0xF;
    char c1 = arrayOfChar5[c1];
    ((Appendable)localObject).append(c1);
  }
  
  private void a(CharSequence paramCharSequence, StringBuffer paramStringBuffer)
    throws IOException
  {
    int i3 = 1;
    int i2 = 0;
    int i = paramCharSequence.length();
    int j = i2;
    int k = i2;
    if (j < i)
    {
      int m = Character.codePointAt(paramCharSequence, j);
      int n = Character.charCount(m);
      int i1 = 32;
      if (m >= i1)
      {
        i1 = 8232;
        if (m != i1)
        {
          i1 = 8233;
          if (m != i1)
          {
            i1 = 127;
            if (m < i1) {
              break label312;
            }
            i1 = 159;
            if (m > i1) {
              break label312;
            }
          }
        }
      }
      i1 = i3;
      label105:
      boolean bool2;
      if (i1 == 0)
      {
        boolean bool1 = Character.isSupplementaryCodePoint(m);
        if (bool1) {
          break label326;
        }
        char c1 = (char)m;
        Set localSet1 = b;
        Character localCharacter2 = Character.valueOf(c1);
        boolean bool3 = localSet1.contains(localCharacter2);
        if (!bool3)
        {
          bool3 = d;
          if (!bool3) {
            break label319;
          }
          Set localSet2 = c;
          Character localCharacter1 = Character.valueOf(c1);
          bool2 = localSet2.contains(localCharacter1);
          if (!bool2) {
            break label319;
          }
        }
        bool2 = i3;
        label198:
        if (!bool2) {}
      }
      else
      {
        paramStringBuffer.append(paramCharSequence, k, j);
        k = j + n;
        switch (m)
        {
        default: 
          a(m, paramStringBuffer);
        }
      }
      for (;;)
      {
        j += n;
        break;
        label312:
        bool2 = i2;
        break label105;
        label319:
        bool2 = i2;
        break label198;
        label326:
        bool2 = i2;
        break label198;
        String str = "\\b";
        paramStringBuffer.append(str);
        continue;
        str = "\\t";
        paramStringBuffer.append(str);
        continue;
        str = "\\n";
        paramStringBuffer.append(str);
        continue;
        str = "\\f";
        paramStringBuffer.append(str);
        continue;
        str = "\\r";
        paramStringBuffer.append(str);
        continue;
        str = "\\\\";
        paramStringBuffer.append(str);
        continue;
        str = "\\/";
        paramStringBuffer.append(str);
        continue;
        str = "\\\"";
        paramStringBuffer.append(str);
      }
    }
    paramStringBuffer.append(paramCharSequence, k, i);
  }
}

/* Location:
 * Qualified Name:     ad
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */