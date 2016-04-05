package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

final class d
  extends Filter
{
  e a;
  
  d(e parame)
  {
    a = parame;
  }
  
  public final CharSequence convertResultToString(Object paramObject)
  {
    return a.convertToString((Cursor)paramObject);
  }
  
  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    paramCharSequence = a.runQueryOnBackgroundThread(paramCharSequence);
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (paramCharSequence != null)
    {
      count = paramCharSequence.getCount();
      values = paramCharSequence;
      return localFilterResults;
    }
    count = 0;
    values = null;
    return localFilterResults;
  }
  
  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = a.getCursor();
    if ((values != null) && (values != paramCharSequence)) {
      a.changeCursor((Cursor)values);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */