package com.google.a.b;

import com.google.a.a.d;
import com.google.a.ak;
import com.google.a.al;
import com.google.a.b;
import com.google.a.k;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class s
  implements al, Cloneable
{
  public static final s a = new s();
  private double b = -1.0D;
  private int c = 136;
  private boolean d = true;
  private boolean e;
  private List<b> f = Collections.emptyList();
  private List<b> g = Collections.emptyList();
  
  private s a()
  {
    try
    {
      s locals = (s)super.clone();
      return locals;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  private boolean a(com.google.a.a.c paramc, d paramd)
  {
    if ((paramc != null) && (paramc.a() > b))
    {
      i = 0;
      if (i == 0) {
        break label60;
      }
      if ((paramd == null) || (paramd.a() > b)) {
        break label55;
      }
    }
    label55:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label60;
      }
      return true;
      i = 1;
      break;
    }
    label60:
    return false;
  }
  
  private static boolean a(Class<?> paramClass)
  {
    return (!Enum.class.isAssignableFrom(paramClass)) && ((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()));
  }
  
  private static boolean b(Class<?> paramClass)
  {
    if (paramClass.isMemberClass())
    {
      if ((paramClass.getModifiers() & 0x8) != 0) {}
      for (int i = 1; i == 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final <T> ak<T> a(k paramk, com.google.a.c.a<T> parama)
  {
    Class localClass = a;
    boolean bool1 = a(localClass, true);
    boolean bool2 = a(localClass, false);
    if ((!bool1) && (!bool2)) {
      return null;
    }
    return new t(this, bool2, bool1, paramk, parama);
  }
  
  public final boolean a(Class<?> paramClass, boolean paramBoolean)
  {
    if ((b != -1.0D) && (!a((com.google.a.a.c)paramClass.getAnnotation(com.google.a.a.c.class), (d)paramClass.getAnnotation(d.class)))) {
      return true;
    }
    if ((!d) && (b(paramClass))) {
      return true;
    }
    if (a(paramClass)) {
      return true;
    }
    if (paramBoolean) {}
    for (paramClass = f;; paramClass = g)
    {
      paramClass = paramClass.iterator();
      do
      {
        if (!paramClass.hasNext()) {
          break;
        }
      } while (!((b)paramClass.next()).b());
      return true;
    }
    return false;
  }
  
  public final boolean a(Field paramField, boolean paramBoolean)
  {
    if ((c & paramField.getModifiers()) != 0) {
      return true;
    }
    if ((b != -1.0D) && (!a((com.google.a.a.c)paramField.getAnnotation(com.google.a.a.c.class), (d)paramField.getAnnotation(d.class)))) {
      return true;
    }
    if (paramField.isSynthetic()) {
      return true;
    }
    if (e)
    {
      localObject = (com.google.a.a.a)paramField.getAnnotation(com.google.a.a.a.class);
      if (localObject != null)
      {
        if (!paramBoolean) {
          break label97;
        }
        if (((com.google.a.a.a)localObject).a()) {
          break label106;
        }
      }
      label97:
      while (!((com.google.a.a.a)localObject).b()) {
        return true;
      }
    }
    label106:
    if ((!d) && (b(paramField.getType()))) {
      return true;
    }
    if (a(paramField.getType())) {
      return true;
    }
    if (paramBoolean) {}
    for (Object localObject = f; !((List)localObject).isEmpty(); localObject = g)
    {
      new com.google.a.c(paramField);
      paramField = ((List)localObject).iterator();
      do
      {
        if (!paramField.hasNext()) {
          break;
        }
      } while (!((b)paramField.next()).a());
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */