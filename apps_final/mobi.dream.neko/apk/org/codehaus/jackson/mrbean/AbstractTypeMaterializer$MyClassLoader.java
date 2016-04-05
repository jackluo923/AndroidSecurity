package org.codehaus.jackson.mrbean;

class AbstractTypeMaterializer$MyClassLoader
  extends ClassLoader
{
  public AbstractTypeMaterializer$MyClassLoader(ClassLoader paramClassLoader)
  {
    super(paramClassLoader);
  }
  
  public Class<?> loadAndResolve(String paramString, byte[] paramArrayOfByte, Class<?> paramClass)
    throws IllegalArgumentException
  {
    Class localClass = findLoadedClass(paramString);
    if ((localClass != null) && (paramClass.isAssignableFrom(localClass))) {
      return localClass;
    }
    try
    {
      paramArrayOfByte = defineClass(paramString, paramArrayOfByte, 0, paramArrayOfByte.length);
      resolveClass(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (LinkageError paramArrayOfByte)
    {
      throw new IllegalArgumentException("Failed to load class '" + paramString + "': " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.AbstractTypeMaterializer.MyClassLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */