package com.google.zxing.client.android.share;

import java.io.Serializable;
import java.util.Comparator;

class LoadPackagesAsyncTask$ByFirstStringComparator
  implements Comparator<String[]>, Serializable
{
  public int compare(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return paramArrayOfString1[0].compareTo(paramArrayOfString2[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.LoadPackagesAsyncTask.ByFirstStringComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */