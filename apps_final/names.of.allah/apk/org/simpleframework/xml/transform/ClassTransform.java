package org.simpleframework.xml.transform;

class ClassTransform
  implements Transform<Class>
{
  private static final String BOOLEAN = "boolean";
  private static final String BYTE = "byte";
  private static final String CHARACTER = "char";
  private static final String DOUBLE = "double";
  private static final String FLOAT = "float";
  private static final String INTEGER = "int";
  private static final String LONG = "long";
  private static final String SHORT = "short";
  private static final String VOID = "void";
  
  private ClassLoader getCallerClassLoader()
  {
    return getClass().getClassLoader();
  }
  
  private static ClassLoader getClassLoader()
  {
    return Thread.currentThread().getContextClassLoader();
  }
  
  private Class readPrimitive(String paramString)
  {
    if (paramString.equals("byte")) {
      return Byte.TYPE;
    }
    if (paramString.equals("short")) {
      return Short.TYPE;
    }
    if (paramString.equals("int")) {
      return Integer.TYPE;
    }
    if (paramString.equals("long")) {
      return Long.TYPE;
    }
    if (paramString.equals("char")) {
      return Character.TYPE;
    }
    if (paramString.equals("float")) {
      return Float.TYPE;
    }
    if (paramString.equals("double")) {
      return Double.TYPE;
    }
    if (paramString.equals("boolean")) {
      return Boolean.TYPE;
    }
    if (paramString.equals("void")) {
      return Void.TYPE;
    }
    return null;
  }
  
  public Class read(String paramString)
  {
    Object localObject2 = readPrimitive(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = getClassLoader();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = getCallerClassLoader();
      }
      localObject1 = ((ClassLoader)localObject1).loadClass(paramString);
    }
    return (Class)localObject1;
  }
  
  public String write(Class paramClass)
  {
    return paramClass.getName();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.ClassTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */