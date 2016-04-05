package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class MilestoneEntity
  implements SafeParcelable, Milestone
{
  public static final MilestoneEntityCreator CREATOR = new MilestoneEntityCreator();
  private final String Nf;
  private final String Oq;
  private final long TJ;
  private final long TK;
  private final byte[] TL;
  private final int mState;
  private final int xJ;
  
  MilestoneEntity(int paramInt1, String paramString1, long paramLong1, long paramLong2, byte[] paramArrayOfByte, int paramInt2, String paramString2)
  {
    xJ = paramInt1;
    Oq = paramString1;
    TJ = paramLong1;
    TK = paramLong2;
    TL = paramArrayOfByte;
    mState = paramInt2;
    Nf = paramString2;
  }
  
  public MilestoneEntity(Milestone paramMilestone)
  {
    xJ = 4;
    Oq = paramMilestone.getMilestoneId();
    TJ = paramMilestone.getCurrentProgress();
    TK = paramMilestone.getTargetProgress();
    mState = paramMilestone.getState();
    Nf = paramMilestone.getEventId();
    paramMilestone = paramMilestone.getCompletionRewardData();
    if (paramMilestone == null)
    {
      TL = null;
      return;
    }
    TL = new byte[paramMilestone.length];
    System.arraycopy(paramMilestone, 0, TL, 0, paramMilestone.length);
  }
  
  static int a(Milestone paramMilestone)
  {
    return hl.hashCode(new Object[] { paramMilestone.getMilestoneId(), Long.valueOf(paramMilestone.getCurrentProgress()), Long.valueOf(paramMilestone.getTargetProgress()), Integer.valueOf(paramMilestone.getState()), paramMilestone.getEventId() });
  }
  
  static boolean a(Milestone paramMilestone, Object paramObject)
  {
    if (!(paramObject instanceof Milestone)) {}
    do
    {
      return false;
      if (paramMilestone == paramObject) {
        return true;
      }
      paramObject = (Milestone)paramObject;
    } while ((!hl.equal(((Milestone)paramObject).getMilestoneId(), paramMilestone.getMilestoneId())) || (!hl.equal(Long.valueOf(((Milestone)paramObject).getCurrentProgress()), Long.valueOf(paramMilestone.getCurrentProgress()))) || (!hl.equal(Long.valueOf(((Milestone)paramObject).getTargetProgress()), Long.valueOf(paramMilestone.getTargetProgress()))) || (!hl.equal(Integer.valueOf(((Milestone)paramObject).getState()), Integer.valueOf(paramMilestone.getState()))) || (!hl.equal(((Milestone)paramObject).getEventId(), paramMilestone.getEventId())));
    return true;
  }
  
  static String b(Milestone paramMilestone)
  {
    return hl.e(paramMilestone).a("MilestoneId", paramMilestone.getMilestoneId()).a("CurrentProgress", Long.valueOf(paramMilestone.getCurrentProgress())).a("TargetProgress", Long.valueOf(paramMilestone.getTargetProgress())).a("State", Integer.valueOf(paramMilestone.getState())).a("CompletionRewardData", paramMilestone.getCompletionRewardData()).a("EventId", paramMilestone.getEventId()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Milestone freeze()
  {
    return this;
  }
  
  public final byte[] getCompletionRewardData()
  {
    return TL;
  }
  
  public final long getCurrentProgress()
  {
    return TJ;
  }
  
  public final String getEventId()
  {
    return Nf;
  }
  
  public final String getMilestoneId()
  {
    return Oq;
  }
  
  public final int getState()
  {
    return mState;
  }
  
  public final long getTargetProgress()
  {
    return TK;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    MilestoneEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.MilestoneEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */