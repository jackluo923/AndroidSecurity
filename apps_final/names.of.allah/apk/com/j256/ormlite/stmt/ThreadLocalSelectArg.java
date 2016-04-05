package com.j256.ormlite.stmt;

import com.j256.ormlite.field.SqlType;

public class ThreadLocalSelectArg
  extends BaseArgumentHolder
  implements ArgumentHolder
{
  private ThreadLocal<ThreadLocalSelectArg.ValueWrapper> threadValue = new ThreadLocal();
  
  public ThreadLocalSelectArg() {}
  
  public ThreadLocalSelectArg(SqlType paramSqlType, Object paramObject)
  {
    super(paramSqlType);
    setValue(paramObject);
  }
  
  public ThreadLocalSelectArg(Object paramObject)
  {
    setValue(paramObject);
  }
  
  public ThreadLocalSelectArg(String paramString, Object paramObject)
  {
    super(paramString);
    setValue(paramObject);
  }
  
  protected Object getValue()
  {
    ThreadLocalSelectArg.ValueWrapper localValueWrapper = (ThreadLocalSelectArg.ValueWrapper)threadValue.get();
    if (localValueWrapper == null) {
      return null;
    }
    return value;
  }
  
  protected boolean isValueSet()
  {
    return threadValue.get() != null;
  }
  
  public void setValue(Object paramObject)
  {
    threadValue.set(new ThreadLocalSelectArg.ValueWrapper(paramObject));
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.ThreadLocalSelectArg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */