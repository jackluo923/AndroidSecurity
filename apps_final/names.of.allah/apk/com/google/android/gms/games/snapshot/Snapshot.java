package com.google.android.gms.games.snapshot;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.Contents;

public abstract interface Snapshot
  extends Parcelable, Freezable<Snapshot>
{
  public abstract Contents getContents();
  
  public abstract SnapshotMetadata getMetadata();
  
  public abstract void iH();
  
  public abstract boolean modifyBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3);
  
  public abstract byte[] readFully();
  
  public abstract boolean writeBytes(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.Snapshot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */