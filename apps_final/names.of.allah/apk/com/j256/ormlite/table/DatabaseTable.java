package com.j256.ormlite.table;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface DatabaseTable
{
  Class<?> daoClass() default Void.class;
  
  String tableName() default "";
}

/* Location:
 * Qualified Name:     com.j256.ormlite.table.DatabaseTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */