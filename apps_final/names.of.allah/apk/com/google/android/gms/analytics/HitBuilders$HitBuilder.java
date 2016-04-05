package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HitBuilders$HitBuilder<T extends HitBuilder>
{
  List<Product> wA = new ArrayList();
  private Map<String, String> ww = new HashMap();
  ProductAction wx;
  Map<String, List<Product>> wy = new HashMap();
  List<Promotion> wz = new ArrayList();
  
  public T addImpression(Product paramProduct, String paramString)
  {
    if (paramProduct == null)
    {
      aa.D("product should be non-null");
      return this;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!wy.containsKey(str)) {
      wy.put(str, new ArrayList());
    }
    ((List)wy.get(str)).add(paramProduct);
    return this;
  }
  
  public T addProduct(Product paramProduct)
  {
    if (paramProduct == null)
    {
      aa.D("product should be non-null");
      return this;
    }
    wA.add(paramProduct);
    return this;
  }
  
  public T addPromotion(Promotion paramPromotion)
  {
    if (paramPromotion == null)
    {
      aa.D("promotion should be non-null");
      return this;
    }
    wz.add(paramPromotion);
    return this;
  }
  
  public Map<String, String> build()
  {
    HashMap localHashMap = new HashMap(ww);
    if (wx != null) {
      localHashMap.putAll(wx.build());
    }
    Iterator localIterator = wz.iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Promotion)localIterator.next()).X(o.v(i)));
      i += 1;
    }
    localIterator = wA.iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Product)localIterator.next()).X(o.u(i)));
      i += 1;
    }
    localIterator = wy.entrySet().iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (List)localEntry.getValue();
      String str = o.x(i);
      localObject = ((List)localObject).iterator();
      int j = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((Product)((Iterator)localObject).next()).X(str + o.w(j)));
        j += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getKey())) {
        localHashMap.put(str + "nm", localEntry.getKey());
      }
      i += 1;
    }
    return localHashMap;
  }
  
  protected String get(String paramString)
  {
    return (String)ww.get(paramString);
  }
  
  public final T set(String paramString1, String paramString2)
  {
    u.cP().a(u.a.uT);
    if (paramString1 != null)
    {
      ww.put(paramString1, paramString2);
      return this;
    }
    aa.D(" HitBuilder.set() called with a null paramName.");
    return this;
  }
  
  public final T setAll(Map<String, String> paramMap)
  {
    u.cP().a(u.a.uU);
    if (paramMap == null) {
      return this;
    }
    ww.putAll(new HashMap(paramMap));
    return this;
  }
  
  public T setCampaignParamsFromUrl(String paramString)
  {
    u.cP().a(u.a.uW);
    paramString = ak.V(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = ak.U(paramString);
    set("&cc", (String)paramString.get("utm_content"));
    set("&cm", (String)paramString.get("utm_medium"));
    set("&cn", (String)paramString.get("utm_campaign"));
    set("&cs", (String)paramString.get("utm_source"));
    set("&ck", (String)paramString.get("utm_term"));
    set("&ci", (String)paramString.get("utm_id"));
    set("&gclid", (String)paramString.get("gclid"));
    set("&dclid", (String)paramString.get("dclid"));
    set("&gmob_t", (String)paramString.get("gmob_t"));
    return this;
  }
  
  public T setCustomDimension(int paramInt, String paramString)
  {
    set(o.s(paramInt), paramString);
    return this;
  }
  
  public T setCustomMetric(int paramInt, float paramFloat)
  {
    set(o.t(paramInt), Float.toString(paramFloat));
    return this;
  }
  
  protected T setHitType(String paramString)
  {
    set("&t", paramString);
    return this;
  }
  
  public T setNewSession()
  {
    set("&sc", "start");
    return this;
  }
  
  public T setNonInteraction(boolean paramBoolean)
  {
    set("&ni", ak.v(paramBoolean));
    return this;
  }
  
  public T setProductAction(ProductAction paramProductAction)
  {
    wx = paramProductAction;
    return this;
  }
  
  public T setPromotionAction(String paramString)
  {
    ww.put("&promoa", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.HitBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */