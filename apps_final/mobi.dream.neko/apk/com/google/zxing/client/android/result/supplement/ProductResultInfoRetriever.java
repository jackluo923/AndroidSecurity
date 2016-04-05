package com.google.zxing.client.android.result.supplement;

import android.content.Context;
import android.text.Html;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.HttpHelper;
import com.google.zxing.client.android.HttpHelper.ContentType;
import com.google.zxing.client.android.LocaleManager;
import com.google.zxing.client.android.history.HistoryManager;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ProductResultInfoRetriever
  extends SupplementalInfoRetriever
{
  private static final Pattern[] PRODUCT_NAME_PRICE_PATTERNS = { Pattern.compile(",event\\)\">([^<]+)</a></h3>.+<span class=psrp>([^<]+)</span>"), Pattern.compile("owb63p\">([^<]+).+zdi3pb\">([^<]+)") };
  private final Context context;
  private final String productID;
  private final String source;
  
  ProductResultInfoRetriever(TextView paramTextView, String paramString, HistoryManager paramHistoryManager, Context paramContext)
  {
    super(paramTextView, paramHistoryManager);
    productID = paramString;
    source = paramContext.getString(FakeR.getId(paramContext, "string", "msg_google_product"));
    context = paramContext;
  }
  
  private static String unescapeHTML(String paramString)
  {
    return Html.fromHtml(paramString).toString();
  }
  
  void retrieveSupplementalInfo()
    throws IOException
  {
    String str = URLEncoder.encode(productID, "UTF-8");
    str = "http://www.google." + LocaleManager.getProductSearchCountryTLD(context) + "/m/products?ie=utf8&oe=utf8&scoring=p&source=zxing&q=" + str;
    CharSequence localCharSequence = HttpHelper.downloadViaHttp(str, HttpHelper.ContentType.HTML);
    Pattern[] arrayOfPattern = PRODUCT_NAME_PRICE_PATTERNS;
    int j = arrayOfPattern.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Matcher localMatcher = arrayOfPattern[i].matcher(localCharSequence);
        if (localMatcher.find()) {
          append(productID, source, new String[] { unescapeHTML(localMatcher.group(1)), unescapeHTML(localMatcher.group(2)) }, str);
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.supplement.ProductResultInfoRetriever
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */