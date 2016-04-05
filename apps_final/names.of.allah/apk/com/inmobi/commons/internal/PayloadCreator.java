package com.inmobi.commons.internal;

import android.content.Context;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import java.util.List;

public abstract interface PayloadCreator
{
  public abstract String toPayloadString(List<Sample> paramList, List<ActivityRecognitionSampler.ActivitySample> paramList1, Context paramContext);
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.PayloadCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */