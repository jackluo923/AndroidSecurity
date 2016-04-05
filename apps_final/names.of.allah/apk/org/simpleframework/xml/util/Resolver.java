package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Resolver<M extends Match>
  extends AbstractSet<M>
{
  protected final Resolver<M>.Cache cache = new Resolver.Cache(this);
  protected final Resolver<M>.Stack stack = new Resolver.Stack(this, null);
  
  private boolean match(char[] paramArrayOfChar1, int paramInt1, char[] paramArrayOfChar2, int paramInt2)
  {
    while ((paramInt2 < paramArrayOfChar2.length) && (paramInt1 < paramArrayOfChar1.length))
    {
      int j = paramInt1;
      i = paramInt2;
      if (paramArrayOfChar2[paramInt2] == '*')
      {
        j = paramInt2;
        while (paramArrayOfChar2[j] == '*')
        {
          paramInt2 = j + 1;
          j = paramInt2;
          if (paramInt2 >= paramArrayOfChar2.length) {
            return true;
          }
        }
        paramInt2 = paramInt1;
        i = j;
        if (paramArrayOfChar2[j] == '?')
        {
          j += 1;
          paramInt2 = paramInt1;
          i = j;
          if (j >= paramArrayOfChar2.length) {
            return true;
          }
        }
        do
        {
          do
          {
            paramInt2 += 1;
            if (paramInt2 >= paramArrayOfChar1.length) {
              break;
            }
          } while ((paramArrayOfChar1[paramInt2] != paramArrayOfChar2[i]) && (paramArrayOfChar2[i] != '?'));
          if (paramArrayOfChar2[(i - 1)] == '?') {
            break;
          }
        } while (!match(paramArrayOfChar1, paramInt2, paramArrayOfChar2, i));
        return true;
        j = paramInt2;
        if (paramArrayOfChar1.length == paramInt2) {
          return false;
        }
      }
      int k = j + 1;
      int m = paramArrayOfChar1[j];
      j = i + 1;
      paramInt1 = k;
      paramInt2 = j;
      if (m != paramArrayOfChar2[i])
      {
        paramInt1 = k;
        paramInt2 = j;
        if (paramArrayOfChar2[(j - 1)] != '?') {
          return false;
        }
      }
    }
    int i = paramInt2;
    if (paramArrayOfChar2.length == paramInt2) {
      return paramArrayOfChar1.length == paramInt1;
    }
    while (paramArrayOfChar2[i] == '*')
    {
      paramInt1 = i + 1;
      i = paramInt1;
      if (paramInt1 >= paramArrayOfChar2.length) {
        return true;
      }
    }
    return false;
  }
  
  private boolean match(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    return match(paramArrayOfChar1, 0, paramArrayOfChar2, 0);
  }
  
  private List<M> resolveAll(String paramString, char[] paramArrayOfChar)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = stack.iterator();
    while (localIterator.hasNext())
    {
      Match localMatch = (Match)localIterator.next();
      if (match(paramArrayOfChar, localMatch.getPattern().toCharArray()))
      {
        cache.put(paramString, localArrayList);
        localArrayList.add(localMatch);
      }
    }
    return localArrayList;
  }
  
  public boolean add(M paramM)
  {
    stack.push(paramM);
    return true;
  }
  
  public void clear()
  {
    cache.clear();
    stack.clear();
  }
  
  public Iterator<M> iterator()
  {
    return stack.sequence();
  }
  
  public boolean remove(M paramM)
  {
    cache.clear();
    return stack.remove(paramM);
  }
  
  public M resolve(String paramString)
  {
    List localList2 = (List)cache.get(paramString);
    List localList1 = localList2;
    if (localList2 == null) {
      localList1 = resolveAll(paramString);
    }
    if (localList1.isEmpty()) {
      return null;
    }
    return (Match)localList1.get(0);
  }
  
  public List<M> resolveAll(String paramString)
  {
    Object localObject = (List)cache.get(paramString);
    if (localObject != null) {
      return (List<M>)localObject;
    }
    localObject = paramString.toCharArray();
    if (localObject == null) {
      return null;
    }
    return resolveAll(paramString, (char[])localObject);
  }
  
  public int size()
  {
    return stack.size();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Resolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */