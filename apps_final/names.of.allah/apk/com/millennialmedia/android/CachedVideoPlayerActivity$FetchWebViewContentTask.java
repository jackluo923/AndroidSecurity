package com.millennialmedia.android;

import android.os.AsyncTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

class CachedVideoPlayerActivity$FetchWebViewContentTask
  extends AsyncTask<Void, Void, String>
{
  private String baseUrl;
  private boolean cancelVideo;
  
  public CachedVideoPlayerActivity$FetchWebViewContentTask(CachedVideoPlayerActivity paramCachedVideoPlayerActivity, String paramString)
  {
    baseUrl = paramString;
  }
  
  protected String doInBackground(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = new HttpGetRequest().get(baseUrl);
      StatusLine localStatusLine = paramVarArgs.getStatusLine();
      if ((paramVarArgs != null) && (localStatusLine != null) && (localStatusLine.getStatusCode() != 404))
      {
        paramVarArgs = paramVarArgs.getEntity();
        if (paramVarArgs != null) {
          return HttpGetRequest.convertStreamToString(paramVarArgs.getContent());
        }
      }
      else
      {
        cancelVideo = true;
      }
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    return null;
  }
  
  protected void onPostExecute(String paramString)
  {
    if (cancelVideo) {
      this$0.dismiss();
    }
    if (paramString != null)
    {
      CachedVideoPlayerActivity.access$100(this$0).setWebViewContent(paramString, baseUrl, this$0.activity);
      this$0.hasLoadedCompletionUrl = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedVideoPlayerActivity.FetchWebViewContentTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */