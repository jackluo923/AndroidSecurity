package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.Iterator;
import org.json.JSONObject;

public final class by
  extends bv.a
{
  private final MediationAdapter nQ;
  
  public by(MediationAdapter paramMediationAdapter)
  {
    nQ = paramMediationAdapter;
  }
  
  private Bundle a(String paramString1, int paramInt, String paramString2)
  {
    ev.D("Server parameters: " + paramString1);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(nQ instanceof AdMobAdapter)) {
        break label135;
      }
    }
    catch (Throwable paramString1)
    {
      ev.c("Could not get Server Parameters Bundle.", paramString1);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label135:
    return localBundle;
  }
  
  public final void a(d paramd, aj paramaj, String paramString, bw parambw)
  {
    a(paramd, paramaj, paramString, null, parambw);
  }
  
  /* Error */
  public final void a(d paramd, aj paramaj, String paramString1, String paramString2, bw parambw)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   7: instanceof 93
    //   10: ifne +39 -> 49
    //   13: new 20	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 95
    //   19: invokespecial 25	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   26: invokevirtual 101	java/lang/Object:getClass	()Ljava/lang/Class;
    //   29: invokevirtual 106	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   32: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 38	com/google/android/gms/internal/ev:D	(Ljava/lang/String;)V
    //   41: new 76	android/os/RemoteException
    //   44: dup
    //   45: invokespecial 77	android/os/RemoteException:<init>	()V
    //   48: athrow
    //   49: ldc 108
    //   51: invokestatic 111	com/google/android/gms/internal/ev:z	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   58: checkcast 93	com/google/android/gms/ads/mediation/MediationInterstitialAdapter
    //   61: astore 8
    //   63: aload_2
    //   64: getfield 117	com/google/android/gms/internal/aj:lS	Ljava/util/List;
    //   67: ifnull +117 -> 184
    //   70: new 119	java/util/HashSet
    //   73: dup
    //   74: aload_2
    //   75: getfield 117	com/google/android/gms/internal/aj:lS	Ljava/util/List;
    //   78: invokespecial 122	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   81: astore 6
    //   83: new 124	com/google/android/gms/internal/bx
    //   86: dup
    //   87: new 126	java/util/Date
    //   90: dup
    //   91: aload_2
    //   92: getfield 130	com/google/android/gms/internal/aj:lQ	J
    //   95: invokespecial 133	java/util/Date:<init>	(J)V
    //   98: aload_2
    //   99: getfield 137	com/google/android/gms/internal/aj:lR	I
    //   102: aload 6
    //   104: aload_2
    //   105: getfield 141	com/google/android/gms/internal/aj:lT	Z
    //   108: aload_2
    //   109: getfield 144	com/google/android/gms/internal/aj:lU	I
    //   112: invokespecial 147	com/google/android/gms/internal/bx:<init>	(Ljava/util/Date;ILjava/util/Set;ZI)V
    //   115: astore 9
    //   117: aload 7
    //   119: astore 6
    //   121: aload_2
    //   122: getfield 151	com/google/android/gms/internal/aj:ma	Landroid/os/Bundle;
    //   125: ifnull +20 -> 145
    //   128: aload_2
    //   129: getfield 151	com/google/android/gms/internal/aj:ma	Landroid/os/Bundle;
    //   132: aload 8
    //   134: invokevirtual 101	java/lang/Object:getClass	()Ljava/lang/Class;
    //   137: invokevirtual 154	java/lang/Class:getName	()Ljava/lang/String;
    //   140: invokevirtual 158	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   143: astore 6
    //   145: aload 8
    //   147: aload_1
    //   148: invokestatic 164	com/google/android/gms/dynamic/e:e	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   151: checkcast 166	android/content/Context
    //   154: new 168	com/google/android/gms/internal/bz
    //   157: dup
    //   158: aload 5
    //   160: invokespecial 171	com/google/android/gms/internal/bz:<init>	(Lcom/google/android/gms/internal/bw;)V
    //   163: aload_0
    //   164: aload_3
    //   165: aload_2
    //   166: getfield 144	com/google/android/gms/internal/aj:lU	I
    //   169: aload 4
    //   171: invokespecial 173	com/google/android/gms/internal/by:a	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   174: aload 9
    //   176: aload 6
    //   178: invokeinterface 177 6 0
    //   183: return
    //   184: aconst_null
    //   185: astore 6
    //   187: goto -104 -> 83
    //   190: astore_1
    //   191: ldc -77
    //   193: aload_1
    //   194: invokestatic 74	com/google/android/gms/internal/ev:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   197: new 76	android/os/RemoteException
    //   200: dup
    //   201: invokespecial 77	android/os/RemoteException:<init>	()V
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	by
    //   0	205	1	paramd	d
    //   0	205	2	paramaj	aj
    //   0	205	3	paramString1	String
    //   0	205	4	paramString2	String
    //   0	205	5	parambw	bw
    //   81	105	6	localObject1	Object
    //   1	117	7	localObject2	Object
    //   61	85	8	localMediationInterstitialAdapter	MediationInterstitialAdapter
    //   115	60	9	localbx	bx
    // Exception table:
    //   from	to	target	type
    //   54	83	190	java/lang/Throwable
    //   83	117	190	java/lang/Throwable
    //   121	145	190	java/lang/Throwable
    //   145	183	190	java/lang/Throwable
  }
  
  public final void a(d paramd, am paramam, aj paramaj, String paramString, bw parambw)
  {
    a(paramd, paramam, paramaj, paramString, null, parambw);
  }
  
  /* Error */
  public final void a(d paramd, am paramam, aj paramaj, String paramString1, String paramString2, bw parambw)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   7: instanceof 185
    //   10: ifne +39 -> 49
    //   13: new 20	java/lang/StringBuilder
    //   16: dup
    //   17: ldc -69
    //   19: invokespecial 25	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   26: invokevirtual 101	java/lang/Object:getClass	()Ljava/lang/Class;
    //   29: invokevirtual 106	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   32: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 38	com/google/android/gms/internal/ev:D	(Ljava/lang/String;)V
    //   41: new 76	android/os/RemoteException
    //   44: dup
    //   45: invokespecial 77	android/os/RemoteException:<init>	()V
    //   48: athrow
    //   49: ldc -67
    //   51: invokestatic 111	com/google/android/gms/internal/ev:z	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: getfield 13	com/google/android/gms/internal/by:nQ	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   58: checkcast 185	com/google/android/gms/ads/mediation/MediationBannerAdapter
    //   61: astore 9
    //   63: aload_3
    //   64: getfield 117	com/google/android/gms/internal/aj:lS	Ljava/util/List;
    //   67: ifnull +133 -> 200
    //   70: new 119	java/util/HashSet
    //   73: dup
    //   74: aload_3
    //   75: getfield 117	com/google/android/gms/internal/aj:lS	Ljava/util/List;
    //   78: invokespecial 122	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   81: astore 7
    //   83: new 124	com/google/android/gms/internal/bx
    //   86: dup
    //   87: new 126	java/util/Date
    //   90: dup
    //   91: aload_3
    //   92: getfield 130	com/google/android/gms/internal/aj:lQ	J
    //   95: invokespecial 133	java/util/Date:<init>	(J)V
    //   98: aload_3
    //   99: getfield 137	com/google/android/gms/internal/aj:lR	I
    //   102: aload 7
    //   104: aload_3
    //   105: getfield 141	com/google/android/gms/internal/aj:lT	Z
    //   108: aload_3
    //   109: getfield 144	com/google/android/gms/internal/aj:lU	I
    //   112: invokespecial 147	com/google/android/gms/internal/bx:<init>	(Ljava/util/Date;ILjava/util/Set;ZI)V
    //   115: astore 10
    //   117: aload 8
    //   119: astore 7
    //   121: aload_3
    //   122: getfield 151	com/google/android/gms/internal/aj:ma	Landroid/os/Bundle;
    //   125: ifnull +20 -> 145
    //   128: aload_3
    //   129: getfield 151	com/google/android/gms/internal/aj:ma	Landroid/os/Bundle;
    //   132: aload 9
    //   134: invokevirtual 101	java/lang/Object:getClass	()Ljava/lang/Class;
    //   137: invokevirtual 154	java/lang/Class:getName	()Ljava/lang/String;
    //   140: invokevirtual 158	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   143: astore 7
    //   145: aload 9
    //   147: aload_1
    //   148: invokestatic 164	com/google/android/gms/dynamic/e:e	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   151: checkcast 166	android/content/Context
    //   154: new 168	com/google/android/gms/internal/bz
    //   157: dup
    //   158: aload 6
    //   160: invokespecial 171	com/google/android/gms/internal/bz:<init>	(Lcom/google/android/gms/internal/bw;)V
    //   163: aload_0
    //   164: aload 4
    //   166: aload_3
    //   167: getfield 144	com/google/android/gms/internal/aj:lU	I
    //   170: aload 5
    //   172: invokespecial 173	com/google/android/gms/internal/by:a	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   175: aload_2
    //   176: getfield 194	com/google/android/gms/internal/am:width	I
    //   179: aload_2
    //   180: getfield 197	com/google/android/gms/internal/am:height	I
    //   183: aload_2
    //   184: getfield 201	com/google/android/gms/internal/am:mc	Ljava/lang/String;
    //   187: invokestatic 206	com/google/android/gms/ads/a:a	(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    //   190: aload 10
    //   192: aload 7
    //   194: invokeinterface 210 7 0
    //   199: return
    //   200: aconst_null
    //   201: astore 7
    //   203: goto -120 -> 83
    //   206: astore_1
    //   207: ldc -44
    //   209: aload_1
    //   210: invokestatic 74	com/google/android/gms/internal/ev:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   213: new 76	android/os/RemoteException
    //   216: dup
    //   217: invokespecial 77	android/os/RemoteException:<init>	()V
    //   220: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	221	0	this	by
    //   0	221	1	paramd	d
    //   0	221	2	paramam	am
    //   0	221	3	paramaj	aj
    //   0	221	4	paramString1	String
    //   0	221	5	paramString2	String
    //   0	221	6	parambw	bw
    //   81	121	7	localObject1	Object
    //   1	117	8	localObject2	Object
    //   61	85	9	localMediationBannerAdapter	MediationBannerAdapter
    //   115	76	10	localbx	bx
    // Exception table:
    //   from	to	target	type
    //   54	83	206	java/lang/Throwable
    //   83	117	206	java/lang/Throwable
    //   121	145	206	java/lang/Throwable
    //   145	199	206	java/lang/Throwable
  }
  
  public final void destroy()
  {
    try
    {
      nQ.onDestroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final d getView()
  {
    if (!(nQ instanceof MediationBannerAdapter))
    {
      ev.D("MediationAdapter is not a MediationBannerAdapter: " + nQ.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      d locald = e.h(((MediationBannerAdapter)nQ).getBannerView());
      return locald;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void pause()
  {
    try
    {
      nQ.onPause();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void resume()
  {
    try
    {
      nQ.onResume();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void showInterstitial()
  {
    if (!(nQ instanceof MediationInterstitialAdapter))
    {
      ev.D("MediationAdapter is not a MediationInterstitialAdapter: " + nQ.getClass().getCanonicalName());
      throw new RemoteException();
    }
    ev.z("Showing interstitial from adapter.");
    try
    {
      ((MediationInterstitialAdapter)nQ).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      ev.c("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */