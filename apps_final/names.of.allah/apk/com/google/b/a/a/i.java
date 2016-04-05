package com.google.b.a.a;

import java.lang.reflect.Array;
import java.lang.reflect.Field;

public final class i
{
  public static <T extends h> String a(T paramT)
  {
    if (paramT == null) {
      return "null";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      a(paramT.getClass().getSimpleName(), paramT.getClass(), paramT, new StringBuffer(), localStringBuffer);
      return localStringBuffer.toString();
    }
    catch (IllegalAccessException paramT) {}
    return "Error printing proto: " + paramT.getMessage();
  }
  
  private static String a(String paramString)
  {
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j);
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      if ((c >= ' ') && (c <= '~') && (c != '"') && (c != '\'')) {
        localStringBuilder.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append(String.format("\\u%04x", new Object[] { Integer.valueOf(c) }));
      }
    }
    return localStringBuilder.toString();
  }
  
  private static void a(String paramString, Class<?> paramClass, Object paramObject, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2)
  {
    if (h.class.isAssignableFrom(paramClass)) {
      if (paramObject != null) {}
    }
    while (paramObject == null)
    {
      return;
      paramStringBuffer2.append(paramStringBuffer1).append(paramString);
      paramStringBuffer1.append("  ");
      paramStringBuffer2.append(" <\n");
      paramString = paramClass.getFields();
      int m = paramString.length;
      i = 0;
      while (i < m)
      {
        Object localObject = paramString[i];
        int j = ((Field)localObject).getModifiers();
        paramClass = ((Field)localObject).getName();
        if (((j & 0x1) == 1) && ((j & 0x8) != 8) && (!paramClass.startsWith("_")) && (!paramClass.endsWith("_")))
        {
          Class localClass1 = ((Field)localObject).getType();
          localObject = ((Field)localObject).get(paramObject);
          if (localClass1.isArray())
          {
            Class localClass2 = localClass1.getComponentType();
            if (localClass2 != Byte.TYPE)
            {
              if (localObject == null) {}
              for (j = 0;; j = Array.getLength(localObject))
              {
                int k = 0;
                while (k < j)
                {
                  a(paramClass, localClass2, Array.get(localObject, k), paramStringBuffer1, paramStringBuffer2);
                  k += 1;
                }
              }
            }
          }
          a(paramClass, localClass1, localObject, paramStringBuffer1, paramStringBuffer2);
        }
        i += 1;
      }
      paramStringBuffer1.delete(paramStringBuffer1.length() - 2, paramStringBuffer1.length());
      paramStringBuffer2.append(paramStringBuffer1).append(">\n");
      return;
    }
    paramClass = new StringBuffer();
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      if (i == 0) {
        paramClass.append(Character.toLowerCase(c));
      }
      for (;;)
      {
        i += 1;
        break;
        if (Character.isUpperCase(c)) {
          paramClass.append('_').append(Character.toLowerCase(c));
        } else {
          paramClass.append(c);
        }
      }
    }
    paramString = paramClass.toString();
    paramStringBuffer2.append(paramStringBuffer1).append(paramString).append(": ");
    if ((paramObject instanceof String))
    {
      paramClass = (String)paramObject;
      paramString = paramClass;
      if (!paramClass.startsWith("http"))
      {
        paramString = paramClass;
        if (paramClass.length() > 200) {
          paramString = paramClass.substring(0, 200) + "[...]";
        }
      }
      paramString = a(paramString);
      paramStringBuffer2.append("\"").append(paramString).append("\"");
    }
    for (;;)
    {
      paramStringBuffer2.append("\n");
      return;
      paramStringBuffer2.append(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */