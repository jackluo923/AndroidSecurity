package org.java_websocket.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

final class Base64$1
  extends ObjectInputStream
{
  Base64$1(InputStream paramInputStream, ClassLoader paramClassLoader)
  {
    super(paramInputStream);
  }
  
  public Class<?> resolveClass(ObjectStreamClass paramObjectStreamClass)
    throws IOException, ClassNotFoundException
  {
    Class localClass2 = Class.forName(paramObjectStreamClass.getName(), false, val$loader);
    Class localClass1 = localClass2;
    if (localClass2 == null) {
      localClass1 = super.resolveClass(paramObjectStreamClass);
    }
    return localClass1;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.util.Base64.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */