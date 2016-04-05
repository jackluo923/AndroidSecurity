package android.support.v4.view.a;

import android.view.accessibility.AccessibilityRecord;

class v
  extends z
{
  public final Object a()
  {
    return AccessibilityRecord.obtain();
  }
  
  public final void a(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setFromIndex(paramInt);
  }
  
  public final void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityRecord)paramObject).setScrollable(paramBoolean);
  }
  
  public final void b(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setItemCount(paramInt);
  }
  
  public final void c(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setToIndex(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */