package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;

public @interface JsonSubTypes$Type
{
  String name() default "";
  
  Class<?> value();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.annotate.JsonSubTypes.Type
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */