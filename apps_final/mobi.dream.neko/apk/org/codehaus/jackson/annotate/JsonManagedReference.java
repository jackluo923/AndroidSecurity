package org.codehaus.jackson.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD})
@JacksonAnnotation
public @interface JsonManagedReference
{
  String value() default "defaultReference";
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.annotate.JsonManagedReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */