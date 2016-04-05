package com.mobeta.android.dslv;

final class r
  extends u
{
  private float e;
  private float f;
  
  public final void a()
  {
    e = DragSortListView.c(a);
    f = DragSortListView.d(a);
  }
  
  public final void a(float paramFloat)
  {
    if (DragSortListView.b(a) != 4)
    {
      c = true;
      return;
    }
    DragSortListView.a(a, (int)(f * paramFloat + (1.0F - paramFloat) * e));
    ea).y = (DragSortListView.f(a) - DragSortListView.c(a));
    DragSortListView.g(a);
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */