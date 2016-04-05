package com.inmobi.commons.internal;

import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.Sample;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEListener;
import java.util.List;

final class c
  implements ThinICEListener
{
  public final void onSamplingTerminated(List<Sample> paramList)
  {
    ThinICE.a(paramList);
    IceDataCollector.stop();
    ActivityRecognitionSampler.stop();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */