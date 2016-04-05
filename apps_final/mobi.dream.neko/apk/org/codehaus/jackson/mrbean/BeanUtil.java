package org.codehaus.jackson.mrbean;

import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class BeanUtil
{
  private static void _addSuperTypes(Class<?> paramClass1, Class<?> paramClass2, Collection<Class<?>> paramCollection, boolean paramBoolean)
  {
    if ((paramClass1 == paramClass2) || (paramClass1 == null) || (paramClass1 == Object.class)) {}
    do
    {
      return;
      if (!paramBoolean) {
        break;
      }
    } while (paramCollection.contains(paramClass1));
    paramCollection.add(paramClass1);
    Class[] arrayOfClass = paramClass1.getInterfaces();
    int j = arrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      _addSuperTypes(arrayOfClass[i], paramClass2, paramCollection, true);
      i += 1;
    }
    _addSuperTypes(paramClass1.getSuperclass(), paramClass2, paramCollection, true);
  }
  
  public static List<Class<?>> findSuperTypes(Class<?> paramClass1, Class<?> paramClass2)
  {
    return findSuperTypes(paramClass1, paramClass2, new ArrayList());
  }
  
  public static List<Class<?>> findSuperTypes(Class<?> paramClass1, Class<?> paramClass2, List<Class<?>> paramList)
  {
    _addSuperTypes(paramClass1, paramClass2, paramList, false);
    return paramList;
  }
  
  protected static boolean isConcrete(Member paramMember)
  {
    return (paramMember.getModifiers() & 0x600) == 0;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.BeanUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */