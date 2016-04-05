package mobi.monaca.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeStamp
{
  public static String getCurrentTimeStamp()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("MM-dd HH:mm:ss").format(localDate);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.TimeStamp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */