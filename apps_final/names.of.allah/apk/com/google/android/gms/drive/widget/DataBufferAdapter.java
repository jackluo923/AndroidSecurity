package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class DataBufferAdapter<T>
  extends BaseAdapter
{
  private final int LO;
  private int LP;
  private final int LQ;
  private final List<DataBuffer<T>> LR;
  private final LayoutInflater LS;
  private boolean LT = true;
  private final Context mContext;
  
  public DataBufferAdapter(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, 0, new ArrayList());
  }
  
  public DataBufferAdapter(Context paramContext, int paramInt1, int paramInt2)
  {
    this(paramContext, paramInt1, paramInt2, new ArrayList());
  }
  
  public DataBufferAdapter(Context paramContext, int paramInt1, int paramInt2, List<DataBuffer<T>> paramList)
  {
    mContext = paramContext;
    LP = paramInt1;
    LO = paramInt1;
    LQ = paramInt2;
    LR = paramList;
    LS = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public DataBufferAdapter(Context paramContext, int paramInt1, int paramInt2, DataBuffer<T>... paramVarArgs)
  {
    this(paramContext, paramInt1, paramInt2, Arrays.asList(paramVarArgs));
  }
  
  public DataBufferAdapter(Context paramContext, int paramInt, List<DataBuffer<T>> paramList)
  {
    this(paramContext, paramInt, 0, paramList);
  }
  
  public DataBufferAdapter(Context paramContext, int paramInt, DataBuffer<T>... paramVarArgs)
  {
    this(paramContext, paramInt, 0, Arrays.asList(paramVarArgs));
  }
  
  private View a(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2)
  {
    if (paramView == null) {
      paramView = LS.inflate(paramInt2, paramViewGroup, false);
    }
    for (;;)
    {
      try
      {
        Object localObject;
        if (LQ == 0)
        {
          paramViewGroup = (TextView)paramView;
          localObject = getItem(paramInt1);
          if ((localObject instanceof CharSequence))
          {
            paramViewGroup.setText((CharSequence)localObject);
            return paramView;
          }
        }
        else
        {
          paramViewGroup = (TextView)paramView.findViewById(LQ);
          continue;
        }
        paramViewGroup.setText(localObject.toString());
      }
      catch (ClassCastException paramView)
      {
        Log.e("DataBufferAdapter", "You must supply a resource ID for a TextView");
        throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", paramView);
      }
      return paramView;
    }
  }
  
  public void append(DataBuffer<T> paramDataBuffer)
  {
    LR.add(paramDataBuffer);
    if (LT) {
      notifyDataSetChanged();
    }
  }
  
  public void clear()
  {
    Iterator localIterator = LR.iterator();
    while (localIterator.hasNext()) {
      ((DataBuffer)localIterator.next()).close();
    }
    LR.clear();
    if (LT) {
      notifyDataSetChanged();
    }
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public int getCount()
  {
    Iterator localIterator = LR.iterator();
    for (int i = 0; localIterator.hasNext(); i = ((DataBuffer)localIterator.next()).getCount() + i) {}
    return i;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, LP);
  }
  
  public T getItem(int paramInt)
  {
    Object localObject = LR.iterator();
    int i = paramInt;
    while (((Iterator)localObject).hasNext())
    {
      DataBuffer localDataBuffer = (DataBuffer)((Iterator)localObject).next();
      int j = localDataBuffer.getCount();
      if (j <= i) {
        i -= j;
      } else {
        try
        {
          localObject = localDataBuffer.get(i);
          return (T)localObject;
        }
        catch (CursorIndexOutOfBoundsException localCursorIndexOutOfBoundsException)
        {
          throw new CursorIndexOutOfBoundsException(paramInt, getCount());
        }
      }
    }
    throw new CursorIndexOutOfBoundsException(paramInt, getCount());
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, LO);
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    LT = true;
  }
  
  public void setDropDownViewResource(int paramInt)
  {
    LP = paramInt;
  }
  
  public void setNotifyOnChange(boolean paramBoolean)
  {
    LT = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.widget.DataBufferAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */