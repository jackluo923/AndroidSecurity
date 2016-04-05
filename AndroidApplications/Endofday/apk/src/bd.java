import java.util.Iterator;
import java.util.Stack;

final class bd
{
  private final Stack a;
  
  bd()
  {
    Stack localStack = new java/util/Stack;
    localStack.<init>();
    a = localStack;
  }
  
  public final bi a()
  {
    Stack localStack = a;
    this = localStack.pop();
    this = (bi)this;
    return this;
  }
  
  public final bi a(bi parambi)
  {
    bm.a(parambi);
    Stack localStack = a;
    this = localStack.push(parambi);
    this = (bi)this;
    return this;
  }
  
  public final boolean b(bi parambi)
  {
    boolean bool4 = false;
    boolean bool1;
    if (parambi == null) {
      bool1 = bool4;
    }
    for (;;)
    {
      return bool1;
      Object localObject1 = a;
      localObject1 = ((Stack)localObject1).iterator();
      boolean bool3;
      do
      {
        do
        {
          boolean bool2 = ((Iterator)localObject1).hasNext();
          if (!bool2) {
            break;
          }
          this = ((Iterator)localObject1).next();
          this = (bi)this;
          localObject2 = a();
          localObject3 = parambi.a();
        } while (localObject2 != localObject3);
        Object localObject2 = a;
        Object localObject3 = a;
        bool3 = localObject2.equals(localObject3);
      } while (!bool3);
      int i = 1;
      continue;
      i = bool4;
    }
  }
}

/* Location:
 * Qualified Name:     bd
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */