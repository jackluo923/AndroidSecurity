package com.google.zxing.client.android.result.supplement;

import android.content.Context;
import android.os.AsyncTask;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.widget.TextView;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;
import com.google.zxing.client.android.history.HistoryManager;
import com.google.zxing.client.result.ISBNParsedResult;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ProductParsedResult;
import com.google.zxing.client.result.URIParsedResult;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class SupplementalInfoRetriever
  extends AsyncTask<Object, Object, Object>
{
  private static final String TAG = "SupplementalInfo";
  private final WeakReference<HistoryManager> historyManagerRef;
  private final List<Spannable> newContents;
  private final List<String[]> newHistories;
  private final WeakReference<TextView> textViewRef;
  
  SupplementalInfoRetriever(TextView paramTextView, HistoryManager paramHistoryManager)
  {
    textViewRef = new WeakReference(paramTextView);
    historyManagerRef = new WeakReference(paramHistoryManager);
    newContents = new ArrayList();
    newHistories = new ArrayList();
  }
  
  public static void maybeInvokeRetrieval(TextView paramTextView, ParsedResult paramParsedResult, HistoryManager paramHistoryManager, Context paramContext)
  {
    AsyncTaskExecInterface localAsyncTaskExecInterface = (AsyncTaskExecInterface)new AsyncTaskExecManager().build();
    if ((paramParsedResult instanceof URIParsedResult))
    {
      localAsyncTaskExecInterface.execute(new URIResultInfoRetriever(paramTextView, (URIParsedResult)paramParsedResult, paramHistoryManager, paramContext), new Object[0]);
      localAsyncTaskExecInterface.execute(new TitleRetriever(paramTextView, (URIParsedResult)paramParsedResult, paramHistoryManager), new Object[0]);
    }
    do
    {
      return;
      if ((paramParsedResult instanceof ProductParsedResult))
      {
        localAsyncTaskExecInterface.execute(new ProductResultInfoRetriever(paramTextView, ((ProductParsedResult)paramParsedResult).getProductID(), paramHistoryManager, paramContext), new Object[0]);
        return;
      }
    } while (!(paramParsedResult instanceof ISBNParsedResult));
    paramParsedResult = ((ISBNParsedResult)paramParsedResult).getISBN();
    localAsyncTaskExecInterface.execute(new ProductResultInfoRetriever(paramTextView, paramParsedResult, paramHistoryManager, paramContext), new Object[0]);
    localAsyncTaskExecInterface.execute(new BookResultInfoRetriever(paramTextView, paramParsedResult, paramHistoryManager, paramContext), new Object[0]);
  }
  
  final void append(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    Object localObject = new StringBuilder();
    if (paramString2 != null) {
      ((StringBuilder)localObject).append(paramString2).append(" : ");
    }
    int k = ((StringBuilder)localObject).length();
    int j = 1;
    int m = paramArrayOfString.length;
    int i = 0;
    if (i < m)
    {
      paramString2 = paramArrayOfString[i];
      if (j != 0)
      {
        ((StringBuilder)localObject).append(paramString2);
        j = 0;
      }
      for (;;)
      {
        i += 1;
        break;
        ((StringBuilder)localObject).append(" [");
        ((StringBuilder)localObject).append(paramString2);
        ((StringBuilder)localObject).append(']');
      }
    }
    i = ((StringBuilder)localObject).length();
    paramArrayOfString = ((StringBuilder)localObject).toString();
    localObject = new SpannableString(paramArrayOfString + "\n\n");
    if (paramString3 != null)
    {
      if (!paramString3.startsWith("HTTP://")) {
        break label241;
      }
      paramString2 = "http" + paramString3.substring(4);
    }
    for (;;)
    {
      ((Spannable)localObject).setSpan(new URLSpan(paramString2), k, i, 33);
      newContents.add(localObject);
      newHistories.add(new String[] { paramString1, paramArrayOfString });
      return;
      label241:
      paramString2 = paramString3;
      if (paramString3.startsWith("HTTPS://")) {
        paramString2 = "https" + paramString3.substring(5);
      }
    }
  }
  
  public final Object doInBackground(Object... paramVarArgs)
  {
    try
    {
      retrieveSupplementalInfo();
      return null;
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        Log.w("SupplementalInfo", paramVarArgs);
      }
    }
  }
  
  protected void onPostExecute(Object paramObject)
  {
    paramObject = (TextView)textViewRef.get();
    Iterator localIterator;
    if (paramObject != null)
    {
      localIterator = newContents.iterator();
      while (localIterator.hasNext()) {
        ((TextView)paramObject).append((Spannable)localIterator.next());
      }
      ((TextView)paramObject).setMovementMethod(LinkMovementMethod.getInstance());
    }
    paramObject = (HistoryManager)historyManagerRef.get();
    if (paramObject != null)
    {
      localIterator = newHistories.iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = (String[])localIterator.next();
        ((HistoryManager)paramObject).addHistoryItemDetails(arrayOfString[0], arrayOfString[1]);
      }
    }
  }
  
  abstract void retrieveSupplementalInfo()
    throws IOException;
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.supplement.SupplementalInfoRetriever
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */