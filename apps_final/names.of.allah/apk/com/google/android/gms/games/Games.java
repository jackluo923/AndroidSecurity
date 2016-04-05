package com.google.android.gms.games;

import android.content.Intent;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.AchievementsImpl;
import com.google.android.gms.games.internal.api.AclsImpl;
import com.google.android.gms.games.internal.api.EventsImpl;
import com.google.android.gms.games.internal.api.GamesMetadataImpl;
import com.google.android.gms.games.internal.api.InvitationsImpl;
import com.google.android.gms.games.internal.api.LeaderboardsImpl;
import com.google.android.gms.games.internal.api.MultiplayerImpl;
import com.google.android.gms.games.internal.api.NotificationsImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.internal.api.QuestsImpl;
import com.google.android.gms.games.internal.api.RealTimeMultiplayerImpl;
import com.google.android.gms.games.internal.api.RequestsImpl;
import com.google.android.gms.games.internal.api.SnapshotsImpl;
import com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl;
import com.google.android.gms.games.internal.game.Acls;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.internal.hn;

public final class Games
{
  public static final Api<Games.GamesOptions> API;
  public static final Achievements Achievements;
  public static final String EXTRA_PLAYER_IDS = "players";
  public static final Events Events;
  public static final GamesMetadata GamesMetadata;
  public static final Invitations Invitations;
  public static final Leaderboards Leaderboards;
  public static final Scope MF;
  public static final Api<Games.GamesOptions> MG;
  public static final Multiplayer MH;
  public static final Acls MI = new AclsImpl();
  public static final Notifications Notifications;
  public static final Players Players;
  public static final Quests Quests;
  public static final RealTimeMultiplayer RealTimeMultiplayer;
  public static final Requests Requests;
  public static final Scope SCOPE_GAMES;
  public static final Snapshots Snapshots;
  public static final TurnBasedMultiplayer TurnBasedMultiplayer;
  static final Api.c<GamesClientImpl> yE = new Api.c();
  private static final Api.b<GamesClientImpl, Games.GamesOptions> yF = new Games.1();
  
  static
  {
    SCOPE_GAMES = new Scope("https://www.googleapis.com/auth/games");
    API = new Api(yF, yE, new Scope[] { SCOPE_GAMES });
    MF = new Scope("https://www.googleapis.com/auth/games.firstparty");
    MG = new Api(yF, yE, new Scope[] { MF });
    GamesMetadata = new GamesMetadataImpl();
    Achievements = new AchievementsImpl();
    Events = new EventsImpl();
    Leaderboards = new LeaderboardsImpl();
    Invitations = new InvitationsImpl();
    TurnBasedMultiplayer = new TurnBasedMultiplayerImpl();
    RealTimeMultiplayer = new RealTimeMultiplayerImpl();
    MH = new MultiplayerImpl();
    Players = new PlayersImpl();
    Notifications = new NotificationsImpl();
    Quests = new QuestsImpl();
    Requests = new RequestsImpl();
    Snapshots = new SnapshotsImpl();
  }
  
  public static GamesClientImpl c(GoogleApiClient paramGoogleApiClient)
  {
    if (paramGoogleApiClient != null) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "GoogleApiClient parameter is required.");
      hn.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      return d(paramGoogleApiClient);
    }
  }
  
  public static GamesClientImpl d(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = (GamesClientImpl)paramGoogleApiClient.a(yE);
    if (paramGoogleApiClient != null) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
    }
  }
  
  public static String getAppId(GoogleApiClient paramGoogleApiClient)
  {
    return c(paramGoogleApiClient).hj();
  }
  
  public static String getCurrentAccountName(GoogleApiClient paramGoogleApiClient)
  {
    return c(paramGoogleApiClient).gU();
  }
  
  public static int getSdkVariant(GoogleApiClient paramGoogleApiClient)
  {
    return c(paramGoogleApiClient).hi();
  }
  
  public static Intent getSettingsIntent(GoogleApiClient paramGoogleApiClient)
  {
    return c(paramGoogleApiClient).hh();
  }
  
  public static void setGravityForPopups(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    c(paramGoogleApiClient).cg(paramInt);
  }
  
  public static void setViewForPopups(GoogleApiClient paramGoogleApiClient, View paramView)
  {
    hn.f(paramView);
    c(paramGoogleApiClient).f(paramView);
  }
  
  public static PendingResult<Status> signOut(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new Games.2());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Games
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */