package com.google.android.gms.plus;

import android.net.Uri;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.people.Person;
import java.util.Collection;

@Deprecated
public class PlusClient
  implements GooglePlayServicesClient
{
  final e abq;
  
  PlusClient(e parame)
  {
    abq = parame;
  }
  
  @Deprecated
  public void clearDefaultAccount()
  {
    abq.clearDefaultAccount();
  }
  
  @Deprecated
  public void connect()
  {
    abq.connect();
  }
  
  @Deprecated
  public void disconnect()
  {
    abq.disconnect();
  }
  
  @Deprecated
  public String getAccountName()
  {
    return abq.getAccountName();
  }
  
  @Deprecated
  public Person getCurrentPerson()
  {
    return abq.getCurrentPerson();
  }
  
  @Deprecated
  public boolean isConnected()
  {
    return abq.isConnected();
  }
  
  @Deprecated
  public boolean isConnecting()
  {
    return abq.isConnecting();
  }
  
  @Deprecated
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return abq.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  @Deprecated
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return abq.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  e jN()
  {
    return abq;
  }
  
  @Deprecated
  public void loadMoments(PlusClient.OnMomentsLoadedListener paramOnMomentsLoadedListener)
  {
    abq.k(new PlusClient.1(this, paramOnMomentsLoadedListener));
  }
  
  @Deprecated
  public void loadMoments(PlusClient.OnMomentsLoadedListener paramOnMomentsLoadedListener, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    abq.a(new PlusClient.2(this, paramOnMomentsLoadedListener), paramInt, paramString1, paramUri, paramString2, paramString3);
  }
  
  @Deprecated
  public void loadPeople(PlusClient.OnPeopleLoadedListener paramOnPeopleLoadedListener, Collection<String> paramCollection)
  {
    abq.a(new PlusClient.5(this, paramOnPeopleLoadedListener), paramCollection);
  }
  
  @Deprecated
  public void loadPeople(PlusClient.OnPeopleLoadedListener paramOnPeopleLoadedListener, String... paramVarArgs)
  {
    abq.d(new PlusClient.6(this, paramOnPeopleLoadedListener), paramVarArgs);
  }
  
  @Deprecated
  public void loadVisiblePeople(PlusClient.OnPeopleLoadedListener paramOnPeopleLoadedListener, int paramInt, String paramString)
  {
    abq.a(new PlusClient.3(this, paramOnPeopleLoadedListener), paramInt, paramString);
  }
  
  @Deprecated
  public void loadVisiblePeople(PlusClient.OnPeopleLoadedListener paramOnPeopleLoadedListener, String paramString)
  {
    abq.r(new PlusClient.4(this, paramOnPeopleLoadedListener), paramString);
  }
  
  @Deprecated
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    abq.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    abq.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void removeMoment(String paramString)
  {
    abq.removeMoment(paramString);
  }
  
  @Deprecated
  public void revokeAccessAndDisconnect(PlusClient.OnAccessRevokedListener paramOnAccessRevokedListener)
  {
    abq.m(new PlusClient.7(this, paramOnAccessRevokedListener));
  }
  
  @Deprecated
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    abq.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    abq.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void writeMoment(Moment paramMoment)
  {
    abq.a(null, paramMoment);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */