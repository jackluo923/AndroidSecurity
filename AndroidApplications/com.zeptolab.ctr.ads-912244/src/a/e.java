package a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface e {

    public enum a {
        UNIQUE,
        SET,
        SET_VALUES;

        static {
            a = new a.e.a("UNIQUE", 0);
            b = new a.e.a("SET", 1);
            c = new a.e.a("SET_VALUES", 2);
            d = new a.e.a[]{a, b, c};
        }
    }

    a a() default a.UNIQUE;
}