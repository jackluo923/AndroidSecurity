package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@JacksonAnnotation
public @interface JsonPropertyOrder
{
  boolean alphabetic() default false;
  
  String[] value() default {};
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.annotate.JsonPropertyOrder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */