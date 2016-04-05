package com.a.a.b;

import android.widget.ImageView;
import com.a.a.b.a.f;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.ReentrantLock;

final class k
{
  final String a;
  final String b;
  final Reference<ImageView> c;
  final f d;
  final d e;
  final com.a.a.b.a.d f;
  final ReentrantLock g;
  
  public k(String paramString1, ImageView paramImageView, f paramf, String paramString2, d paramd, com.a.a.b.a.d paramd1, ReentrantLock paramReentrantLock)
  {
    a = paramString1;
    c = new WeakReference(paramImageView);
    d = paramf;
    e = paramd;
    f = paramd1;
    g = paramReentrantLock;
    b = paramString2;
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */