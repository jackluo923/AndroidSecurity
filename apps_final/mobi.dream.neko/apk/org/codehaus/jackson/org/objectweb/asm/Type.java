package org.codehaus.jackson.org.objectweb.asm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class Type
{
  public static final int ARRAY = 9;
  public static final int BOOLEAN = 1;
  public static final Type BOOLEAN_TYPE;
  public static final int BYTE = 3;
  public static final Type BYTE_TYPE;
  public static final int CHAR = 2;
  public static final Type CHAR_TYPE;
  public static final int DOUBLE = 8;
  public static final Type DOUBLE_TYPE = new Type(8, null, 1141048066, 1);
  public static final int FLOAT = 6;
  public static final Type FLOAT_TYPE;
  public static final int INT = 5;
  public static final Type INT_TYPE;
  public static final int LONG = 7;
  public static final Type LONG_TYPE;
  public static final int OBJECT = 10;
  public static final int SHORT = 4;
  public static final Type SHORT_TYPE;
  public static final int VOID = 0;
  public static final Type VOID_TYPE = new Type(0, null, 1443168256, 1);
  private final int a;
  private final char[] b;
  private final int c;
  private final int d;
  
  static
  {
    BOOLEAN_TYPE = new Type(1, null, 1509950721, 1);
    CHAR_TYPE = new Type(2, null, 1124075009, 1);
    BYTE_TYPE = new Type(3, null, 1107297537, 1);
    SHORT_TYPE = new Type(4, null, 1392510721, 1);
    INT_TYPE = new Type(5, null, 1224736769, 1);
    FLOAT_TYPE = new Type(6, null, 1174536705, 1);
    LONG_TYPE = new Type(7, null, 1241579778, 1);
  }
  
  private Type(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramArrayOfChar;
    c = paramInt2;
    d = paramInt3;
  }
  
  private static Type a(char[] paramArrayOfChar, int paramInt)
  {
    int i = 1;
    int j = 1;
    switch (paramArrayOfChar[paramInt])
    {
    default: 
      i = j;
    }
    while (paramArrayOfChar[(paramInt + i)] != ';')
    {
      i += 1;
      continue;
      return VOID_TYPE;
      return BOOLEAN_TYPE;
      return CHAR_TYPE;
      return BYTE_TYPE;
      return SHORT_TYPE;
      return INT_TYPE;
      return FLOAT_TYPE;
      return LONG_TYPE;
      return DOUBLE_TYPE;
      while (paramArrayOfChar[(paramInt + i)] == '[') {
        i += 1;
      }
      j = i;
      if (paramArrayOfChar[(paramInt + i)] == 'L')
      {
        i += 1;
        for (;;)
        {
          j = i;
          if (paramArrayOfChar[(paramInt + i)] == ';') {
            break;
          }
          i += 1;
        }
      }
      return new Type(9, paramArrayOfChar, paramInt, j + 1);
    }
    return new Type(10, paramArrayOfChar, paramInt + 1, i - 1);
  }
  
  private void a(StringBuffer paramStringBuffer)
  {
    if (b == null)
    {
      paramStringBuffer.append((char)((c & 0xFF000000) >>> 24));
      return;
    }
    if (a == 9)
    {
      paramStringBuffer.append(b, c, d);
      return;
    }
    paramStringBuffer.append('L');
    paramStringBuffer.append(b, c, d);
    paramStringBuffer.append(';');
  }
  
  private static void a(StringBuffer paramStringBuffer, Class paramClass)
  {
    char c1;
    for (;;)
    {
      if (paramClass.isPrimitive())
      {
        if (paramClass == Integer.TYPE) {
          c1 = 'I';
        }
        for (;;)
        {
          paramStringBuffer.append(c1);
          return;
          if (paramClass == Void.TYPE) {
            c1 = 'V';
          } else if (paramClass == Boolean.TYPE) {
            c1 = 'Z';
          } else if (paramClass == Byte.TYPE) {
            c1 = 'B';
          } else if (paramClass == Character.TYPE) {
            c1 = 'C';
          } else if (paramClass == Short.TYPE) {
            c1 = 'S';
          } else if (paramClass == Double.TYPE) {
            c1 = 'D';
          } else if (paramClass == Float.TYPE) {
            c1 = 'F';
          } else {
            c1 = 'J';
          }
        }
      }
      if (!paramClass.isArray()) {
        break;
      }
      paramStringBuffer.append('[');
      paramClass = paramClass.getComponentType();
    }
    paramStringBuffer.append('L');
    paramClass = paramClass.getName();
    int j = paramClass.length();
    int i = 0;
    while (i < j)
    {
      char c2 = paramClass.charAt(i);
      c1 = c2;
      if (c2 == '.') {
        c1 = '/';
      }
      paramStringBuffer.append(c1);
      i += 1;
    }
    paramStringBuffer.append(';');
  }
  
  public static Type[] getArgumentTypes(String paramString)
  {
    int m = 1;
    paramString = paramString.toCharArray();
    int j = 0;
    int i = 1;
    for (;;)
    {
      int k = i + 1;
      i = paramString[i];
      Type[] arrayOfType;
      if (i == 41)
      {
        arrayOfType = new Type[j];
        i = 0;
        j = m;
        label37:
        if (paramString[j] == ')') {
          break label145;
        }
        arrayOfType[i] = a(paramString, j);
        m = d;
        if (a != 10) {
          break label139;
        }
      }
      label139:
      for (k = 2;; k = 0)
      {
        j += k + m;
        i += 1;
        break label37;
        if (i == 76)
        {
          for (;;)
          {
            i = k + 1;
            if (paramString[k] == ';') {
              break;
            }
            k = i;
          }
          j += 1;
          break;
        }
        if (i == 91) {
          break label147;
        }
        j += 1;
        i = k;
        break;
      }
      label145:
      return arrayOfType;
      label147:
      i = k;
    }
  }
  
  public static Type[] getArgumentTypes(Method paramMethod)
  {
    paramMethod = paramMethod.getParameterTypes();
    Type[] arrayOfType = new Type[paramMethod.length];
    int i = paramMethod.length - 1;
    while (i >= 0)
    {
      arrayOfType[i] = getType(paramMethod[i]);
      i -= 1;
    }
    return arrayOfType;
  }
  
  public static int getArgumentsAndReturnSizes(String paramString)
  {
    int m = 1;
    int i = 1;
    int j = 1;
    for (;;)
    {
      int k = i + 1;
      i = paramString.charAt(i);
      if (i == 41)
      {
        k = paramString.charAt(k);
        if (k == 86) {
          i = 0;
        }
        for (;;)
        {
          return j << 2 | i;
          if (k != 68)
          {
            i = m;
            if (k != 74) {}
          }
          else
          {
            i = 2;
          }
        }
      }
      if (i == 76)
      {
        for (;;)
        {
          i = k + 1;
          if (paramString.charAt(k) == ';') {
            break;
          }
          k = i;
        }
        j += 1;
      }
      else
      {
        if (i == 91)
        {
          for (;;)
          {
            i = paramString.charAt(k);
            if (i != 91) {
              break;
            }
            k += 1;
          }
          if ((i == 68) || (i == 74))
          {
            j -= 1;
            i = k;
          }
        }
        else
        {
          if ((i == 68) || (i == 74))
          {
            j += 2;
            i = k;
            continue;
          }
          j += 1;
          i = k;
          continue;
        }
        i = k;
      }
    }
  }
  
  public static String getConstructorDescriptor(Constructor paramConstructor)
  {
    paramConstructor = paramConstructor.getParameterTypes();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('(');
    int i = 0;
    while (i < paramConstructor.length)
    {
      a(localStringBuffer, paramConstructor[i]);
      i += 1;
    }
    return ")V";
  }
  
  public static String getDescriptor(Class paramClass)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    a(localStringBuffer, paramClass);
    return localStringBuffer.toString();
  }
  
  public static String getInternalName(Class paramClass)
  {
    return paramClass.getName().replace('.', '/');
  }
  
  public static String getMethodDescriptor(Method paramMethod)
  {
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('(');
    int i = 0;
    while (i < arrayOfClass.length)
    {
      a(localStringBuffer, arrayOfClass[i]);
      i += 1;
    }
    localStringBuffer.append(')');
    a(localStringBuffer, paramMethod.getReturnType());
    return localStringBuffer.toString();
  }
  
  public static String getMethodDescriptor(Type paramType, Type[] paramArrayOfType)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('(');
    int i = 0;
    while (i < paramArrayOfType.length)
    {
      paramArrayOfType[i].a(localStringBuffer);
      i += 1;
    }
    localStringBuffer.append(')');
    paramType.a(localStringBuffer);
    return localStringBuffer.toString();
  }
  
  public static Type getObjectType(String paramString)
  {
    paramString = paramString.toCharArray();
    if (paramString[0] == '[') {}
    for (int i = 9;; i = 10) {
      return new Type(i, paramString, 0, paramString.length);
    }
  }
  
  public static Type getReturnType(String paramString)
  {
    return a(paramString.toCharArray(), paramString.indexOf(')') + 1);
  }
  
  public static Type getReturnType(Method paramMethod)
  {
    return getType(paramMethod.getReturnType());
  }
  
  public static Type getType(Class paramClass)
  {
    if (paramClass.isPrimitive())
    {
      if (paramClass == Integer.TYPE) {
        return INT_TYPE;
      }
      if (paramClass == Void.TYPE) {
        return VOID_TYPE;
      }
      if (paramClass == Boolean.TYPE) {
        return BOOLEAN_TYPE;
      }
      if (paramClass == Byte.TYPE) {
        return BYTE_TYPE;
      }
      if (paramClass == Character.TYPE) {
        return CHAR_TYPE;
      }
      if (paramClass == Short.TYPE) {
        return SHORT_TYPE;
      }
      if (paramClass == Double.TYPE) {
        return DOUBLE_TYPE;
      }
      if (paramClass == Float.TYPE) {
        return FLOAT_TYPE;
      }
      return LONG_TYPE;
    }
    return getType(getDescriptor(paramClass));
  }
  
  public static Type getType(String paramString)
  {
    return a(paramString.toCharArray(), 0);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof Type)) {
        return false;
      }
      paramObject = (Type)paramObject;
      if (a != a) {
        return false;
      }
      if ((a == 10) || (a == 9))
      {
        if (d != d) {
          return false;
        }
        int k = c;
        int j = c;
        int m = d;
        int i = k;
        while (i < m + k)
        {
          if (b[i] != b[j]) {
            return false;
          }
          i += 1;
          j += 1;
        }
      }
    }
  }
  
  public String getClassName()
  {
    switch (a)
    {
    default: 
      return new String(b, c, d).replace('/', '.');
    case 0: 
      return "void";
    case 1: 
      return "boolean";
    case 2: 
      return "char";
    case 3: 
      return "byte";
    case 4: 
      return "short";
    case 5: 
      return "int";
    case 6: 
      return "float";
    case 7: 
      return "long";
    case 8: 
      return "double";
    }
    StringBuffer localStringBuffer = new StringBuffer(getElementType().getClassName());
    int i = getDimensions();
    while (i > 0)
    {
      localStringBuffer.append("[]");
      i -= 1;
    }
    return localStringBuffer.toString();
  }
  
  public String getDescriptor()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    a(localStringBuffer);
    return localStringBuffer.toString();
  }
  
  public int getDimensions()
  {
    int i = 1;
    while (b[(c + i)] == '[') {
      i += 1;
    }
    return i;
  }
  
  public Type getElementType()
  {
    return a(b, c + getDimensions());
  }
  
  public String getInternalName()
  {
    return new String(b, c, d);
  }
  
  public int getOpcode(int paramInt)
  {
    int i = 4;
    if ((paramInt == 46) || (paramInt == 79))
    {
      if (b == null) {
        i = (c & 0xFF00) >> 8;
      }
      return i + paramInt;
    }
    if (b == null) {
      i = (c & 0xFF0000) >> 16;
    }
    return i + paramInt;
  }
  
  public int getSize()
  {
    if (b == null) {
      return c & 0xFF;
    }
    return 1;
  }
  
  public int getSort()
  {
    return a;
  }
  
  public int hashCode()
  {
    int i = a * 13;
    int j;
    if (a != 10)
    {
      j = i;
      if (a != 9) {}
    }
    else
    {
      int k = c;
      int n = d;
      j = k;
      for (;;)
      {
        int m = j;
        j = i;
        if (m >= k + n) {
          break;
        }
        int i1 = b[m];
        j = m + 1;
        i = (i + i1) * 17;
      }
    }
    return j;
  }
  
  public String toString()
  {
    return getDescriptor();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.Type
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */