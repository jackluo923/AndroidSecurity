package com.a.a.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.a.a.b.a.k;
import com.a.a.b.d.e;
import com.a.a.b.e.a;
import java.io.File;
import java.util.concurrent.Executor;

public final class g
{
  final Context a;
  final int b;
  final int c;
  final int d;
  final int e;
  final Bitmap.CompressFormat f;
  final int g;
  final a h;
  final Executor i;
  final Executor j;
  final boolean k;
  final boolean l;
  final int m;
  final int n;
  final k o;
  final com.a.a.a.b.c<String, Bitmap> p;
  final com.a.a.a.a.b q;
  final com.a.a.b.d.c r;
  final com.a.a.b.b.d s;
  final d t;
  final boolean u;
  final com.a.a.a.a.b v;
  final com.a.a.b.d.c w;
  final com.a.a.b.d.c x;
  
  private g(h paramh)
  {
    a = h.a(paramh);
    b = h.b(paramh);
    c = h.c(paramh);
    d = h.d(paramh);
    e = h.e(paramh);
    f = h.f(paramh);
    g = h.g(paramh);
    h = h.h(paramh);
    i = h.i(paramh);
    j = h.j(paramh);
    m = h.k(paramh);
    n = h.l(paramh);
    o = h.m(paramh);
    q = h.n(paramh);
    p = h.o(paramh);
    t = h.p(paramh);
    u = h.q(paramh);
    r = h.r(paramh);
    s = h.s(paramh);
    k = h.t(paramh);
    l = h.u(paramh);
    w = new e(r);
    x = new com.a.a.b.d.g(r);
    paramh = a.getCacheDir();
    File localFile = new File(paramh, "uil-images");
    if ((localFile.exists()) || (localFile.mkdir())) {
      paramh = localFile;
    }
    v = new com.a.a.a.a.a.b(paramh);
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */