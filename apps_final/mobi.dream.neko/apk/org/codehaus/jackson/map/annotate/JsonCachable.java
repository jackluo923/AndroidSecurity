package org.codehaus.jackson.map.annotate;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.codehaus.jackson.annotate.JacksonAnnotation;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@JacksonAnnotation
public @interface JsonCachable
{
  boolean value() default true;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.annotate.JsonCachable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */