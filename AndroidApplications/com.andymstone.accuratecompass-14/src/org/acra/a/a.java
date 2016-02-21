package org.acra.a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.acra.ReportField;
import org.acra.ReportingInteractionMode;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface a {
    int A() default 0;

    int B() default 0;

    int C() default 0;

    int D() default 0;

    String E() default "";

    int F() default 5000;

    boolean G() default false;

    boolean H() default true;

    String[] I() default {};

    String[] J() default {};

    String K() default "";

    int L() default 100;

    String M() default "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq";

    boolean N() default false;

    Method O() default Method.POST;

    Type P() default Type.FORM;

    String[] b() default {};

    String[] c() default {};

    int d() default 3000;

    ReportField[] e() default {};

    boolean f() default true;

    boolean g() default true;

    int h() default 5;

    boolean i() default false;

    String j();

    String k() default "";

    String l() default "ACRA-NULL-STRING";

    String m() default "ACRA-NULL-STRING";

    boolean n() default false;

    String[] o() default {"-t", "100", "-v", "time"};

    String p() default "";

    int q() default 3;

    ReportingInteractionMode r() default ReportingInteractionMode.SILENT;

    int s() default 0;

    int t() default 0;

    int u() default 17301543;

    int v() default 0;

    int w() default 0;

    int x() default 0;

    int y() default 17301624;

    int z() default 0;
}