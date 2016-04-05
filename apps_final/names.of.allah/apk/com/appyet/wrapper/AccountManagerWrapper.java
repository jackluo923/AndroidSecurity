package com.appyet.wrapper;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.os.Bundle;
import com.appyet.a.b;
import com.appyet.a.c;
import com.appyet.a.f;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.bl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public class AccountManagerWrapper
{
  private AccountManager mAccountManager;
  private ApplicationContext mApplicationContext;
  
  static
  {
    try
    {
      Class.forName("android.accounts.AccountManager");
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public AccountManagerWrapper(ApplicationContext paramApplicationContext)
  {
    mApplicationContext = paramApplicationContext;
    mAccountManager = AccountManager.get(mApplicationContext);
  }
  
  public static void checkAvailable() {}
  
  public boolean Authenticate(Activity paramActivity, String paramString, c<String> paramc)
  {
    for (;;)
    {
      int i;
      try
      {
        Account[] arrayOfAccount = mAccountManager.getAccountsByType("com.google");
        int j = arrayOfAccount.length;
        i = 0;
        if (i >= j) {
          break label249;
        }
        localObject = arrayOfAccount[i];
        if ((type == null) || (!type.equals("com.google")) || (name == null) || (!name.equals(paramString))) {
          break label257;
        }
        paramString = (String)localObject;
      }
      catch (Exception paramActivity)
      {
        Object localObject;
        com.appyet.d.d.a(paramActivity);
        return false;
      }
      paramActivity = (Bundle)mAccountManager.getAuthToken(paramString, "reader", null, paramActivity, null, null).getResult();
      a = paramActivity.get("authtoken").toString();
      paramString = new com.appyet.a.d();
      localObject = new BasicNameValuePair("Authorization", "GoogleLogin auth=" + (String)a);
      g.add(localObject);
      a = "http://www.google.com/reader/api/0/token";
      paramString = mApplicationContext.g.a(paramString);
      bl.b(paramString);
      if ((f == 401) || (f == 403))
      {
        mAccountManager.invalidateAuthToken("com.google", (String)a);
        a = paramActivity.get("authtoken").toString();
      }
      return true;
      label249:
      paramString = null;
      if (paramString == null)
      {
        return false;
        label257:
        i += 1;
      }
    }
  }
  
  public List<b> getGoogleAccounts()
  {
    Object localObject1 = AccountManager.get(mApplicationContext);
    Object localObject2 = new ArrayList();
    Collections.addAll((Collection)localObject2, ((AccountManager)localObject1).getAccounts());
    localObject1 = new ArrayList();
    localObject2 = ((ArrayList)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Account localAccount = (Account)((Iterator)localObject2).next();
      if ((type != null) && (type.equals("com.google")) && (name != null) && ((name.contains("@gmail.com")) || (name.contains("@googlemail.com"))))
      {
        b localb = new b();
        a = name;
        ((ArrayList)localObject1).add(localb);
      }
    }
    return (List<b>)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.appyet.wrapper.AccountManagerWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */