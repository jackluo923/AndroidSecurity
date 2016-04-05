package com.j256.ormlite.field;

import java.lang.reflect.Field;

public abstract interface DataPersister
  extends FieldConverter
{
  public abstract Object convertIdNumber(Number paramNumber);
  
  public abstract boolean dataIsEqual(Object paramObject1, Object paramObject2);
  
  public abstract Object generateId();
  
  public abstract String[] getAssociatedClassNames();
  
  public abstract Class<?>[] getAssociatedClasses();
  
  public abstract int getDefaultWidth();
  
  public abstract Class<?> getPrimaryClass();
  
  public abstract boolean isAppropriateId();
  
  public abstract boolean isArgumentHolderRequired();
  
  public abstract boolean isComparable();
  
  public abstract boolean isEscapedDefaultValue();
  
  public abstract boolean isEscapedValue();
  
  public abstract boolean isPrimitive();
  
  public abstract boolean isSelfGeneratedId();
  
  public abstract boolean isValidForField(Field paramField);
  
  public abstract boolean isValidForVersion();
  
  public abstract boolean isValidGeneratedType();
  
  public abstract Object makeConfigObject(FieldType paramFieldType);
  
  public abstract Object moveToNextValue(Object paramObject);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.DataPersister
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */