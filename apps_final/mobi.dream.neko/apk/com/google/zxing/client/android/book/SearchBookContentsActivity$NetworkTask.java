package com.google.zxing.client.android.book;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.HttpHelper;
import com.google.zxing.client.android.HttpHelper.ContentType;
import com.google.zxing.client.android.LocaleManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class SearchBookContentsActivity$NetworkTask
  extends AsyncTask<String, Object, JSONObject>
{
  private SearchBookContentsActivity$NetworkTask(SearchBookContentsActivity paramSearchBookContentsActivity) {}
  
  private void handleSearchResults(JSONObject paramJSONObject)
  {
    try
    {
      int j = paramJSONObject.getInt("number_of_results");
      SearchBookContentsActivity.access$400(this$0).setText(this$0.getString(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_results")) + " : " + j);
      if (j > 0)
      {
        paramJSONObject = paramJSONObject.getJSONArray("search_results");
        SearchBookContentsResult.setQuery(SearchBookContentsActivity.access$500(this$0).getText().toString());
        ArrayList localArrayList = new ArrayList(j);
        int i = 0;
        while (i < j)
        {
          localArrayList.add(parseResult(paramJSONObject.getJSONObject(i)));
          i += 1;
        }
        SearchBookContentsActivity.access$700(this$0).setOnItemClickListener(new BrowseBookListener(this$0, localArrayList));
        SearchBookContentsActivity.access$700(this$0).setAdapter(new SearchBookContentsAdapter(this$0, localArrayList));
        return;
      }
      if ("false".equals(paramJSONObject.optString("searchable"))) {
        SearchBookContentsActivity.access$400(this$0).setText(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_book_not_searchable"));
      }
      SearchBookContentsActivity.access$700(this$0).setAdapter(null);
      return;
    }
    catch (JSONException paramJSONObject)
    {
      Log.w(SearchBookContentsActivity.access$200(), "Bad JSON from book search", paramJSONObject);
      SearchBookContentsActivity.access$700(this$0).setAdapter(null);
      SearchBookContentsActivity.access$400(this$0).setText(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_failed"));
    }
  }
  
  private SearchBookContentsResult parseResult(JSONObject paramJSONObject)
  {
    try
    {
      String str2 = paramJSONObject.getString("page_id");
      String str1 = paramJSONObject.getString("page_number");
      boolean bool;
      if (str1.length() > 0)
      {
        str1 = this$0.getString(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_page")) + ' ' + str1;
        paramJSONObject = paramJSONObject.optString("snippet_text");
        bool = true;
        if (paramJSONObject.length() <= 0) {
          break label177;
        }
        paramJSONObject = SearchBookContentsActivity.access$800().matcher(paramJSONObject).replaceAll("");
        paramJSONObject = SearchBookContentsActivity.access$900().matcher(paramJSONObject).replaceAll("<");
        paramJSONObject = SearchBookContentsActivity.access$1000().matcher(paramJSONObject).replaceAll(">");
        paramJSONObject = SearchBookContentsActivity.access$1100().matcher(paramJSONObject).replaceAll("'");
        paramJSONObject = SearchBookContentsActivity.access$1200().matcher(paramJSONObject).replaceAll("\"");
      }
      for (;;)
      {
        return new SearchBookContentsResult(str2, str1, paramJSONObject, bool);
        str1 = this$0.getString(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_unknown_page"));
        break;
        label177:
        paramJSONObject = '(' + this$0.getString(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_snippet_unavailable")) + ')';
        bool = false;
      }
      return new SearchBookContentsResult(this$0.getString(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_no_page_returned")), "", "", false);
    }
    catch (JSONException paramJSONObject) {}
  }
  
  protected JSONObject doInBackground(String... paramVarArgs)
  {
    String str = paramVarArgs[0];
    paramVarArgs = paramVarArgs[1];
    try
    {
      if (LocaleManager.isBookSearchUrl(paramVarArgs)) {
        paramVarArgs = paramVarArgs.substring(paramVarArgs.indexOf('=') + 1);
      }
      for (paramVarArgs = "http://www.google.com/books?id=" + paramVarArgs + "&jscmd=SearchWithinVolume2&q=" + str;; paramVarArgs = "http://www.google.com/books?vid=isbn" + paramVarArgs + "&jscmd=SearchWithinVolume2&q=" + str) {
        return new JSONObject(HttpHelper.downloadViaHttp(paramVarArgs, HttpHelper.ContentType.JSON).toString());
      }
      return null;
    }
    catch (IOException paramVarArgs)
    {
      Log.w(SearchBookContentsActivity.access$200(), "Error accessing book search", paramVarArgs);
      return null;
    }
    catch (JSONException paramVarArgs)
    {
      Log.w(SearchBookContentsActivity.access$200(), "Error accessing book search", paramVarArgs);
    }
  }
  
  protected void onPostExecute(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      SearchBookContentsActivity.access$400(this$0).setText(SearchBookContentsActivity.access$300().getId("string", "msg_sbc_failed"));
    }
    for (;;)
    {
      SearchBookContentsActivity.access$500(this$0).setEnabled(true);
      SearchBookContentsActivity.access$500(this$0).selectAll();
      SearchBookContentsActivity.access$600(this$0).setEnabled(true);
      return;
      handleSearchResults(paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.book.SearchBookContentsActivity.NetworkTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */