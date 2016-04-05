package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

final class b
  extends ContentObserver
{
  public b(a parama)
  {
    super(new Handler());
  }
  
  public final boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public final void onChange(boolean paramBoolean)
  {
    a.onContentChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */