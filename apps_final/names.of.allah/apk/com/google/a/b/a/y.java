package com.google.a.b.a;

import com.google.a.w;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.UUID;

public final class y
{
  public static final com.google.a.ak<StringBuffer> A = new ah();
  public static final com.google.a.al B = a(StringBuffer.class, A);
  public static final com.google.a.ak<URL> C = new ai();
  public static final com.google.a.al D = a(URL.class, C);
  public static final com.google.a.ak<URI> E = new aj();
  public static final com.google.a.al F = a(URI.class, E);
  public static final com.google.a.ak<InetAddress> G = new al();
  public static final com.google.a.al H = b(InetAddress.class, G);
  public static final com.google.a.ak<UUID> I = new am();
  public static final com.google.a.al J = a(UUID.class, I);
  public static final com.google.a.al K = new an();
  public static final com.google.a.ak<Calendar> L = new ap();
  public static final com.google.a.al M = new aw(Calendar.class, GregorianCalendar.class, L);
  public static final com.google.a.ak<Locale> N = new aq();
  public static final com.google.a.al O = a(Locale.class, N);
  public static final com.google.a.ak<w> P = new ar();
  public static final com.google.a.al Q = b(w.class, P);
  public static final com.google.a.al R = new as();
  public static final com.google.a.ak<Class> a = new z();
  public static final com.google.a.al b = a(Class.class, a);
  public static final com.google.a.ak<BitSet> c = new ak();
  public static final com.google.a.al d = a(BitSet.class, c);
  public static final com.google.a.ak<Boolean> e = new av();
  public static final com.google.a.ak<Boolean> f = new az();
  public static final com.google.a.al g = a(Boolean.TYPE, Boolean.class, e);
  public static final com.google.a.ak<Number> h = new ba();
  public static final com.google.a.al i = a(Byte.TYPE, Byte.class, h);
  public static final com.google.a.ak<Number> j = new bb();
  public static final com.google.a.al k = a(Short.TYPE, Short.class, j);
  public static final com.google.a.ak<Number> l = new bc();
  public static final com.google.a.al m = a(Integer.TYPE, Integer.class, l);
  public static final com.google.a.ak<Number> n = new bd();
  public static final com.google.a.ak<Number> o = new be();
  public static final com.google.a.ak<Number> p = new aa();
  public static final com.google.a.ak<Number> q = new ab();
  public static final com.google.a.al r = a(Number.class, q);
  public static final com.google.a.ak<Character> s = new ac();
  public static final com.google.a.al t = a(Character.TYPE, Character.class, s);
  public static final com.google.a.ak<String> u = new ad();
  public static final com.google.a.ak<BigDecimal> v = new ae();
  public static final com.google.a.ak<BigInteger> w = new af();
  public static final com.google.a.al x = a(String.class, u);
  public static final com.google.a.ak<StringBuilder> y = new ag();
  public static final com.google.a.al z = a(StringBuilder.class, y);
  
  public static <TT> com.google.a.al a(Class<TT> paramClass, com.google.a.ak<TT> paramak)
  {
    return new at(paramClass, paramak);
  }
  
  public static <TT> com.google.a.al a(Class<TT> paramClass1, Class<TT> paramClass2, com.google.a.ak<? super TT> paramak)
  {
    return new au(paramClass1, paramClass2, paramak);
  }
  
  private static <TT> com.google.a.al b(Class<TT> paramClass, com.google.a.ak<TT> paramak)
  {
    return new ax(paramClass, paramak);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */