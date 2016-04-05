import java.lang.reflect.Type;

final class bi
{
  final Type a;
  private Object b;
  private final boolean c;
  
  bi(Object paramObject, Type paramType, boolean paramBoolean)
  {
    b = paramObject;
    a = paramType;
    c = paramBoolean;
  }
  
  final <HANDLER> bj<HANDLER, bi> a(bk<HANDLER> parambk)
  {
    boolean bool = c;
    Object localObject1;
    Object localObject2;
    if (!bool)
    {
      localObject1 = b;
      if (localObject1 != null)
      {
        localObject1 = b();
        localObject2 = a;
        localObject2 = parambk.a((Type)localObject2);
        if (localObject2 != null)
        {
          bj localbj = new bj;
          localbj.<init>(localObject2, localObject1);
          localObject1 = localbj;
        }
      }
    }
    for (;;)
    {
      return (bj<HANDLER, bi>)localObject1;
      localObject1 = a;
      localObject1 = parambk.a((Type)localObject1);
      if (localObject1 == null)
      {
        localObject1 = null;
      }
      else
      {
        localObject2 = new bj;
        ((bj)localObject2).<init>(localObject1, this);
        localObject1 = localObject2;
      }
    }
  }
  
  final Object a()
  {
    Object localObject = b;
    return localObject;
  }
  
  final void a(Object paramObject)
  {
    b = paramObject;
  }
  
  final bi b()
  {
    boolean bool1 = c;
    if (!bool1)
    {
      localObject2 = b;
      if (localObject2 != null) {}
    }
    else
    {
      localObject2 = this;
      return (bi)localObject2;
    }
    Object localObject5 = a;
    Object localObject2 = b;
    Object localObject6 = localObject2.getClass();
    boolean bool2 = localObject5 instanceof Class;
    if (bool2)
    {
      Object localObject1 = localObject5;
      localObject1 = (Class)localObject1;
      Object localObject3 = localObject1;
      boolean bool3 = ((Class)localObject3).isAssignableFrom((Class)localObject6);
      if (bool3)
      {
        localObject4 = localObject6;
        label71:
        localObject5 = Object.class;
        if (localObject4 != localObject5) {}
      }
    }
    for (Object localObject4 = localObject6;; localObject4 = localObject5)
    {
      localObject5 = a;
      if (localObject4 == localObject5)
      {
        localObject4 = this;
        break;
      }
      localObject5 = new bi;
      localObject6 = b;
      boolean bool4 = c;
      ((bi)localObject5).<init>(localObject6, (Type)localObject4, bool4);
      localObject4 = localObject5;
      break;
      localObject4 = localObject5;
      break label71;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool5 = true;
    boolean bool4 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = bool5;
    }
    for (;;)
    {
      return bool1;
      if (paramObject == null)
      {
        bool1 = bool4;
      }
      else
      {
        Object localObject1 = getClass();
        Object localObject2 = paramObject.getClass();
        if (localObject1 != localObject2)
        {
          localObject1 = bool4;
        }
        else
        {
          paramObject = (bi)paramObject;
          localObject1 = b;
          if (localObject1 == null)
          {
            localObject1 = b;
            if (localObject1 != null) {
              localObject1 = bool4;
            }
          }
          else
          {
            localObject1 = b;
            localObject2 = b;
            if (localObject1 != localObject2)
            {
              localObject1 = bool4;
              continue;
            }
          }
          localObject1 = a;
          if (localObject1 == null)
          {
            localObject1 = a;
            if (localObject1 != null) {
              localObject1 = bool4;
            }
          }
          else
          {
            localObject1 = a;
            localObject2 = a;
            bool2 = localObject1.equals(localObject2);
            if (!bool2)
            {
              bool2 = bool4;
              continue;
            }
          }
          boolean bool2 = c;
          boolean bool3 = c;
          if (bool2 == bool3) {
            bool2 = bool5;
          } else {
            bool2 = bool4;
          }
        }
      }
    }
  }
  
  public final int hashCode()
  {
    Object localObject1 = b;
    if (localObject1 == null) {}
    Object localObject2;
    int j;
    for (int i = 31;; j = localObject2.hashCode())
    {
      return i;
      localObject2 = b;
    }
  }
}

/* Location:
 * Qualified Name:     bi
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */