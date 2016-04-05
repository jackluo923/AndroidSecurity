package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class i
{
  private static final Object f = new Object();
  private static i g;
  private final Context a;
  private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> b = new HashMap();
  private final HashMap<String, ArrayList<l>> c = new HashMap();
  private final ArrayList<k> d = new ArrayList();
  private final Handler e;
  
  private i(Context paramContext)
  {
    a = paramContext;
    e = new j(this, paramContext.getMainLooper());
  }
  
  public static i a(Context paramContext)
  {
    synchronized (f)
    {
      if (g == null) {
        g = new i(paramContext.getApplicationContext());
      }
      paramContext = g;
      return paramContext;
    }
  }
  
  public final boolean a(Intent paramIntent)
  {
    int i;
    label158:
    int j;
    Object localObject;
    int k;
    ArrayList localArrayList1;
    synchronized (b)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(a.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((paramIntent.getFlags() & 0x8) == 0) {
        break label486;
      }
      i = 1;
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      }
      ArrayList localArrayList2 = (ArrayList)c.get(paramIntent.getAction());
      if (localArrayList2 == null) {
        break label461;
      }
      if (i == 0) {
        break label469;
      }
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList2);
      break label469;
      if (j >= localArrayList2.size()) {
        break label519;
      }
      localObject = (l)localArrayList2.get(j);
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Matching against filter " + a);
      }
      if (c)
      {
        if (i == 0) {
          break label492;
        }
        Log.v("LocalBroadcastManager", "  Filter's target already added");
      }
      else
      {
        k = a.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
        if (k >= 0)
        {
          if (i != 0) {
            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(k));
          }
          if (localArrayList1 != null) {
            break label466;
          }
          localArrayList1 = new ArrayList();
          label301:
          localArrayList1.add(localObject);
          c = true;
        }
      }
    }
    if (i != 0) {
      switch (k)
      {
      default: 
        localObject = "unknown reason";
        label363:
        Log.v("LocalBroadcastManager", "  Filter did not match: " + (String)localObject);
        break;
      }
    }
    for (;;)
    {
      if (i < localArrayList1.size())
      {
        getc = false;
        i += 1;
      }
      else
      {
        d.add(new k(paramIntent, localArrayList1));
        if (!e.hasMessages(1)) {
          e.sendEmptyMessage(1);
        }
        return true;
        label461:
        label466:
        label469:
        label486:
        label492:
        label519:
        do
        {
          return false;
          break label301;
          localArrayList1 = null;
          j = 0;
          break label158;
          for (;;)
          {
            j += 1;
            break label158;
            i = 0;
            break;
          }
          localObject = "action";
          break label363;
          localObject = "category";
          break label363;
          localObject = "data";
          break label363;
          localObject = "type";
          break label363;
        } while (localArrayList1 == null);
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */