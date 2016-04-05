package mobi.monaca.framework.util;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;

public class MyLog
{
  public static final String PREFIX = "[MyLog] ";
  
  public static void d(String paramString1, String paramString2) {}
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void e(String paramString1, String paramString2) {}
  
  public static void i(String paramString1, String paramString2) {}
  
  public static void sendBloadcastPongLog(Context paramContext)
  {
    Intent localIntent = new Intent(MonacaApplication.getStringFromResource(R.string.action_log_message));
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_pong), true);
    LocalBroadcastManager.getInstance(paramContext.getApplicationContext()).sendBroadcast(localIntent);
  }
  
  public static void sendBroadcastDebugLog(Context paramContext, LogItem paramLogItem)
  {
    v("MyLog", "sendBloadcastDebugLog. message:" + paramLogItem.getMessage());
    Intent localIntent = new Intent("log_message_action");
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_message), paramLogItem.getMessage());
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_source), paramLogItem.getSource().toString());
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_url), paramLogItem.getUrl());
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_line), paramLogItem.getLineNumber());
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.key_log_level), paramLogItem.getLogLevel().toString());
    LocalBroadcastManager.getInstance(paramContext.getApplicationContext()).sendBroadcast(localIntent);
  }
  
  public static void v(String paramString1, String paramString2) {}
  
  public static void w(String paramString1, String paramString2) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.MyLog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */