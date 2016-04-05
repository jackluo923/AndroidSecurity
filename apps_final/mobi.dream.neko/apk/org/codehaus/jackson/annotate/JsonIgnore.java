package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.FIELD})
@JacksonAnnotation
public @interface JsonIgnore
{
  boolean value() default true;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.annotate.JsonIgnore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */