package com.mobeta.android.dslv;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

final class m
{
  StringBuilder a = new StringBuilder();
  File b = new File(Environment.getExternalStorageDirectory(), "dslv_state.txt");
  int c = 0;
  int d = 0;
  boolean e = false;
  
  public m(DragSortListView paramDragSortListView)
  {
    if (!b.exists()) {}
    try
    {
      b.createNewFile();
      Log.d("mobeta", "file created");
      return;
    }
    catch (IOException paramDragSortListView)
    {
      Log.w("mobeta", "Could not create dslv_state.txt");
      Log.d("mobeta", paramDragSortListView.getMessage());
    }
  }
  
  public final void a()
  {
    boolean bool = false;
    if (!e) {
      return;
    }
    for (;;)
    {
      try
      {
        if (d == 0)
        {
          FileWriter localFileWriter = new FileWriter(b, bool);
          localFileWriter.write(a.toString());
          a.delete(0, a.length());
          localFileWriter.flush();
          localFileWriter.close();
          d += 1;
          return;
        }
      }
      catch (IOException localIOException)
      {
        return;
      }
      bool = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */