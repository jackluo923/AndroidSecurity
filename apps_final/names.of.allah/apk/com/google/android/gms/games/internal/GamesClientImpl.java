package com.google.android.gms.games.internal;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.a;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult;
import com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult;
import com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.games.Notifications.ContactSettingLoadResult;
import com.google.android.gms.games.Notifications.GameMuteStatusChangeResult;
import com.google.android.gms.games.Notifications.GameMuteStatusLoadResult;
import com.google.android.gms.games.Notifications.InboxCountResult;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.games.Players.LoadXpForGameCategoriesResult;
import com.google.android.gms.games.Players.LoadXpStreamResult;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.games.event.Events.LoadEventsResult;
import com.google.android.gms.games.internal.events.EventIncrementManager;
import com.google.android.gms.games.internal.game.Acls.LoadAclResult;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantUtils;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomBuffer;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;
import com.google.android.gms.games.quest.Quests.LoadQuestsResult;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests.LoadRequestSummariesResult;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.SendRequestResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.e;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.hn;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

public final class GamesClientImpl
  extends hc<IGamesService>
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private final String NA;
  EventIncrementManager Nm = new GamesClientImpl.1(this);
  private final String Nn;
  private final Map<String, RealTimeSocket> No;
  private PlayerEntity Np;
  private GameEntity Nq;
  private final PopupManager Nr;
  private boolean Ns = false;
  private boolean Nt = false;
  private int Nu;
  private final Binder Nv;
  private final long Nw;
  private final boolean Nx;
  private final int Ny;
  private final boolean Nz;
  private final String yN;
  
  public GamesClientImpl(Context paramContext, Looper paramLooper, String paramString1, String paramString2, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String[] paramArrayOfString, int paramInt1, View paramView, boolean paramBoolean1, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, int paramInt3, String paramString3)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramArrayOfString);
    Nn = paramString1;
    yN = ((String)hn.f(paramString2));
    Nv = new Binder();
    No = new HashMap();
    Nr = PopupManager.a(this, paramInt1);
    f(paramView);
    Nt = paramBoolean2;
    Nu = paramInt2;
    Nw = hashCode();
    Nx = paramBoolean1;
    Nz = paramBoolean3;
    Ny = paramInt3;
    NA = paramString3;
    registerConnectionCallbacks(this);
    registerConnectionFailedListener(this);
  }
  
  private Room Q(DataHolder paramDataHolder)
  {
    RoomBuffer localRoomBuffer = new RoomBuffer(paramDataHolder);
    paramDataHolder = null;
    try
    {
      if (localRoomBuffer.getCount() > 0) {
        paramDataHolder = (Room)((Room)localRoomBuffer.get(0)).freeze();
      }
      return paramDataHolder;
    }
    finally
    {
      localRoomBuffer.close();
    }
  }
  
  /* Error */
  private RealTimeSocket aT(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 150	com/google/android/gms/games/internal/GamesClientImpl:fo	()Landroid/os/IInterface;
    //   4: checkcast 152	com/google/android/gms/games/internal/IGamesService
    //   7: aload_1
    //   8: invokeinterface 156 2 0
    //   13: astore_2
    //   14: aload_2
    //   15: ifnull +33 -> 48
    //   18: ldc -98
    //   20: ldc -96
    //   22: invokestatic 166	com/google/android/gms/games/internal/GamesLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: new 168	com/google/android/gms/games/internal/LibjingleNativeSocket
    //   28: dup
    //   29: aload_2
    //   30: invokespecial 171	com/google/android/gms/games/internal/LibjingleNativeSocket:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 76	com/google/android/gms/games/internal/GamesClientImpl:No	Ljava/util/Map;
    //   38: aload_1
    //   39: aload_2
    //   40: invokeinterface 177 3 0
    //   45: pop
    //   46: aload_2
    //   47: areturn
    //   48: ldc -98
    //   50: ldc -77
    //   52: invokestatic 166	com/google/android/gms/games/internal/GamesLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: aload_0
    //   56: invokevirtual 150	com/google/android/gms/games/internal/GamesClientImpl:fo	()Landroid/os/IInterface;
    //   59: checkcast 152	com/google/android/gms/games/internal/IGamesService
    //   62: aload_1
    //   63: invokeinterface 183 2 0
    //   68: astore_2
    //   69: aload_2
    //   70: ifnonnull +5 -> 75
    //   73: aconst_null
    //   74: areturn
    //   75: new 185	android/net/LocalSocket
    //   78: dup
    //   79: invokespecial 186	android/net/LocalSocket:<init>	()V
    //   82: astore_3
    //   83: aload_3
    //   84: new 188	android/net/LocalSocketAddress
    //   87: dup
    //   88: aload_2
    //   89: invokespecial 191	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;)V
    //   92: invokevirtual 195	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   95: new 197	com/google/android/gms/games/internal/RealTimeSocketImpl
    //   98: dup
    //   99: aload_3
    //   100: aload_1
    //   101: invokespecial 200	com/google/android/gms/games/internal/RealTimeSocketImpl:<init>	(Landroid/net/LocalSocket;Ljava/lang/String;)V
    //   104: astore_2
    //   105: aload_0
    //   106: getfield 76	com/google/android/gms/games/internal/GamesClientImpl:No	Ljava/util/Map;
    //   109: aload_1
    //   110: aload_2
    //   111: invokeinterface 177 3 0
    //   116: pop
    //   117: aload_2
    //   118: areturn
    //   119: astore_1
    //   120: ldc -98
    //   122: ldc -54
    //   124: invokestatic 205	com/google/android/gms/games/internal/GamesLog:k	(Ljava/lang/String;Ljava/lang/String;)V
    //   127: aconst_null
    //   128: areturn
    //   129: astore_1
    //   130: ldc -98
    //   132: new 207	java/lang/StringBuilder
    //   135: dup
    //   136: ldc -47
    //   138: invokespecial 210	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   141: aload_1
    //   142: invokevirtual 214	java/io/IOException:getMessage	()Ljava/lang/String;
    //   145: invokevirtual 218	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 205	com/google/android/gms/games/internal/GamesLog:k	(Ljava/lang/String;Ljava/lang/String;)V
    //   154: aconst_null
    //   155: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	GamesClientImpl
    //   0	156	1	paramString	String
    //   13	105	2	localObject	Object
    //   82	18	3	localLocalSocket	android.net.LocalSocket
    // Exception table:
    //   from	to	target	type
    //   0	14	119	android/os/RemoteException
    //   18	46	119	android/os/RemoteException
    //   48	69	119	android/os/RemoteException
    //   75	83	119	android/os/RemoteException
    //   83	95	119	android/os/RemoteException
    //   95	117	119	android/os/RemoteException
    //   130	154	119	android/os/RemoteException
    //   83	95	129	java/io/IOException
  }
  
  private void gT()
  {
    Np = null;
  }
  
  private void hq()
  {
    Iterator localIterator = No.values().iterator();
    while (localIterator.hasNext())
    {
      RealTimeSocket localRealTimeSocket = (RealTimeSocket)localIterator.next();
      try
      {
        localRealTimeSocket.close();
      }
      catch (IOException localIOException)
      {
        GamesLog.b("GamesClientImpl", "IOException:", localIOException);
      }
    }
    No.clear();
  }
  
  public final int a(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      int i = ((IGamesService)fo()).a(new GamesClientImpl.RealTimeReliableMessageBinderCallbacks(this, paramReliableMessageSentCallback), paramArrayOfByte, paramString1, paramString2);
      return i;
    }
    catch (RemoteException paramReliableMessageSentCallback)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final int a(byte[] paramArrayOfByte, String paramString, String[] paramArrayOfString)
  {
    hn.b(paramArrayOfString, "Participant IDs must not be null");
    try
    {
      int i = ((IGamesService)fo()).b(paramArrayOfByte, paramString, paramArrayOfString);
      return i;
    }
    catch (RemoteException paramArrayOfByte)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final Intent a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).a(paramInt1, paramInt2, paramBoolean);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, Bitmap paramBitmap, String paramString)
  {
    try
    {
      paramArrayOfByte = ((IGamesService)fo()).a(paramInt1, paramArrayOfByte, paramInt2, paramString);
      hn.b(paramBitmap, "Must provide a non null icon");
      paramArrayOfByte.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", paramBitmap);
      return paramArrayOfByte;
    }
    catch (RemoteException paramArrayOfByte)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent a(Room paramRoom, int paramInt)
  {
    try
    {
      paramRoom = ((IGamesService)fo()).a((RoomEntity)paramRoom.freeze(), paramInt);
      return paramRoom;
    }
    catch (RemoteException paramRoom)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent a(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    try
    {
      paramString = ((IGamesService)fo()).a(paramString, paramBoolean1, paramBoolean2, paramInt);
      return paramString;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent a(int[] paramArrayOfInt)
  {
    try
    {
      paramArrayOfInt = ((IGamesService)fo()).a(paramArrayOfInt);
      return paramArrayOfInt;
    }
    catch (RemoteException paramArrayOfInt)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  protected final void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    if ((paramInt == 0) && (paramBundle != null)) {
      Ns = paramBundle.getBoolean("show_welcome_popup");
    }
    super.a(paramInt, paramIBinder, paramBundle);
  }
  
  public final void a(IBinder paramIBinder, Bundle paramBundle)
  {
    if (isConnected()) {}
    try
    {
      ((IGamesService)fo()).a(paramIBinder, paramBundle);
      return;
    }
    catch (RemoteException paramIBinder)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Requests.LoadRequestsResult> paramd, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestsLoadedBinderCallbacks(this, paramd), paramInt1, paramInt2, paramInt3);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramInt1, paramInt2, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.LoadMatchesResult> paramd, int paramInt, int[] paramArrayOfInt)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.TurnBasedMatchesLoadedBinderCallbacks(this, paramd), paramInt, paramArrayOfInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.LoadScoresResult> paramd, LeaderboardScoreBuffer paramLeaderboardScoreBuffer, int paramInt1, int paramInt2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.LeaderboardScoresLoadedBinderCallback(this, paramd), paramLeaderboardScoreBuffer.iv().iw(), paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd, TurnBasedMatchConfig paramTurnBasedMatchConfig)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks(this, paramd), paramTurnBasedMatchConfig.getVariant(), paramTurnBasedMatchConfig.iC(), paramTurnBasedMatchConfig.getInvitedPlayerIds(), paramTurnBasedMatchConfig.getAutoMatchCriteria());
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Snapshots.CommitSnapshotResult> paramd, Snapshot paramSnapshot, SnapshotMetadataChange paramSnapshotMetadataChange)
  {
    Contents localContents = paramSnapshot.getContents();
    hn.b(localContents, "Must provide a previously opened Snapshot");
    a locala = paramSnapshotMetadataChange.iI();
    if (locala != null) {
      locala.a(getContext().getCacheDir());
    }
    paramSnapshot.iH();
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.SnapshotCommittedBinderCallbacks(this, paramd), paramSnapshot.getMetadata().getSnapshotId(), paramSnapshotMetadataChange, localContents);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Achievements.UpdateAchievementResult> paramd, String paramString, int paramInt)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new GamesClientImpl.AchievementUpdatedBinderCallback(this, paramd)) {
      try
      {
        ((IGamesService)fo()).a(paramd, paramString, paramInt, Nr.hI(), Nr.hH());
        return;
      }
      catch (RemoteException paramd)
      {
        GamesLog.j("GamesClientImpl", "service died");
      }
    }
  }
  
  public final void a(a.d<Leaderboards.LoadScoresResult> paramd, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.LeaderboardScoresLoadedBinderCallback(this, paramd), paramString, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, String paramString, int paramInt, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramString.equals("played_with")) {
      throw new IllegalArgumentException("Invalid player collection: " + paramString);
    }
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.LoadMatchesResult> paramd, String paramString, int paramInt, int[] paramArrayOfInt)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.TurnBasedMatchesLoadedBinderCallbacks(this, paramd), paramString, paramInt, paramArrayOfInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.SubmitScoreResult> paramd, String paramString1, long paramLong, String paramString2)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new GamesClientImpl.SubmitScoreBinderCallbacks(this, paramd)) {
      try
      {
        ((IGamesService)fo()).a(paramd, paramString1, paramLong, paramString2);
        return;
      }
      catch (RemoteException paramd)
      {
        GamesLog.j("GamesClientImpl", "service died");
      }
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.LeaveMatchResult> paramd, String paramString1, String paramString2)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.TurnBasedMatchLeftBinderCallbacks(this, paramd), paramString1, paramString2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.LoadPlayerScoreResult> paramd, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.PlayerLeaderboardScoreLoadedBinderCallback(this, paramd), paramString1, paramString2, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Requests.LoadRequestsResult> paramd, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestsLoadedBinderCallbacks(this, paramd), paramString1, paramString2, paramInt1, paramInt2, paramInt3);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.LoadScoresResult> paramd, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.LeaderboardScoresLoadedBinderCallback(this, paramd), paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!paramString1.equals("played_with")) && (!paramString1.equals("circled"))) {
      throw new IllegalArgumentException("Invalid player collection: " + paramString1);
    }
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString1, paramString2, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Snapshots.OpenSnapshotResult> paramd, String paramString1, String paramString2, SnapshotMetadataChange paramSnapshotMetadataChange, Contents paramContents)
  {
    a locala = paramSnapshotMetadataChange.iI();
    if (locala != null) {
      locala.a(getContext().getCacheDir());
    }
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.SnapshotOpenedBinderCallbacks(this, paramd), paramString1, paramString2, paramSnapshotMetadataChange, paramContents);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.LeaderboardMetadataResult> paramd, String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.LeaderboardsLoadedBinderCallback(this, paramd), paramString1, paramString2, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Quests.LoadQuestsResult> paramd, String paramString1, String paramString2, boolean paramBoolean, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.QuestsLoadedBinderCallbacks(this, paramd), paramString1, paramString2, paramArrayOfString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Quests.LoadQuestsResult> paramd, String paramString1, String paramString2, int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.QuestsLoadedBinderCallbacks(this, paramd), paramString1, paramString2, paramArrayOfInt, paramInt, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Requests.UpdateRequestsResult> paramd, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestsUpdatedBinderCallbacks(this, paramd), paramString1, paramString2, paramArrayOfString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Leaderboards.LeaderboardMetadataResult> paramd, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.LeaderboardsLoadedBinderCallback(this, paramd), paramString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.UpdateMatchResult> paramd, String paramString1, byte[] paramArrayOfByte, String paramString2, ParticipantResult[] paramArrayOfParticipantResult)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.TurnBasedMatchUpdatedBinderCallbacks(this, paramd), paramString1, paramArrayOfByte, paramString2, paramArrayOfParticipantResult);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<TurnBasedMultiplayer.UpdateMatchResult> paramd, String paramString, byte[] paramArrayOfByte, ParticipantResult[] paramArrayOfParticipantResult)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.TurnBasedMatchUpdatedBinderCallbacks(this, paramd), paramString, paramArrayOfByte, paramArrayOfParticipantResult);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Requests.SendRequestResult> paramd, String paramString, String[] paramArrayOfString, int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestSentBinderCallbacks(this, paramd), paramString, paramArrayOfString, paramInt1, paramArrayOfByte, paramInt2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Status> paramd, boolean paramBoolean, Bundle paramBundle)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.ContactSettingsUpdatedBinderCallback(this, paramd), paramBoolean, paramBundle);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Events.LoadEventsResult> paramd, boolean paramBoolean, String... paramVarArgs)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).a(new GamesClientImpl.EventsLoadedBinderCallback(this, paramd), paramBoolean, paramVarArgs);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Quests.LoadQuestsResult> paramd, int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).a(new GamesClientImpl.QuestsLoadedBinderCallbacks(this, paramd), paramArrayOfInt, paramInt, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(a.d<Players.LoadPlayersResult> paramd, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramArrayOfString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(OnInvitationReceivedListener paramOnInvitationReceivedListener)
  {
    try
    {
      paramOnInvitationReceivedListener = new GamesClientImpl.InvitationReceivedBinderCallback(this, paramOnInvitationReceivedListener);
      ((IGamesService)fo()).a(paramOnInvitationReceivedListener, Nw);
      return;
    }
    catch (RemoteException paramOnInvitationReceivedListener)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(RoomConfig paramRoomConfig)
  {
    try
    {
      GamesClientImpl.RoomBinderCallbacks localRoomBinderCallbacks = new GamesClientImpl.RoomBinderCallbacks(this, paramRoomConfig.getRoomUpdateListener(), paramRoomConfig.getRoomStatusUpdateListener(), paramRoomConfig.getMessageReceivedListener());
      ((IGamesService)fo()).a(localRoomBinderCallbacks, Nv, paramRoomConfig.getVariant(), paramRoomConfig.getInvitedPlayerIds(), paramRoomConfig.getAutoMatchCriteria(), paramRoomConfig.isSocketEnabled(), Nw);
      return;
    }
    catch (RemoteException paramRoomConfig)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(RoomUpdateListener paramRoomUpdateListener, String paramString)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.RoomBinderCallbacks(this, paramRoomUpdateListener), paramString);
      hq();
      return;
    }
    catch (RemoteException paramRoomUpdateListener)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    try
    {
      paramOnTurnBasedMatchUpdateReceivedListener = new GamesClientImpl.MatchUpdateReceivedBinderCallback(this, paramOnTurnBasedMatchUpdateReceivedListener);
      ((IGamesService)fo()).b(paramOnTurnBasedMatchUpdateReceivedListener, Nw);
      return;
    }
    catch (RemoteException paramOnTurnBasedMatchUpdateReceivedListener)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(QuestUpdateListener paramQuestUpdateListener)
  {
    try
    {
      paramQuestUpdateListener = new GamesClientImpl.QuestUpdateBinderCallback(this, paramQuestUpdateListener);
      ((IGamesService)fo()).d(paramQuestUpdateListener, Nw);
      return;
    }
    catch (RemoteException paramQuestUpdateListener)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    try
    {
      paramOnRequestReceivedListener = new GamesClientImpl.RequestReceivedBinderCallback(this, paramOnRequestReceivedListener);
      ((IGamesService)fo()).c(paramOnRequestReceivedListener, Nw);
      return;
    }
    catch (RemoteException paramOnRequestReceivedListener)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void a(Snapshot paramSnapshot)
  {
    Contents localContents = paramSnapshot.getContents();
    hn.b(localContents, "Must provide a previously opened Snapshot");
    paramSnapshot.iH();
    try
    {
      ((IGamesService)fo()).a(localContents);
      return;
    }
    catch (RemoteException paramSnapshot)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  protected final void a(hj paramhj, hc.e parame)
  {
    String str = getContextgetResourcesgetConfigurationlocale.toString();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("com.google.android.gms.games.key.isHeadless", Nx);
    localBundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", Nt);
    localBundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", Nu);
    localBundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", Nz);
    localBundle.putInt("com.google.android.gms.games.key.sdkVariant", Ny);
    localBundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", NA);
    paramhj.a(parame, 5077000, getContext().getPackageName(), yN, fn(), Nn, Nr.hI(), str, localBundle);
  }
  
  public final Intent aR(String paramString)
  {
    try
    {
      paramString = ((IGamesService)fo()).aR(paramString);
      return paramString;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final void aS(String paramString)
  {
    try
    {
      ((IGamesService)fo()).ba(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final Intent aU(String paramString)
  {
    try
    {
      paramString = ((IGamesService)fo()).aU(paramString);
      return paramString;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  protected final IGamesService ah(IBinder paramIBinder)
  {
    return IGamesService.Stub.aj(paramIBinder);
  }
  
  public final Intent b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).b(paramInt1, paramInt2, paramBoolean);
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final void b(a.d<Status> paramd)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).a(new GamesClientImpl.SignOutCompleteBinderCallbacks(this, paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Players.LoadPlayersResult> paramd, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Achievements.UpdateAchievementResult> paramd, String paramString)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new GamesClientImpl.AchievementUpdatedBinderCallback(this, paramd)) {
      try
      {
        ((IGamesService)fo()).a(paramd, paramString, Nr.hI(), Nr.hH());
        return;
      }
      catch (RemoteException paramd)
      {
        GamesLog.j("GamesClientImpl", "service died");
      }
    }
  }
  
  public final void b(a.d<Achievements.UpdateAchievementResult> paramd, String paramString, int paramInt)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new GamesClientImpl.AchievementUpdatedBinderCallback(this, paramd)) {
      try
      {
        ((IGamesService)fo()).b(paramd, paramString, paramInt, Nr.hI(), Nr.hH());
        return;
      }
      catch (RemoteException paramd)
      {
        GamesLog.j("GamesClientImpl", "service died");
      }
    }
  }
  
  public final void b(a.d<Leaderboards.LoadScoresResult> paramd, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.LeaderboardScoresLoadedBinderCallback(this, paramd), paramString, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Quests.ClaimMilestoneResult> paramd, String paramString1, String paramString2)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).f(new GamesClientImpl.QuestMilestoneClaimBinderCallbacks(this, paramd, paramString2), paramString1, paramString2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Leaderboards.LoadScoresResult> paramd, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.LeaderboardScoresLoadedBinderCallback(this, paramd), paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Achievements.LoadAchievementsResult> paramd, String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.AchievementsLoadedBinderCallback(this, paramd), paramString1, paramString2, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Snapshots.OpenSnapshotResult> paramd, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.SnapshotOpenedBinderCallbacks(this, paramd), paramString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Leaderboards.LeaderboardMetadataResult> paramd, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.LeaderboardsLoadedBinderCallback(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Quests.LoadQuestsResult> paramd, boolean paramBoolean, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.QuestsLoadedBinderCallbacks(this, paramd), paramArrayOfString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(a.d<Requests.UpdateRequestsResult> paramd, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestsUpdatedBinderCallbacks(this, paramd), paramArrayOfString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void b(RoomConfig paramRoomConfig)
  {
    try
    {
      GamesClientImpl.RoomBinderCallbacks localRoomBinderCallbacks = new GamesClientImpl.RoomBinderCallbacks(this, paramRoomConfig.getRoomUpdateListener(), paramRoomConfig.getRoomStatusUpdateListener(), paramRoomConfig.getMessageReceivedListener());
      ((IGamesService)fo()).a(localRoomBinderCallbacks, Nv, paramRoomConfig.getInvitationId(), paramRoomConfig.isSocketEnabled(), Nw);
      return;
    }
    catch (RemoteException paramRoomConfig)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  protected final void b(String... paramVarArgs)
  {
    int i = 0;
    int j = 0;
    boolean bool1 = false;
    if (i < paramVarArgs.length)
    {
      String str = paramVarArgs[i];
      boolean bool2;
      if (str.equals("https://www.googleapis.com/auth/games")) {
        bool2 = true;
      }
      for (;;)
      {
        i += 1;
        bool1 = bool2;
        break;
        bool2 = bool1;
        if (str.equals("https://www.googleapis.com/auth/games.firstparty"))
        {
          j = 1;
          bool2 = bool1;
        }
      }
    }
    if (j != 0)
    {
      if (!bool1) {}
      for (bool1 = true;; bool1 = false)
      {
        hn.a(bool1, "Cannot have both %s and %s!", new Object[] { "https://www.googleapis.com/auth/games", "https://www.googleapis.com/auth/games.firstparty" });
        return;
      }
    }
    hn.a(bool1, "Games APIs requires %s to function.", new Object[] { "https://www.googleapis.com/auth/games" });
  }
  
  protected final String bp()
  {
    return "com.google.android.gms.games.service.START";
  }
  
  protected final String bq()
  {
    return "com.google.android.gms.games.internal.IGamesService";
  }
  
  public final void c(a.d<Invitations.LoadInvitationsResult> paramd, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.InvitationsLoadedBinderCallback(this, paramd), paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Players.LoadPlayersResult> paramd, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Achievements.UpdateAchievementResult> paramd, String paramString)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new GamesClientImpl.AchievementUpdatedBinderCallback(this, paramd)) {
      try
      {
        ((IGamesService)fo()).b(paramd, paramString, Nr.hI(), Nr.hH());
        return;
      }
      catch (RemoteException paramd)
      {
        GamesLog.j("GamesClientImpl", "service died");
      }
    }
  }
  
  public final void c(a.d<Players.LoadXpStreamResult> paramd, String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.PlayerXpStreamLoadedBinderCallback(this, paramd), paramString, paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd, String paramString1, String paramString2)
  {
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks(this, paramd), paramString1, paramString2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Snapshots.LoadSnapshotsResult> paramd, String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.SnapshotsLoadedBinderCallbacks(this, paramd), paramString1, paramString2, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Leaderboards.LeaderboardMetadataResult> paramd, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.LeaderboardsLoadedBinderCallback(this, paramd), paramString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Achievements.LoadAchievementsResult> paramd, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.AchievementsLoadedBinderCallback(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void c(a.d<Requests.UpdateRequestsResult> paramd, String[] paramArrayOfString)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.RequestsUpdatedBinderCallbacks(this, paramd), paramArrayOfString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void cg(int paramInt)
  {
    Nr.setGravity(paramInt);
  }
  
  public final void ch(int paramInt)
  {
    try
    {
      ((IGamesService)fo()).ch(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void connect()
  {
    Np = null;
    super.connect();
  }
  
  public final int d(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      int i = ((IGamesService)fo()).b(paramArrayOfByte, paramString, null);
      return i;
    }
    catch (RemoteException paramArrayOfByte)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final void d(a.d<Players.LoadPlayersResult> paramd, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).l(new GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<Players.LoadXpStreamResult> paramd, String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.PlayerXpStreamLoadedBinderCallback(this, paramd), paramString, paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).f(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd, String paramString1, String paramString2)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks(this, paramd), paramString1, paramString2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<Notifications.GameMuteStatusChangeResult> paramd, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.GameMuteStatusChangedBinderCallback(this, paramd), paramString, paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void d(a.d<Events.LoadEventsResult> paramd, boolean paramBoolean)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).f(new GamesClientImpl.EventsLoadedBinderCallback(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void disconnect()
  {
    Ns = false;
    if (isConnected()) {}
    try
    {
      IGamesService localIGamesService = (IGamesService)fo();
      localIGamesService.hr();
      Nm.flush();
      localIGamesService.q(Nw);
      hq();
      super.disconnect();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        GamesLog.j("GamesClientImpl", "Failed to notify client disconnect.");
      }
    }
  }
  
  public final void e(a.d<Players.LoadPlayersResult> paramd, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void e(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).m(new GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void e(a.d<Invitations.LoadInvitationsResult> paramd, String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.InvitationsLoadedBinderCallback(this, paramd), paramString, paramInt, false);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void e(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).c(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void e(a.d<Snapshots.LoadSnapshotsResult> paramd, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.SnapshotsLoadedBinderCallbacks(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final Bundle ea()
  {
    try
    {
      Bundle localBundle = ((IGamesService)fo()).ea();
      if (localBundle != null) {
        localBundle.setClassLoader(GamesClientImpl.class.getClassLoader());
      }
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final void f(View paramView)
  {
    Nr.g(paramView);
  }
  
  public final void f(a.d<GamesMetadata.LoadGamesResult> paramd)
  {
    try
    {
      ((IGamesService)fo()).d(new GamesClientImpl.GamesLoadedBinderCallback(this, paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void f(a.d<TurnBasedMultiplayer.LeaveMatchResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).o(new GamesClientImpl.TurnBasedMatchLeftBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void f(a.d<Requests.LoadRequestSummariesResult> paramd, String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).a(new GamesClientImpl.RequestSummariesLoadedBinderCallbacks(this, paramd), paramString, paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void f(a.d<Players.LoadPlayersResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void f(a.d<Notifications.ContactSettingLoadResult> paramd, boolean paramBoolean)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.ContactSettingsLoadedBinderCallback(this, paramd), paramBoolean);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void g(a.d<Players.LoadOwnerCoverPhotoUrisResult> paramd)
  {
    try
    {
      ((IGamesService)fo()).j(new GamesClientImpl.OwnerCoverPhotoUrisLoadedBinderCallback(this, paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void g(a.d<TurnBasedMultiplayer.CancelMatchResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).n(new GamesClientImpl.TurnBasedMatchCanceledBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void g(a.d<Players.LoadPlayersResult> paramd, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      ((IGamesService)fo()).b(new GamesClientImpl.PlayersLoadedBinderCallback(this, paramd), paramString, null, paramInt, paramBoolean1, paramBoolean2);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final String gU()
  {
    try
    {
      String str = ((IGamesService)fo()).gU();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final String gV()
  {
    try
    {
      String str = ((IGamesService)fo()).gV();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  /* Error */
  public final com.google.android.gms.games.Player gW()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 1033	com/google/android/gms/games/internal/GamesClientImpl:ci	()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 224	com/google/android/gms/games/internal/GamesClientImpl:Np	Lcom/google/android/gms/games/PlayerEntity;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnonnull +51 -> 63
    //   15: new 1035	com/google/android/gms/games/PlayerBuffer
    //   18: dup
    //   19: aload_0
    //   20: invokevirtual 150	com/google/android/gms/games/internal/GamesClientImpl:fo	()Landroid/os/IInterface;
    //   23: checkcast 152	com/google/android/gms/games/internal/IGamesService
    //   26: invokeinterface 1039 1 0
    //   31: invokespecial 1040	com/google/android/gms/games/PlayerBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 1041	com/google/android/gms/games/PlayerBuffer:getCount	()I
    //   39: ifle +20 -> 59
    //   42: aload_0
    //   43: aload_1
    //   44: iconst_0
    //   45: invokevirtual 1044	com/google/android/gms/games/PlayerBuffer:get	(I)Lcom/google/android/gms/games/Player;
    //   48: invokeinterface 1047 1 0
    //   53: checkcast 1049	com/google/android/gms/games/PlayerEntity
    //   56: putfield 224	com/google/android/gms/games/internal/GamesClientImpl:Np	Lcom/google/android/gms/games/PlayerEntity;
    //   59: aload_1
    //   60: invokevirtual 1050	com/google/android/gms/games/PlayerBuffer:close	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 224	com/google/android/gms/games/internal/GamesClientImpl:Np	Lcom/google/android/gms/games/PlayerEntity;
    //   69: areturn
    //   70: astore_2
    //   71: aload_1
    //   72: invokevirtual 1050	com/google/android/gms/games/PlayerBuffer:close	()V
    //   75: aload_2
    //   76: athrow
    //   77: astore_1
    //   78: ldc -98
    //   80: ldc_w 267
    //   83: invokestatic 270	com/google/android/gms/games/internal/GamesLog:j	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: goto -23 -> 63
    //   89: astore_1
    //   90: aload_0
    //   91: monitorexit
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	GamesClientImpl
    //   10	62	1	localObject1	Object
    //   77	1	1	localRemoteException	RemoteException
    //   89	4	1	localObject2	Object
    //   70	6	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   35	59	70	finally
    //   15	35	77	android/os/RemoteException
    //   59	63	77	android/os/RemoteException
    //   71	77	77	android/os/RemoteException
    //   6	11	89	finally
    //   15	35	89	finally
    //   59	63	89	finally
    //   63	65	89	finally
    //   71	77	89	finally
    //   78	86	89	finally
  }
  
  /* Error */
  public final com.google.android.gms.games.Game gX()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 1033	com/google/android/gms/games/internal/GamesClientImpl:ci	()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 1054	com/google/android/gms/games/internal/GamesClientImpl:Nq	Lcom/google/android/gms/games/GameEntity;
    //   10: astore_1
    //   11: aload_1
    //   12: ifnonnull +51 -> 63
    //   15: new 1056	com/google/android/gms/games/GameBuffer
    //   18: dup
    //   19: aload_0
    //   20: invokevirtual 150	com/google/android/gms/games/internal/GamesClientImpl:fo	()Landroid/os/IInterface;
    //   23: checkcast 152	com/google/android/gms/games/internal/IGamesService
    //   26: invokeinterface 1059 1 0
    //   31: invokespecial 1060	com/google/android/gms/games/GameBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 1061	com/google/android/gms/games/GameBuffer:getCount	()I
    //   39: ifle +20 -> 59
    //   42: aload_0
    //   43: aload_1
    //   44: iconst_0
    //   45: invokevirtual 1064	com/google/android/gms/games/GameBuffer:get	(I)Lcom/google/android/gms/games/Game;
    //   48: invokeinterface 1067 1 0
    //   53: checkcast 1069	com/google/android/gms/games/GameEntity
    //   56: putfield 1054	com/google/android/gms/games/internal/GamesClientImpl:Nq	Lcom/google/android/gms/games/GameEntity;
    //   59: aload_1
    //   60: invokevirtual 1070	com/google/android/gms/games/GameBuffer:close	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 1054	com/google/android/gms/games/internal/GamesClientImpl:Nq	Lcom/google/android/gms/games/GameEntity;
    //   69: areturn
    //   70: astore_2
    //   71: aload_1
    //   72: invokevirtual 1070	com/google/android/gms/games/GameBuffer:close	()V
    //   75: aload_2
    //   76: athrow
    //   77: astore_1
    //   78: ldc -98
    //   80: ldc_w 267
    //   83: invokestatic 270	com/google/android/gms/games/internal/GamesLog:j	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: goto -23 -> 63
    //   89: astore_1
    //   90: aload_0
    //   91: monitorexit
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	GamesClientImpl
    //   10	62	1	localObject1	Object
    //   77	1	1	localRemoteException	RemoteException
    //   89	4	1	localObject2	Object
    //   70	6	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   35	59	70	finally
    //   15	35	77	android/os/RemoteException
    //   59	63	77	android/os/RemoteException
    //   71	77	77	android/os/RemoteException
    //   6	11	89	finally
    //   15	35	89	finally
    //   59	63	89	finally
    //   63	65	89	finally
    //   71	77	89	finally
    //   78	86	89	finally
  }
  
  public final Intent gY()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).gY();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent gZ()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).gZ();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final void h(a.d<Acls.LoadAclResult> paramd)
  {
    try
    {
      ((IGamesService)fo()).h(new GamesClientImpl.NotifyAclLoadedBinderCallback(this, paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void h(a.d<TurnBasedMultiplayer.LoadMatchResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).p(new GamesClientImpl.TurnBasedMatchLoadedBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final Intent ha()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).ha();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent hb()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).hb();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final void hc()
  {
    try
    {
      ((IGamesService)fo()).r(Nw);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void hd()
  {
    try
    {
      ((IGamesService)fo()).s(Nw);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void he()
  {
    try
    {
      ((IGamesService)fo()).u(Nw);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void hf()
  {
    try
    {
      ((IGamesService)fo()).t(Nw);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final Intent hg()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).hg();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final Intent hh()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).hh();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final int hi()
  {
    try
    {
      int i = ((IGamesService)fo()).hi();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return 4368;
  }
  
  public final String hj()
  {
    try
    {
      String str = ((IGamesService)fo()).hj();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final int hk()
  {
    try
    {
      int i = ((IGamesService)fo()).hk();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final Intent hl()
  {
    try
    {
      Intent localIntent = ((IGamesService)fo()).hl();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return null;
  }
  
  public final int hm()
  {
    try
    {
      int i = ((IGamesService)fo()).hm();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final int hn()
  {
    try
    {
      int i = ((IGamesService)fo()).hn();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final int ho()
  {
    try
    {
      int i = ((IGamesService)fo()).ho();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final int hp()
  {
    try
    {
      int i = ((IGamesService)fo()).hp();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
    return -1;
  }
  
  public final void hr()
  {
    if (isConnected()) {}
    try
    {
      ((IGamesService)fo()).hr();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  @Deprecated
  public final void i(a.d<Notifications.ContactSettingLoadResult> paramd)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.ContactSettingsLoadedBinderCallback(this, paramd), false);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void i(a.d<Quests.AcceptQuestResult> paramd, String paramString)
  {
    try
    {
      Nm.flush();
      ((IGamesService)fo()).u(new GamesClientImpl.QuestAcceptedBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void j(a.d<Notifications.InboxCountResult> paramd)
  {
    try
    {
      ((IGamesService)fo()).t(new GamesClientImpl.InboxCountsLoadedBinderCallback(this, paramd), null);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void j(a.d<Snapshots.DeleteSnapshotResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).r(new GamesClientImpl.SnapshotDeletedBinderCallbacks(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void k(a.d<GamesMetadata.LoadExtendedGamesResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).e(new GamesClientImpl.ExtendedGamesLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final RealTimeSocket l(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (!ParticipantUtils.bn(paramString2))) {
      throw new IllegalArgumentException("Bad participant ID");
    }
    RealTimeSocket localRealTimeSocket = (RealTimeSocket)No.get(paramString2);
    if (localRealTimeSocket != null)
    {
      paramString1 = localRealTimeSocket;
      if (!localRealTimeSocket.isClosed()) {}
    }
    else
    {
      paramString1 = aT(paramString2);
    }
    return paramString1;
  }
  
  public final void l(a.d<GamesMetadata.LoadGameInstancesResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).f(new GamesClientImpl.GameInstancesLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void l(String paramString, int paramInt)
  {
    Nm.l(paramString, paramInt);
  }
  
  public final void m(a.d<GamesMetadata.LoadGameSearchSuggestionsResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).q(new GamesClientImpl.GameSearchSuggestionsLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void m(String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).m(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void n(a.d<Players.LoadXpForGameCategoriesResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).s(new GamesClientImpl.PlayerXpForGameCategoriesLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void n(String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)fo()).n(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void o(a.d<Invitations.LoadInvitationsResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).k(new GamesClientImpl.InvitationsLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void onConnected(Bundle paramBundle)
  {
    if (Ns)
    {
      Nr.hG();
      Ns = false;
    }
  }
  
  public final void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    Ns = false;
  }
  
  public final void onConnectionSuspended(int paramInt) {}
  
  public final void p(a.d<Status> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).j(new GamesClientImpl.NotifyAclUpdatedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
  
  public final void q(a.d<Notifications.GameMuteStatusLoadResult> paramd, String paramString)
  {
    try
    {
      ((IGamesService)fo()).i(new GamesClientImpl.GameMuteStatusLoadedBinderCallback(this, paramd), paramString);
      return;
    }
    catch (RemoteException paramd)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */