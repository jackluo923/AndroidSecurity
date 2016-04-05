package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.il;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;

public final class SnapshotEntity
  implements SafeParcelable, Snapshot
{
  public static final SnapshotEntityCreator CREATOR = new SnapshotEntityCreator();
  private static final Object Ub = new Object();
  private Contents HD;
  private final SnapshotMetadataEntity Uc;
  private final int xJ;
  
  SnapshotEntity(int paramInt, SnapshotMetadata paramSnapshotMetadata, Contents paramContents)
  {
    xJ = paramInt;
    Uc = new SnapshotMetadataEntity(paramSnapshotMetadata);
    HD = paramContents;
  }
  
  public SnapshotEntity(SnapshotMetadata paramSnapshotMetadata, Contents paramContents)
  {
    this(1, paramSnapshotMetadata, paramContents);
  }
  
  private boolean a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    hn.b(HD, "Must provide a previously opened Snapshot");
    synchronized (Ub)
    {
      Object localObject2 = new FileOutputStream(HD.getParcelFileDescriptor().getFileDescriptor());
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream((OutputStream)localObject2);
      try
      {
        localObject2 = ((FileOutputStream)localObject2).getChannel();
        ((FileChannel)localObject2).position(paramInt1);
        localBufferedOutputStream.write(paramArrayOfByte, paramInt2, paramInt3);
        if (paramBoolean) {
          ((FileChannel)localObject2).truncate(paramArrayOfByte.length);
        }
        localBufferedOutputStream.flush();
        return true;
      }
      catch (IOException paramArrayOfByte)
      {
        GamesLog.a("Snapshot", "Failed to write snapshot data", paramArrayOfByte);
        return false;
      }
    }
  }
  
  static boolean a(Snapshot paramSnapshot, Object paramObject)
  {
    if (!(paramObject instanceof Snapshot)) {}
    do
    {
      return false;
      if (paramSnapshot == paramObject) {
        return true;
      }
      paramObject = (Snapshot)paramObject;
    } while ((!hl.equal(((Snapshot)paramObject).getMetadata(), paramSnapshot.getMetadata())) || (!hl.equal(((Snapshot)paramObject).getContents(), paramSnapshot.getContents())));
    return true;
  }
  
  static int b(Snapshot paramSnapshot)
  {
    return hl.hashCode(new Object[] { paramSnapshot.getMetadata(), paramSnapshot.getContents() });
  }
  
  static String c(Snapshot paramSnapshot)
  {
    hl.a locala = hl.e(paramSnapshot).a("Metadata", paramSnapshot.getMetadata());
    if (paramSnapshot.getContents() != null) {}
    for (boolean bool = true;; bool = false) {
      return locala.a("HasContents", Boolean.valueOf(bool)).toString();
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Snapshot freeze()
  {
    return this;
  }
  
  public final Contents getContents()
  {
    return HD;
  }
  
  public final SnapshotMetadata getMetadata()
  {
    return Uc;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return b(this);
  }
  
  public final void iH()
  {
    HD.close();
    HD = null;
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final boolean modifyBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    return a(paramInt1, paramArrayOfByte, paramInt2, paramArrayOfByte.length, false);
  }
  
  public final byte[] readFully()
  {
    hn.b(HD, "Must provide a previously opened Snapshot");
    synchronized (Ub)
    {
      FileInputStream localFileInputStream = new FileInputStream(HD.getParcelFileDescriptor().getFileDescriptor());
      Object localObject2 = new BufferedInputStream(localFileInputStream);
      try
      {
        localFileInputStream.getChannel().position(0L);
        localObject2 = il.a((InputStream)localObject2, false);
        return (byte[])localObject2;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          GamesLog.a("Snapshot", "Failed to read snapshot data", localIOException);
        }
      }
    }
  }
  
  public final String toString()
  {
    return c(this);
  }
  
  public final boolean writeBytes(byte[] paramArrayOfByte)
  {
    return a(0, paramArrayOfByte, 0, paramArrayOfByte.length, true);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    SnapshotEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */