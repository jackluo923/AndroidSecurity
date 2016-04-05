package com.google.kagegamesgson;

import java.lang.reflect.Field;

public abstract interface FieldNamingStrategy
{
  public abstract String translateName(Field paramField);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.FieldNamingStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */