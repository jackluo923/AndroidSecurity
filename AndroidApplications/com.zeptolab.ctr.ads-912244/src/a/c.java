package a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface c {
    Class[] a() default {};

    Class[] b() default {};

    boolean c_();

    Class[] d() default {};

    Class e() default Void.class;

    boolean f() default true;

    boolean g() default false;
}