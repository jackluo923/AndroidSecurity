package com.actionbarsherlock.widget;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlSerializer;

final class ActivityChooserModel$HistoryPersister
  implements Runnable
{
  private ActivityChooserModel$HistoryPersister(ActivityChooserModel paramActivityChooserModel) {}
  
  public final void run()
  {
    ArrayList localArrayList;
    XmlSerializer localXmlSerializer;
    int j;
    int i;
    ActivityChooserModel.HistoricalRecord localHistoricalRecord;
    synchronized (ActivityChooserModel.access$500(this$0))
    {
      localArrayList = new ArrayList(ActivityChooserModel.access$600(this$0));
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.HistoryPersister
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */