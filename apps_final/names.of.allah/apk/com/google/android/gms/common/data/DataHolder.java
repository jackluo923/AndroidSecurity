package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class DataHolder
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private static final DataHolder.a EL = new DataHolder.1(new String[0], null);
  private final int CQ;
  private final String[] ED;
  Bundle EE;
  private final CursorWindow[] EF;
  private final Bundle EG;
  int[] EH;
  int EI;
  private Object EJ;
  private boolean EK = true;
  boolean mClosed = false;
  private final int xJ;
  
  DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle)
  {
    xJ = paramInt1;
    ED = paramArrayOfString;
    EF = paramArrayOfCursorWindow;
    CQ = paramInt2;
    EG = paramBundle;
  }
  
  private DataHolder(DataHolder.a parama, int paramInt, Bundle paramBundle)
  {
    this(DataHolder.a.a(parama), a(parama, -1), paramInt, paramBundle);
  }
  
  public DataHolder(String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt, Bundle paramBundle)
  {
    xJ = 1;
    ED = ((String[])hn.f(paramArrayOfString));
    EF = ((CursorWindow[])hn.f(paramArrayOfCursorWindow));
    CQ = paramInt;
    EG = paramBundle;
    eR();
  }
  
  public static DataHolder a(int paramInt, Bundle paramBundle)
  {
    return new DataHolder(EL, paramInt, paramBundle);
  }
  
  private static CursorWindow[] a(DataHolder.a parama, int paramInt)
  {
    int k = 0;
    if (DataHolder.a.a(parama).length == 0) {
      return new CursorWindow[0];
    }
    Object localObject1;
    CursorWindow localCursorWindow;
    ArrayList localArrayList;
    int i;
    if ((paramInt < 0) || (paramInt >= DataHolder.a.b(parama).size()))
    {
      localObject1 = DataHolder.a.b(parama);
      int m = ((List)localObject1).size();
      localCursorWindow = new CursorWindow(false);
      localArrayList = new ArrayList();
      localArrayList.add(localCursorWindow);
      localCursorWindow.setNumColumns(DataHolder.a.a(parama).length);
      paramInt = 0;
      i = 0;
      label84:
      if (paramInt >= m) {
        break label665;
      }
    }
    for (;;)
    {
      int j;
      try
      {
        if (localCursorWindow.allocRow()) {
          break label682;
        }
        Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + paramInt + ")");
        localCursorWindow = new CursorWindow(false);
        localCursorWindow.setStartPosition(paramInt);
        localCursorWindow.setNumColumns(DataHolder.a.a(parama).length);
        localArrayList.add(localCursorWindow);
        if (!localCursorWindow.allocRow())
        {
          Log.e("DataHolder", "Unable to allocate row to hold data.");
          localArrayList.remove(localCursorWindow);
          parama = (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
          return parama;
          localObject1 = DataHolder.a.b(parama).subList(0, paramInt);
          break;
        }
        i = 0;
        Map localMap = (Map)((List)localObject1).get(paramInt);
        bool = true;
        j = 0;
        if ((j < DataHolder.a.a(parama).length) && (bool))
        {
          String str = DataHolder.a.a(parama)[j];
          Object localObject2 = localMap.get(str);
          if (localObject2 == null)
          {
            bool = localCursorWindow.putNull(i, j);
            break label685;
          }
          if ((localObject2 instanceof String))
          {
            bool = localCursorWindow.putString((String)localObject2, i, j);
            break label685;
          }
          if ((localObject2 instanceof Long))
          {
            bool = localCursorWindow.putLong(((Long)localObject2).longValue(), i, j);
            break label685;
          }
          if ((localObject2 instanceof Integer))
          {
            bool = localCursorWindow.putLong(((Integer)localObject2).intValue(), i, j);
            break label685;
          }
          if ((localObject2 instanceof Boolean))
          {
            if (!((Boolean)localObject2).booleanValue()) {
              break label694;
            }
            l = 1L;
            bool = localCursorWindow.putLong(l, i, j);
            break label685;
          }
          if ((localObject2 instanceof byte[]))
          {
            bool = localCursorWindow.putBlob((byte[])localObject2, i, j);
            break label685;
          }
          if ((localObject2 instanceof Double))
          {
            bool = localCursorWindow.putDouble(((Double)localObject2).doubleValue(), i, j);
            break label685;
          }
          if ((localObject2 instanceof Float))
          {
            bool = localCursorWindow.putDouble(((Float)localObject2).floatValue(), i, j);
            break label685;
          }
          throw new IllegalArgumentException("Unsupported object for column " + str + ": " + localObject2);
        }
      }
      catch (RuntimeException parama)
      {
        boolean bool;
        i = localArrayList.size();
        paramInt = k;
        if (paramInt < i)
        {
          ((CursorWindow)localArrayList.get(paramInt)).close();
          paramInt += 1;
          continue;
          if (!bool)
          {
            Log.d("DataHolder", "Couldn't populate window data for row " + paramInt + " - allocating new window.");
            localCursorWindow.freeLastRow();
            localCursorWindow = new CursorWindow(false);
            localCursorWindow.setNumColumns(DataHolder.a.a(parama).length);
            localArrayList.add(localCursorWindow);
            i = paramInt - 1;
            paramInt = 0;
            j = i + 1;
            i = paramInt;
            paramInt = j;
            break label84;
          }
          j = i + 1;
          i = paramInt;
          paramInt = j;
          continue;
        }
        throw parama;
      }
      label665:
      return (CursorWindow[])localArrayList.toArray(new CursorWindow[localArrayList.size()]);
      label682:
      continue;
      label685:
      j += 1;
      continue;
      label694:
      long l = 0L;
    }
  }
  
  public static DataHolder af(int paramInt)
  {
    return a(paramInt, null);
  }
  
  private void e(String paramString, int paramInt)
  {
    if ((EE == null) || (!EE.containsKey(paramString))) {
      throw new IllegalArgumentException("No such column: " + paramString);
    }
    if (isClosed()) {
      throw new IllegalArgumentException("Buffer is closed.");
    }
    if ((paramInt < 0) || (paramInt >= EI)) {
      throw new CursorIndexOutOfBoundsException(paramInt, EI);
    }
  }
  
  public final long a(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].getLong(paramInt1, EE.getInt(paramString));
  }
  
  public final void a(String paramString, int paramInt1, int paramInt2, CharArrayBuffer paramCharArrayBuffer)
  {
    e(paramString, paramInt1);
    EF[paramInt2].copyStringToBuffer(paramInt1, EE.getInt(paramString), paramCharArrayBuffer);
  }
  
  public final int ae(int paramInt)
  {
    int j = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < EI))
    {
      bool = true;
      hn.A(bool);
    }
    for (;;)
    {
      int i = j;
      if (j < EH.length)
      {
        if (paramInt < EH[j]) {
          i = j - 1;
        }
      }
      else
      {
        paramInt = i;
        if (i == EH.length) {
          paramInt = i - 1;
        }
        return paramInt;
        bool = false;
        break;
      }
      j += 1;
    }
  }
  
  public final boolean av(String paramString)
  {
    return EE.containsKey(paramString);
  }
  
  public final int b(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].getInt(paramInt1, EE.getInt(paramString));
  }
  
  public final void b(Object paramObject)
  {
    EJ = paramObject;
  }
  
  public final String c(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].getString(paramInt1, EE.getInt(paramString));
  }
  
  public final void close()
  {
    try
    {
      if (!mClosed)
      {
        mClosed = true;
        int i = 0;
        while (i < EF.length)
        {
          EF[i].close();
          i += 1;
        }
      }
      return;
    }
    finally {}
  }
  
  public final boolean d(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return Long.valueOf(EF[paramInt2].getLong(paramInt1, EE.getInt(paramString))).longValue() == 1L;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final float e(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].getFloat(paramInt1, EE.getInt(paramString));
  }
  
  public final Bundle eP()
  {
    return EG;
  }
  
  public final void eR()
  {
    int j = 0;
    EE = new Bundle();
    int i = 0;
    while (i < ED.length)
    {
      EE.putInt(ED[i], i);
      i += 1;
    }
    EH = new int[EF.length];
    int k = 0;
    i = j;
    j = k;
    while (i < EF.length)
    {
      EH[i] = j;
      k = EF[i].getStartPosition();
      j += EF[i].getNumRows() - (j - k);
      i += 1;
    }
    EI = j;
  }
  
  final String[] eS()
  {
    return ED;
  }
  
  final CursorWindow[] eT()
  {
    return EF;
  }
  
  public final byte[] f(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].getBlob(paramInt1, EE.getInt(paramString));
  }
  
  /* Error */
  protected final void finalize()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/data/DataHolder:EK	Z
    //   4: ifeq +79 -> 83
    //   7: aload_0
    //   8: getfield 59	com/google/android/gms/common/data/DataHolder:EF	[Landroid/database/CursorWindow;
    //   11: arraylength
    //   12: ifle +71 -> 83
    //   15: aload_0
    //   16: invokevirtual 268	com/google/android/gms/common/data/DataHolder:isClosed	()Z
    //   19: ifne +64 -> 83
    //   22: aload_0
    //   23: getfield 308	com/google/android/gms/common/data/DataHolder:EJ	Ljava/lang/Object;
    //   26: ifnonnull +62 -> 88
    //   29: new 127	java/lang/StringBuilder
    //   32: dup
    //   33: ldc_w 348
    //   36: invokespecial 132	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_0
    //   40: invokevirtual 349	java/lang/Object:toString	()Ljava/lang/String;
    //   43: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: astore_1
    //   50: ldc_w 351
    //   53: new 127	java/lang/StringBuilder
    //   56: dup
    //   57: ldc_w 353
    //   60: invokespecial 132	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_1
    //   64: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc -118
    //   69: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 160	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   78: pop
    //   79: aload_0
    //   80: invokevirtual 354	com/google/android/gms/common/data/DataHolder:close	()V
    //   83: aload_0
    //   84: invokespecial 356	java/lang/Object:finalize	()V
    //   87: return
    //   88: aload_0
    //   89: getfield 308	com/google/android/gms/common/data/DataHolder:EJ	Ljava/lang/Object;
    //   92: invokevirtual 349	java/lang/Object:toString	()Ljava/lang/String;
    //   95: astore_1
    //   96: goto -46 -> 50
    //   99: astore_1
    //   100: aload_0
    //   101: invokespecial 356	java/lang/Object:finalize	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	DataHolder
    //   49	47	1	str	String
    //   99	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	50	99	finally
    //   50	83	99	finally
    //   88	96	99	finally
  }
  
  public final Uri g(String paramString, int paramInt1, int paramInt2)
  {
    paramString = c(paramString, paramInt1, paramInt2);
    if (paramString == null) {
      return null;
    }
    return Uri.parse(paramString);
  }
  
  public final int getCount()
  {
    return EI;
  }
  
  public final int getStatusCode()
  {
    return CQ;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean h(String paramString, int paramInt1, int paramInt2)
  {
    e(paramString, paramInt1);
    return EF[paramInt2].isNull(paramInt1, EE.getInt(paramString));
  }
  
  public final boolean isClosed()
  {
    try
    {
      boolean bool = mClosed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */