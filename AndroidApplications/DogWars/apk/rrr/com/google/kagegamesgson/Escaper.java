package com.google.kagegamesgson;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class Escaper
{
  private static final char[] HEX_CHARS;
  private static final Set HTML_ESCAPE_CHARS;
  private static final Set JS_ESCAPE_CHARS;
  private final boolean escapeHtmlCharacters;
  
  static
  {
    int i = 16;
    char[] arrayOfChar = new char[i];
    HEX_CHARS = arrayOfChar;
    HashSet localHashSet2 = new java/util/HashSet;
    localHashSet2.<init>();
    char c1 = '"';
    Character localCharacter1 = Character.valueOf(c1);
    localHashSet2.add(localCharacter1);
    char c2 = '\\';
    Object localObject1 = Character.valueOf(c2);
    localHashSet2.add(localObject1);
    localObject1 = Collections.unmodifiableSet(localHashSet2);
    JS_ESCAPE_CHARS = (Set)localObject1;
    HashSet localHashSet1 = new java/util/HashSet;
    localHashSet1.<init>();
    char c3 = '<';
    Character localCharacter2 = Character.valueOf(c3);
    localHashSet1.add(localCharacter2);
    char c4 = '>';
    Character localCharacter3 = Character.valueOf(c4);
    localHashSet1.add(localCharacter3);
    char c5 = '&';
    Character localCharacter4 = Character.valueOf(c5);
    localHashSet1.add(localCharacter4);
    char c6 = '=';
    Character localCharacter5 = Character.valueOf(c6);
    localHashSet1.add(localCharacter5);
    char c7 = '\'';
    Object localObject2 = Character.valueOf(c7);
    localHashSet1.add(localObject2);
    localObject2 = Collections.unmodifiableSet(localHashSet1);
    HTML_ESCAPE_CHARS = (Set)localObject2;
  }
  
  Escaper(boolean paramBoolean)
  {
    escapeHtmlCharacters = paramBoolean;
  }
  
  private static void appendHexJavaScriptRepresentation(int paramInt, Appendable paramAppendable)
    throws IOException
  {
    boolean bool = Character.isSupplementaryCodePoint(paramInt);
    if (bool)
    {
      char[] arrayOfChar1 = Character.toChars(paramInt);
      bool = false;
      int i = arrayOfChar1[bool];
      appendHexJavaScriptRepresentation(i, paramAppendable);
      i = 1;
      i = arrayOfChar1[i];
      appendHexJavaScriptRepresentation(i, paramAppendable);
    }
    for (;;)
    {
      return;
      Object localObject = "\\u";
      localObject = paramAppendable.append((CharSequence)localObject);
      char[] arrayOfChar2 = HEX_CHARS;
      int j = paramInt >>> 12;
      j &= 0xF;
      char c1 = arrayOfChar2[j];
      localObject = ((Appendable)localObject).append(c1);
      char[] arrayOfChar3 = HEX_CHARS;
      j = paramInt >>> 8;
      j &= 0xF;
      char c2 = arrayOfChar3[j];
      localObject = ((Appendable)localObject).append(c2);
      char[] arrayOfChar4 = HEX_CHARS;
      j = paramInt >>> 4;
      j &= 0xF;
      char c3 = arrayOfChar4[j];
      localObject = ((Appendable)localObject).append(c3);
      char[] arrayOfChar5 = HEX_CHARS;
      j = paramInt & 0xF;
      char c4 = arrayOfChar5[j];
      ((Appendable)localObject).append(c4);
    }
  }
  
  public String escapeJsonString(CharSequence paramCharSequence)
  {
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    int i = paramCharSequence.length();
    i += 20;
    localStringBuffer.<init>(i);
    try
    {
      escapeJsonString(paramCharSequence, localStringBuffer);
      localObject = localStringBuffer.toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      Object localObject = new java/lang/RuntimeException;
      ((RuntimeException)localObject).<init>(localIOException);
      throw ((Throwable)localObject);
    }
  }
  
  private void escapeJsonString(CharSequence paramCharSequence, StringBuffer paramStringBuffer)
    throws IOException
  {
    int n = 0;
    int m = paramCharSequence.length();
    int k = 0;
    if (k < m)
    {
      int j = Character.codePointAt(paramCharSequence, k);
      int i = Character.charCount(j);
      boolean bool = isControlCharacter(j);
      if (!bool)
      {
        bool = mustEscapeCharInJsString(j);
        if (bool) {}
      }
      for (;;)
      {
        k += i;
        break;
        paramStringBuffer.append(paramCharSequence, n, k);
        n = k + i;
        String str;
        switch (j)
        {
        default: 
          appendHexJavaScriptRepresentation(j, paramStringBuffer);
          break;
        case 8: 
          str = "\\b";
          paramStringBuffer.append(str);
          break;
        case 9: 
          str = "\\t";
          paramStringBuffer.append(str);
          break;
        case 10: 
          str = "\\n";
          paramStringBuffer.append(str);
          break;
        case 12: 
          str = "\\f";
          paramStringBuffer.append(str);
          break;
        case 13: 
          str = "\\r";
          paramStringBuffer.append(str);
          break;
        case 92: 
          str = "\\\\";
          paramStringBuffer.append(str);
          break;
        case 47: 
          str = "\\/";
          paramStringBuffer.append(str);
          break;
        case 34: 
          str = "\\\"";
          paramStringBuffer.append(str);
        }
      }
    }
    paramStringBuffer.append(paramCharSequence, n, m);
  }
  
  private static boolean isControlCharacter(int paramInt)
  {
    int i = 32;
    if (paramInt >= i)
    {
      i = 8232;
      if (paramInt != i)
      {
        i = 8233;
        if (paramInt != i)
        {
          i = 127;
          if (paramInt < i) {
            break label48;
          }
          i = 159;
          if (paramInt > i) {
            break label48;
          }
        }
      }
    }
    label48:
    for (i = 1;; i = 0) {
      return i;
    }
  }
  
  private boolean mustEscapeCharInJsString(int paramInt)
  {
    boolean bool4 = false;
    boolean bool1 = Character.isSupplementaryCodePoint(paramInt);
    boolean bool3;
    if (!bool1)
    {
      char c = (char)paramInt;
      Set localSet1 = JS_ESCAPE_CHARS;
      Character localCharacter = Character.valueOf(c);
      boolean bool2 = localSet1.contains(localCharacter);
      if (!bool2)
      {
        bool2 = escapeHtmlCharacters;
        if (bool2)
        {
          Set localSet2 = HTML_ESCAPE_CHARS;
          localCharacter = Character.valueOf(c);
          bool3 = localSet2.contains(localCharacter);
          if (!bool3) {}
        }
      }
      else
      {
        bool3 = true;
      }
    }
    for (;;)
    {
      return bool3;
      bool3 = bool4;
      continue;
      bool3 = bool4;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Escaper
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */