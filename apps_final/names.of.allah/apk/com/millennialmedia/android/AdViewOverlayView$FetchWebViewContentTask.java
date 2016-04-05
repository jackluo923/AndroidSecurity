package com.millennialmedia.android;

import android.os.AsyncTask;
import java.lang.ref.WeakReference;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

class AdViewOverlayView$FetchWebViewContentTask
  extends AsyncTask<Void, Void, String>
{
  private String baseUrl;
  private boolean cancelVideo;
  
  public AdViewOverlayView$FetchWebViewContentTask(AdViewOverlayView paramAdViewOverlayView, String paramString)
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
    if (cancelVideo)
    {
      AdViewOverlayActivity localAdViewOverlayActivity = (AdViewOverlayActivity)this$0.overlayActivityRef.get();
      if (localAdViewOverlayActivity == null) {
        break label52;
      }
      localAdViewOverlayActivity.finish();
    }
    for (;;)
    {
      if (paramString != null) {
        this$0.adImpl.controller.setWebViewContent(paramString, baseUrl);
      }
      return;
      label52:
      AdViewOverlayView.access$200(this$0);
    }
  }
  
  protected void onPreExecute()
  {
    if (AdViewOverlayView.access$400(this$0) == null) {
      AdViewOverlayView.access$500(this$0);
    }
    super.onPreExecute();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.FetchWebViewContentTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */