package com.j256.ormlite.dao;

import java.util.ArrayList;
import java.util.List;

final class BaseDaoImpl$1
  extends ThreadLocal<List<BaseDaoImpl<?, ?>>>
{
  protected final List<BaseDaoImpl<?, ?>> initialValue()
  {
    return new ArrayList(10);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */