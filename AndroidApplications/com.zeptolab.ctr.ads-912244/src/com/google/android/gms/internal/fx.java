package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantUtils;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class fx extends eh implements ConnectionCallbacks, OnConnectionFailedListener {
    private boolean GA;
    private boolean GB;
    private int GC;
    private final Binder GD;
    private final long GE;
    private final boolean GF;
    private final int GG;
    private final boolean GH;
    private final String Gv;
    private final Map Gw;
    private PlayerEntity Gx;
    private GameEntity Gy;
    private final gd Gz;
    private final String vi;

    abstract class c extends com.google.android.gms.internal.eh.d {
        c(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            a(roomStatusUpdateListener, fx.this.G(dataHolder));
        }

        protected abstract void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room);
    }

    abstract class a extends c {
        private final ArrayList GI;

        a(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder);
            this.GI = new ArrayList();
            int i = 0;
            int length = strArr.length;
            while (i < length) {
                this.GI.add(strArr[i]);
                i++;
            }
        }

        protected void a_(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            a(roomStatusUpdateListener, room, this.GI);
        }

        protected abstract void a_(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList);
    }

    final class aa extends b {
        private final String GZ;

        aa(RoomStatusUpdateListener roomStatusUpdateListener, String str) {
            super(roomStatusUpdateListener);
            this.GZ = str;
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener) {
            if (roomStatusUpdateListener != null) {
                roomStatusUpdateListener.onP2PConnected(this.GZ);
            }
        }

        protected void cP() {
        }
    }

    final class ab extends b {
        private final String GZ;

        ab(RoomStatusUpdateListener roomStatusUpdateListener, String str) {
            super(roomStatusUpdateListener);
            this.GZ = str;
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener) {
            if (roomStatusUpdateListener != null) {
                roomStatusUpdateListener.onP2PDisconnected(this.GZ);
            }
        }

        protected void cP() {
        }
    }

    final class ac extends a {
        ac(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeersConnected(room, arrayList);
        }
    }

    final class ad extends a {
        ad(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeerDeclined(room, arrayList);
        }
    }

    final class ae extends a {
        ae(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeersDisconnected(room, arrayList);
        }
    }

    final class af extends a {
        af(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeerInvitedToRoom(room, arrayList);
        }
    }

    final class ag extends a {
        ag(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeerJoined(room, arrayList);
        }
    }

    final class ah extends a {
        ah(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder, String[] strArr) {
            super(roomStatusUpdateListener, dataHolder, strArr);
        }

        protected void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList arrayList) {
            roomStatusUpdateListener.onPeerLeft(room, arrayList);
        }
    }

    final class ai extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        ai(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void C(DataHolder dataHolder) {
            fx.this.a(new aj(this.vj, dataHolder));
        }
    }

    final class aj extends com.google.android.gms.internal.eh.d implements LoadPlayerScoreResult {
        private final com.google.android.gms.games.leaderboard.d Ha;
        private final Status vl;

        aj(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.vl = new Status(dataHolder.getStatusCode());
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            if (leaderboardScoreBuffer.getCount() > 0) {
                this.Ha = (com.google.android.gms.games.leaderboard.d) leaderboardScoreBuffer.get(0).freeze();
            } else {
                this.Ha = null;
            }
            leaderboardScoreBuffer.close();
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public LeaderboardScore getScore() {
            return this.Ha;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    final class ak extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        ak(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void e(DataHolder dataHolder) {
            fx.this.a(new al(this.vj, dataHolder));
        }
    }

    abstract class av extends com.google.android.gms.internal.eh.d implements Releasable, Result {
        final Status vl;
        final DataHolder zU;

        public av(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.vl = new Status(dataHolder.getStatusCode());
            this.zU = dataHolder;
        }

        public Status getStatus() {
            return this.vl;
        }

        public void release() {
            if (this.zU != null) {
                this.zU.close();
            }
        }
    }

    final class al extends av implements LoadPlayersResult {
        private final PlayerBuffer Hb;

        al(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.Hb = new PlayerBuffer(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public PlayerBuffer getPlayers() {
            return this.Hb;
        }
    }

    final class am extends b {
        private final String Hc;
        private final int Hd;
        private final int yJ;

        am(ReliableMessageSentCallback reliableMessageSentCallback, int i, int i2, String str) {
            super(reliableMessageSentCallback);
            this.yJ = i;
            this.Hd = i2;
            this.Hc = str;
        }

        public void a(ReliableMessageSentCallback reliableMessageSentCallback) {
            if (reliableMessageSentCallback != null) {
                reliableMessageSentCallback.onRealTimeMessageSent(this.yJ, this.Hd, this.Hc);
            }
        }

        protected void cP() {
        }
    }

    final class an extends fw {
        final ReliableMessageSentCallback He;

        public an(ReliableMessageSentCallback reliableMessageSentCallback) {
            this.He = reliableMessageSentCallback;
        }

        public void b(int i, int i2, String str) {
            fx.this.a(new am(this.He, i, i2, str));
        }
    }

    final class ao extends fw {
        private final OnRequestReceivedListener Hf;

        ao(OnRequestReceivedListener onRequestReceivedListener) {
            this.Hf = onRequestReceivedListener;
        }

        public void m(DataHolder dataHolder) {
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            GameRequest gameRequest = null;
            if (gameRequestBuffer.getCount() > 0) {
                gameRequest = (GameRequest) ((GameRequest) gameRequestBuffer.get(0)).freeze();
            }
            gameRequestBuffer.close();
            if (gameRequest != null) {
                fx.this.a(new ap(this.Hf, gameRequest));
            }
        }

        public void onRequestRemoved(String str) {
            fx.this.a(new aq(this.Hf, str));
        }
    }

    final class ap extends b {
        private final GameRequest Hg;

        ap(OnRequestReceivedListener onRequestReceivedListener, GameRequest gameRequest) {
            super(onRequestReceivedListener);
            this.Hg = gameRequest;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnRequestReceivedListener) obj);
        }

        protected void b(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestReceived(this.Hg);
        }

        protected void cP() {
        }
    }

    final class aq extends b {
        private final String Hh;

        aq(OnRequestReceivedListener onRequestReceivedListener, String str) {
            super(onRequestReceivedListener);
            this.Hh = str;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnRequestReceivedListener) obj);
        }

        protected void b(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestRemoved(this.Hh);
        }

        protected void cP() {
        }
    }

    final class ar extends fw {
        private final com.google.android.gms.common.api.a.c Hi;

        public ar(Object obj) {
            this.Hi = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void b(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            fx.this.a(new as(this.Hi, new Status(i), bundle));
        }
    }

    final class as extends b implements LoadRequestsResult {
        private final Bundle Hj;
        private final Status vl;

        as(com.google.android.gms.common.api.a.c cVar, Status status, Bundle bundle) {
            super(cVar);
            this.vl = status;
            this.Hj = bundle;
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
            release();
        }

        public GameRequestBuffer getRequests(int i) {
            String aW = gs.aW(i);
            return this.Hj.containsKey(aW) ? new GameRequestBuffer((DataHolder) this.Hj.get(aW)) : null;
        }

        public Status getStatus() {
            return this.vl;
        }

        public void release() {
            Iterator it = this.Hj.keySet().iterator();
            while (it.hasNext()) {
                DataHolder dataHolder = (DataHolder) this.Hj.getParcelable((String) it.next());
                if (dataHolder != null) {
                    dataHolder.close();
                }
            }
        }
    }

    final class at extends fw {
        private final com.google.android.gms.common.api.a.c Hk;

        public at(Object obj) {
            this.Hk = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void D(DataHolder dataHolder) {
            fx.this.a(new au(this.Hk, dataHolder));
        }
    }

    final class au extends av implements UpdateRequestsResult {
        private final hb Hl;

        au(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.Hl = hb.H(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public Set getRequestIds() {
            return this.Hl.getRequestIds();
        }

        public int getRequestOutcome(String str) {
            return this.Hl.getRequestOutcome(str);
        }
    }

    final class aw extends c {
        aw(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomAutoMatching(room);
        }
    }

    final class ax extends fw {
        private final RoomUpdateListener Hm;
        private final RoomStatusUpdateListener Hn;
        private final RealTimeMessageReceivedListener Ho;

        public ax(Object obj) {
            this.Hm = (RoomUpdateListener) er.b(obj, (Object)"Callbacks must not be null");
            this.Hn = null;
            this.Ho = null;
        }

        public ax(Object obj, RoomStatusUpdateListener roomStatusUpdateListener, RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            this.Hm = (RoomUpdateListener) er.b(obj, (Object)"Callbacks must not be null");
            this.Hn = roomStatusUpdateListener;
            this.Ho = realTimeMessageReceivedListener;
        }

        public void a(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new af(this.Hn, dataHolder, strArr));
        }

        public void b(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new ag(this.Hn, dataHolder, strArr));
        }

        public void c(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new ah(this.Hn, dataHolder, strArr));
        }

        public void d(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new ad(this.Hn, dataHolder, strArr));
        }

        public void e(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new ac(this.Hn, dataHolder, strArr));
        }

        public void f(DataHolder dataHolder, String[] strArr) {
            fx.this.a(new ae(this.Hn, dataHolder, strArr));
        }

        public void onLeftRoom(int i, String str) {
            fx.this.a(new v(this.Hm, i, str));
        }

        public void onP2PConnected(String str) {
            fx.this.a(new aa(this.Hn, str));
        }

        public void onP2PDisconnected(String str) {
            fx.this.a(new ab(this.Hn, str));
        }

        public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
            fx.this.a(new z(this.Ho, realTimeMessage));
        }

        public void s(DataHolder dataHolder) {
            fx.this.a(new ba(this.Hm, dataHolder));
        }

        public void t(DataHolder dataHolder) {
            fx.this.a(new q(this.Hm, dataHolder));
        }

        public void u(DataHolder dataHolder) {
            fx.this.a(new az(this.Hn, dataHolder));
        }

        public void v(DataHolder dataHolder) {
            fx.this.a(new aw(this.Hn, dataHolder));
        }

        public void w(DataHolder dataHolder) {
            fx.this.a(new ay(this.Hm, dataHolder));
        }

        public void x(DataHolder dataHolder) {
            fx.this.a(new h(this.Hn, dataHolder));
        }

        public void y(DataHolder dataHolder) {
            fx.this.a(new i(this.Hn, dataHolder));
        }
    }

    abstract class b extends com.google.android.gms.internal.eh.d {
        b(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        protected void a(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            a(roomUpdateListener, fx.this.G(dataHolder), dataHolder.getStatusCode());
        }

        protected abstract void a(RoomUpdateListener roomUpdateListener, Room room, int i);
    }

    final class ay extends b {
        ay(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        public void a(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomConnected(i, room);
        }
    }

    final class az extends c {
        az(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomConnecting(room);
        }
    }

    final class ba extends b {
        public ba(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        public void a(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomCreated(i, room);
        }
    }

    final class bb extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        public bb(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void cM() {
            fx.this.a(new bc(this.vj, new Status(0)));
        }
    }

    final class bc extends b {
        private final Status vl;

        public bc(com.google.android.gms.common.api.a.c cVar, Status status) {
            super(cVar);
            this.vl = status;
        }

        public /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        public void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this.vl);
        }

        protected void cP() {
        }
    }

    final class bd extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        public bd(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void d(DataHolder dataHolder) {
            fx.this.a(new be(this.vj, dataHolder));
        }
    }

    final class be extends av implements SubmitScoreResult {
        private final ScoreSubmissionData Hp;

        public be(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.Hp = new ScoreSubmissionData(dataHolder);
            dataHolder.close();
        }

        public void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public ScoreSubmissionData getScoreData() {
            return this.Hp;
        }
    }

    abstract class bf extends av {
        final TurnBasedMatch GX;

        bf(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            if (turnBasedMatchBuffer.getCount() > 0) {
                this.GX = (TurnBasedMatch) ((TurnBasedMatch) turnBasedMatchBuffer.get(0)).freeze();
            } else {
                this.GX = null;
            }
            turnBasedMatchBuffer.close();
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            h(cVar);
        }

        public TurnBasedMatch getMatch() {
            return this.GX;
        }

        abstract void h(com.google.android.gms.common.api.a.c cVar);
    }

    final class bg extends fw {
        private final com.google.android.gms.common.api.a.c Hq;

        public bg(Object obj) {
            this.Hq = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void f(int i, String str) {
            fx.this.a(new bh(this.Hq, new Status(i), str));
        }
    }

    final class bh extends b implements CancelMatchResult {
        private final String Hr;
        private final Status vl;

        bh(com.google.android.gms.common.api.a.c cVar, Status status, String str) {
            super(cVar);
            this.vl = status;
            this.Hr = str;
        }

        public /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        public void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public String getMatchId() {
            return this.Hr;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    final class bi extends fw {
        private final com.google.android.gms.common.api.a.c Hs;

        public bi(Object obj) {
            this.Hs = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void o(DataHolder dataHolder) {
            fx.this.a(new bj(this.Hs, dataHolder));
        }
    }

    final class bj extends bf implements InitiateMatchResult {
        bj(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
        }

        protected void h(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }
    }

    final class bk extends fw {
        private final com.google.android.gms.common.api.a.c Ht;

        public bk(Object obj) {
            this.Ht = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void q(DataHolder dataHolder) {
            fx.this.a(new bl(this.Ht, dataHolder));
        }
    }

    final class bl extends bf implements LeaveMatchResult {
        bl(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
        }

        protected void h(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }
    }

    final class bm extends fw {
        private final com.google.android.gms.common.api.a.c Hu;

        public bm(Object obj) {
            this.Hu = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void n(DataHolder dataHolder) {
            fx.this.a(new bn(this.Hu, dataHolder));
        }
    }

    final class bn extends bf implements LoadMatchResult {
        bn(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
        }

        protected void h(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }
    }

    final class bo extends fw {
        private final com.google.android.gms.common.api.a.c Hv;

        public bo(Object obj) {
            this.Hv = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void p(DataHolder dataHolder) {
            fx.this.a(new bp(this.Hv, dataHolder));
        }
    }

    final class bp extends bf implements UpdateMatchResult {
        bp(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
        }

        protected void h(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }
    }

    final class bq extends fw {
        private final com.google.android.gms.common.api.a.c Hw;

        public bq(Object obj) {
            this.Hw = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void a(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            fx.this.a(new br(this.Hw, new Status(i), bundle));
        }
    }

    final class br extends b implements LoadMatchesResult {
        private final LoadMatchesResponse Hx;
        private final Status vl;

        br(com.google.android.gms.common.api.a.c cVar, Status status, Bundle bundle) {
            super(cVar);
            this.vl = status;
            this.Hx = new LoadMatchesResponse(bundle);
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public LoadMatchesResponse getMatches() {
            return this.Hx;
        }

        public Status getStatus() {
            return this.vl;
        }

        public void release() {
            this.Hx.close();
        }
    }

    final class d extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        d(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void e(int i, String str) {
            fx.this.a(new e(this.vj, i, str));
        }
    }

    final class e extends b implements UpdateAchievementResult {
        private final String GK;
        private final Status vl;

        e(com.google.android.gms.common.api.a.c cVar, int i, String str) {
            super(cVar);
            this.vl = new Status(i);
            this.GK = str;
        }

        protected /* synthetic */ void a(Object obj) {
            c((com.google.android.gms.common.api.a.c) obj);
        }

        protected void c(com.google.android.gms.common.api.a.c cVar) {
            cVar.b(this);
        }

        protected void cP() {
        }

        public String getAchievementId() {
            return this.GK;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    final class f extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        f(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void b(DataHolder dataHolder) {
            fx.this.a(new g(this.vj, dataHolder));
        }
    }

    final class g extends av implements LoadAchievementsResult {
        private final AchievementBuffer GL;

        g(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.GL = new AchievementBuffer(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public AchievementBuffer getAchievements() {
            return this.GL;
        }
    }

    final class h extends c {
        h(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onConnectedToRoom(room);
        }
    }

    final class i extends c {
        i(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            super(roomStatusUpdateListener, dataHolder);
        }

        public void a(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onDisconnectedFromRoom(room);
        }
    }

    final class j extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        j(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void g(DataHolder dataHolder) {
            fx.this.a(new k(this.vj, dataHolder));
        }
    }

    final class k extends av implements LoadGamesResult {
        private final GameBuffer GM;

        k(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.GM = new GameBuffer(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public GameBuffer getGames() {
            return this.GM;
        }
    }

    final class l extends fw {
        private final OnInvitationReceivedListener GN;

        l(OnInvitationReceivedListener onInvitationReceivedListener) {
            this.GN = onInvitationReceivedListener;
        }

        public void l_(DataHolder dataHolder) {
            InvitationBuffer invitationBuffer = new InvitationBuffer(dataHolder);
            Invitation invitation = null;
            if (invitationBuffer.getCount() > 0) {
                invitation = (Invitation) ((Invitation) invitationBuffer.get(0)).freeze();
            }
            invitationBuffer.close();
            if (invitation != null) {
                fx.this.a(new m(this.GN, invitation));
            }
        }

        public void onInvitationRemoved(String str) {
            fx.this.a(new n(this.GN, str));
        }
    }

    final class m extends b {
        private final Invitation GO;

        m(OnInvitationReceivedListener onInvitationReceivedListener, Invitation invitation) {
            super(onInvitationReceivedListener);
            this.GO = invitation;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnInvitationReceivedListener) obj);
        }

        protected void b(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationReceived(this.GO);
        }

        protected void cP() {
        }
    }

    final class n extends b {
        private final String GP;

        n(OnInvitationReceivedListener onInvitationReceivedListener, String str) {
            super(onInvitationReceivedListener);
            this.GP = str;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnInvitationReceivedListener) obj);
        }

        protected void b(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationRemoved(this.GP);
        }

        protected void cP() {
        }
    }

    final class o extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        o(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void k(DataHolder dataHolder) {
            fx.this.a(new p(this.vj, dataHolder));
        }
    }

    final class p extends av implements LoadInvitationsResult {
        private final InvitationBuffer GQ;

        p(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.GQ = new InvitationBuffer(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public InvitationBuffer getInvitations() {
            return this.GQ;
        }
    }

    final class q extends b {
        public q(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            super(roomUpdateListener, dataHolder);
        }

        public void a(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onJoinedRoom(i, room);
        }
    }

    final class r extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        r(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void a(DataHolder dataHolder, DataHolder dataHolder2) {
            fx.this.a(new s(this.vj, dataHolder, dataHolder2));
        }
    }

    final class s extends av implements LoadScoresResult {
        private final com.google.android.gms.games.leaderboard.a GR;
        private final LeaderboardScoreBuffer GS;

        s(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder, DataHolder dataHolder2) {
            super(cVar, dataHolder2);
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            if (leaderboardBuffer.getCount() > 0) {
                this.GR = (com.google.android.gms.games.leaderboard.a) ((Leaderboard) leaderboardBuffer.get(0)).freeze();
            } else {
                this.GR = null;
            }
            leaderboardBuffer.close();
            this.GS = new LeaderboardScoreBuffer(dataHolder2);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public Leaderboard getLeaderboard() {
            return this.GR;
        }

        public LeaderboardScoreBuffer getScores() {
            return this.GS;
        }
    }

    final class t extends fw {
        private final com.google.android.gms.common.api.a.c vj;

        t(Object obj) {
            this.vj = (com.google.android.gms.common.api.a.c) er.b(obj, (Object)"Holder must not be null");
        }

        public void c(DataHolder dataHolder) {
            fx.this.a(new u(this.vj, dataHolder));
        }
    }

    final class u extends av implements LeaderboardMetadataResult {
        private final LeaderboardBuffer GT;

        u(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            super(cVar, dataHolder);
            this.GT = new LeaderboardBuffer(dataHolder);
        }

        protected void a(com.google.android.gms.common.api.a.c cVar, DataHolder dataHolder) {
            cVar.b(this);
        }

        public LeaderboardBuffer getLeaderboards() {
            return this.GT;
        }
    }

    final class v extends b {
        private final String GU;
        private final int yJ;

        v(RoomUpdateListener roomUpdateListener, int i, String str) {
            super(roomUpdateListener);
            this.yJ = i;
            this.GU = str;
        }

        public void a(RoomUpdateListener roomUpdateListener) {
            roomUpdateListener.onLeftRoom(this.yJ, this.GU);
        }

        protected void cP() {
        }
    }

    final class w extends b {
        private final String GV;

        w(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener, String str) {
            super(onTurnBasedMatchUpdateReceivedListener);
            this.GV = str;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnTurnBasedMatchUpdateReceivedListener) obj);
        }

        protected void b(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(this.GV);
        }

        protected void cP() {
        }
    }

    final class x extends fw {
        private final OnTurnBasedMatchUpdateReceivedListener GW;

        x(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            this.GW = onTurnBasedMatchUpdateReceivedListener;
        }

        public void onTurnBasedMatchRemoved(String str) {
            fx.this.a(new w(this.GW, str));
        }

        public void r(DataHolder dataHolder) {
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            TurnBasedMatch turnBasedMatch = null;
            if (turnBasedMatchBuffer.getCount() > 0) {
                turnBasedMatch = (TurnBasedMatch) ((TurnBasedMatch) turnBasedMatchBuffer.get(0)).freeze();
            }
            turnBasedMatchBuffer.close();
            if (turnBasedMatch != null) {
                fx.this.a(new y(this.GW, turnBasedMatch));
            }
        }
    }

    final class y extends b {
        private final TurnBasedMatch GX;

        y(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener, TurnBasedMatch turnBasedMatch) {
            super(onTurnBasedMatchUpdateReceivedListener);
            this.GX = turnBasedMatch;
        }

        protected /* synthetic */ void a(Object obj) {
            b((OnTurnBasedMatchUpdateReceivedListener) obj);
        }

        protected void b(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(this.GX);
        }

        protected void cP() {
        }
    }

    final class z extends b {
        private final RealTimeMessage GY;

        z(RealTimeMessageReceivedListener realTimeMessageReceivedListener, RealTimeMessage realTimeMessage) {
            super(realTimeMessageReceivedListener);
            this.GY = realTimeMessage;
        }

        public void a(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            if (realTimeMessageReceivedListener != null) {
                realTimeMessageReceivedListener.onRealTimeMessageReceived(this.GY);
            }
        }

        protected void cP() {
        }
    }

    public fx(Context context, Looper looper, String str, String str2, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String[] strArr, int i, View view, boolean z, boolean z2, int i2, boolean z3, int i3) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, strArr);
        this.GA = false;
        this.GB = false;
        this.Gv = str;
        this.vi = (String) er.f(str2);
        this.GD = new Binder();
        this.Gw = new HashMap();
        this.Gz = gd.a(this, i);
        e(view);
        this.GB = z2;
        this.GC = i2;
        this.GE = (long) hashCode();
        this.GF = z;
        this.GH = z3;
        this.GG = i3;
        registerConnectionCallbacks(this);
        registerConnectionFailedListener(this);
    }

    private Room G(DataHolder dataHolder) {
        com.google.android.gms.games.multiplayer.realtime.a aVar = new com.google.android.gms.games.multiplayer.realtime.a(dataHolder);
        Room room = null;
        if (aVar.getCount() > 0) {
            room = (Room) ((Room) aVar.get(0)).freeze();
        }
        aVar.close();
        return room;
    }

    private RealTimeSocket aw(String str) {
        RealTimeSocket realTimeSocket = null;
        try {
            ParcelFileDescriptor aD = ((gb) eb()).aD(str);
            RealTimeSocket gcVar;
            if (aD != null) {
                fz.f("GamesClientImpl", "Created native libjingle socket.");
                gcVar = new gc(aD);
                this.Gw.put(str, gcVar);
                return gcVar;
            } else {
                fz.f("GamesClientImpl", "Unable to create native libjingle socket, resorting to old socket.");
                String ay = ((gb) eb()).ay(str);
                if (ay == null) {
                    return realTimeSocket;
                }
                LocalSocket localSocket = new LocalSocket();
                try {
                    localSocket.connect(new LocalSocketAddress(ay));
                    gcVar = new ge(localSocket, str);
                    this.Gw.put(str, gcVar);
                    return gcVar;
                } catch (IOException e) {
                    fz.h("GamesClientImpl", "connect() call failed on socket: " + e.getMessage());
                    return realTimeSocket;
                }
            }
        } catch (RemoteException e2) {
            fz.h("GamesClientImpl", "Unable to create socket. Service died.");
            return realTimeSocket;
        }
    }

    private void fG() {
        Iterator it = this.Gw.values().iterator();
        while (it.hasNext()) {
            try {
                ((RealTimeSocket) it.next()).close();
            } catch (IOException e) {
                fz.a("GamesClientImpl", "IOException:", e);
            }
        }
        this.Gw.clear();
    }

    private void fm() {
        this.Gx = null;
    }

    protected gb H(IBinder iBinder) {
        return com.google.android.gms.internal.gb.a.J(iBinder);
    }

    public int a(ReliableMessageSentCallback reliableMessageSentCallback, byte[] bArr, String str, String str2) {
        try {
            return ((gb) eb()).a(new an(reliableMessageSentCallback), bArr, str, str2);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return -1;
        }
    }

    public int a(byte[] bArr, String str, String[] strArr) {
        er.b((Object)strArr, (Object)"Participant IDs must not be null");
        try {
            return ((gb) eb()).b(bArr, str, strArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return -1;
        }
    }

    public Intent a(int i, int i2, boolean z) {
        try {
            return ((gb) eb()).a(i, i2, z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent a(int i, byte[] bArr, int i2, Object obj, String str) {
        try {
            Intent a = ((gb) eb()).a(i, bArr, i2, str);
            er.b(obj, (Object)"Must provide a non null icon");
            a.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", obj);
            return a;
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent a(Room room, int i) {
        try {
            return ((gb) eb()).a((RoomEntity) room.freeze(), i);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    protected void a(int i, IBinder iBinder, Bundle bundle) {
        if (i == 0 && bundle != null) {
            this.GA = bundle.getBoolean("show_welcome_popup");
        }
        super.a(i, iBinder, bundle);
    }

    public void a(IBinder iBinder, Bundle bundle) {
        if (isConnected()) {
            try {
                ((gb) eb()).a(iBinder, bundle);
            } catch (RemoteException e) {
                fz.g("GamesClientImpl", "service died");
            }
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, int i2, int i3) {
        try {
            ((gb) eb()).a(new ar(cVar), i, i2, i3);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, boolean z, boolean z2) {
        try {
            ((gb) eb()).a(new ak(cVar), i, z, z2);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, int i, int[] iArr) {
        try {
            ((gb) eb()).a(new bq(cVar), i, iArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) {
        try {
            ((gb) eb()).a(new r(cVar), leaderboardScoreBuffer.fX().fY(), i, i2);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, TurnBasedMatchConfig turnBasedMatchConfig) {
        try {
            ((gb) eb()).a(new bi(cVar), turnBasedMatchConfig.getVariant(), turnBasedMatchConfig.getMinPlayers(), turnBasedMatchConfig.getInvitedPlayerIds(), turnBasedMatchConfig.getAutoMatchCriteria());
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).a(new ak(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.google.android.gms.common.api.a.c r7, java.lang.String r8, int r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.a(com.google.android.gms.common.api.a$c, java.lang.String, int):void");
        /*
        r6 = this;
        if (r7 != 0) goto L_0x001b;
    L_0x0002:
        r1 = 0;
    L_0x0003:
        r0 = r6.eb();	 Catch:{ RemoteException -> 0x0021 }
        r0 = (com.google.android.gms.internal.gb) r0;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r6.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r4 = r2.fP();	 Catch:{ RemoteException -> 0x0021 }
        r2 = r6.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r5 = r2.fO();	 Catch:{ RemoteException -> 0x0021 }
        r2 = r8;
        r3 = r9;
        r0.a(r1, r2, r3, r4, r5);	 Catch:{ RemoteException -> 0x0021 }
    L_0x001a:
        return;
    L_0x001b:
        r1 = new com.google.android.gms.internal.fx$d;	 Catch:{ RemoteException -> 0x0021 }
        r1.<init>(r7);	 Catch:{ RemoteException -> 0x0021 }
        goto L_0x0003;
    L_0x0021:
        r0 = move-exception;
        r0 = "GamesClientImpl";
        r1 = "service died";
        com.google.android.gms.internal.fz.g(r0, r1);
        goto L_0x001a;
        */
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, int i, int i2, int i3, boolean z) {
        try {
            ((gb) eb()).a(new r(cVar), str, i, i2, i3, z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, int i, boolean z, boolean z2) {
        if (str.equals("playedWith")) {
            try {
                ((gb) eb()).d(new ak(cVar), str, i, z, z2);
            } catch (RemoteException e) {
                fz.g("GamesClientImpl", "service died");
            }
        } else {
            throw new IllegalArgumentException("Invalid player collection: " + str);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.google.android.gms.common.api.a.c r7, java.lang.String r8, long r9, java.lang.String r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.a(com.google.android.gms.common.api.a$c, java.lang.String, long, java.lang.String):void");
        /*
        r6 = this;
        if (r7 != 0) goto L_0x0010;
    L_0x0002:
        r1 = 0;
    L_0x0003:
        r0 = r6.eb();	 Catch:{ RemoteException -> 0x0016 }
        r0 = (com.google.android.gms.internal.gb) r0;	 Catch:{ RemoteException -> 0x0016 }
        r2 = r8;
        r3 = r9;
        r5 = r11;
        r0.a(r1, r2, r3, r5);	 Catch:{ RemoteException -> 0x0016 }
    L_0x000f:
        return;
    L_0x0010:
        r1 = new com.google.android.gms.internal.fx$bd;	 Catch:{ RemoteException -> 0x0016 }
        r1.<init>(r7);	 Catch:{ RemoteException -> 0x0016 }
        goto L_0x0003;
    L_0x0016:
        r0 = move-exception;
        r0 = "GamesClientImpl";
        r1 = "service died";
        com.google.android.gms.internal.fz.g(r0, r1);
        goto L_0x000f;
        */
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, String str2) {
        try {
            ((gb) eb()).c(new bk(cVar), str, str2);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, String str2, int i, int i2) {
        try {
            ((gb) eb()).a(new ai(cVar), str, str2, i, i2);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, boolean z) {
        try {
            ((gb) eb()).c(new t(cVar), str, z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) {
        try {
            ((gb) eb()).a(new bo(cVar), str, bArr, str2, participantResultArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String str, byte[] bArr, ParticipantResult[] participantResultArr) {
        try {
            ((gb) eb()).a(new bo(cVar), str, bArr, participantResultArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, boolean z) {
        try {
            ((gb) eb()).c(new ak(cVar), z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(com.google.android.gms.common.api.a.c cVar, String[] strArr) {
        try {
            ((gb) eb()).a(new at(cVar), strArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(OnInvitationReceivedListener onInvitationReceivedListener) {
        try {
            ((gb) eb()).a(new l(onInvitationReceivedListener), this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(RoomConfig roomConfig) {
        try {
            ((gb) eb()).a(new ax(roomConfig.getRoomUpdateListener(), roomConfig.getRoomStatusUpdateListener(), roomConfig.getMessageReceivedListener()), this.GD, roomConfig.getVariant(), roomConfig.getInvitedPlayerIds(), roomConfig.getAutoMatchCriteria(), roomConfig.isSocketEnabled(), this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(RoomUpdateListener roomUpdateListener, String str) {
        try {
            ((gb) eb()).c(new ax(roomUpdateListener), str);
            fG();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
        try {
            ((gb) eb()).b(new x(onTurnBasedMatchUpdateReceivedListener), this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void a(OnRequestReceivedListener onRequestReceivedListener) {
        try {
            ((gb) eb()).c(new ao(onRequestReceivedListener), this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    protected void a(en enVar, com.google.android.gms.internal.eh.e eVar) {
        String toString = getContext().getResources().getConfiguration().locale.toString();
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.GF);
        bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.GB);
        bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.GC);
        bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.GH);
        bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.GG);
        enVar.a(eVar, GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, getContext().getPackageName(), this.vi, ea(), this.Gv, this.Gz.fP(), toString, bundle);
    }

    protected String aF() {
        return "com.google.android.gms.games.service.START";
    }

    protected String aG() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public void aT(int i) {
        this.Gz.setGravity(i);
    }

    public void aU(int i) {
        try {
            ((gb) eb()).aU(i);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public Intent au(String str) {
        try {
            return ((gb) eb()).au(str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public void av(String str) {
        try {
            ((gb) eb()).aC(str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public Intent b(int i, int i2, boolean z) {
        try {
            return ((gb) eb()).b(i, i2, z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public void b(com.google.android.gms.common.api.a.c cVar) {
        try {
            ((gb) eb()).a(new bb(cVar));
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(com.google.android.gms.common.api.a.c r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.b(com.google.android.gms.common.api.a$c, java.lang.String):void");
        /*
        r4 = this;
        if (r5 != 0) goto L_0x001a;
    L_0x0002:
        r0 = 0;
        r1 = r0;
    L_0x0004:
        r0 = r4.eb();	 Catch:{ RemoteException -> 0x0021 }
        r0 = (com.google.android.gms.internal.gb) r0;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r4.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r2.fP();	 Catch:{ RemoteException -> 0x0021 }
        r3 = r4.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r3 = r3.fO();	 Catch:{ RemoteException -> 0x0021 }
        r0.a(r1, r6, r2, r3);	 Catch:{ RemoteException -> 0x0021 }
    L_0x0019:
        return;
    L_0x001a:
        r0 = new com.google.android.gms.internal.fx$d;	 Catch:{ RemoteException -> 0x0021 }
        r0.<init>(r5);	 Catch:{ RemoteException -> 0x0021 }
        r1 = r0;
        goto L_0x0004;
    L_0x0021:
        r0 = move-exception;
        r0 = "GamesClientImpl";
        r1 = "service died";
        com.google.android.gms.internal.fz.g(r0, r1);
        goto L_0x0019;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(com.google.android.gms.common.api.a.c r7, java.lang.String r8, int r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.b(com.google.android.gms.common.api.a$c, java.lang.String, int):void");
        /*
        r6 = this;
        if (r7 != 0) goto L_0x001b;
    L_0x0002:
        r1 = 0;
    L_0x0003:
        r0 = r6.eb();	 Catch:{ RemoteException -> 0x0021 }
        r0 = (com.google.android.gms.internal.gb) r0;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r6.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r4 = r2.fP();	 Catch:{ RemoteException -> 0x0021 }
        r2 = r6.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r5 = r2.fO();	 Catch:{ RemoteException -> 0x0021 }
        r2 = r8;
        r3 = r9;
        r0.b(r1, r2, r3, r4, r5);	 Catch:{ RemoteException -> 0x0021 }
    L_0x001a:
        return;
    L_0x001b:
        r1 = new com.google.android.gms.internal.fx$d;	 Catch:{ RemoteException -> 0x0021 }
        r1.<init>(r7);	 Catch:{ RemoteException -> 0x0021 }
        goto L_0x0003;
    L_0x0021:
        r0 = move-exception;
        r0 = "GamesClientImpl";
        r1 = "service died";
        com.google.android.gms.internal.fz.g(r0, r1);
        goto L_0x001a;
        */
    }

    public void b(com.google.android.gms.common.api.a.c cVar, String str, int i, int i2, int i3, boolean z) {
        try {
            ((gb) eb()).b(new r(cVar), str, i, i2, i3, z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void b(com.google.android.gms.common.api.a.c cVar, boolean z) {
        try {
            ((gb) eb()).b(new t(cVar), z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void b(com.google.android.gms.common.api.a.c cVar, String[] strArr) {
        try {
            ((gb) eb()).b(new at(cVar), strArr);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void b(RoomConfig roomConfig) {
        try {
            ((gb) eb()).a(new ax(roomConfig.getRoomUpdateListener(), roomConfig.getRoomStatusUpdateListener(), roomConfig.getMessageReceivedListener()), this.GD, roomConfig.getInvitationId(), roomConfig.isSocketEnabled(), this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    protected void b(String... strArr) {
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (i < strArr.length) {
            String str = strArr[i];
            if (str.equals(Scopes.GAMES)) {
                z2 = true;
            } else if (str.equals("https://www.googleapis.com/auth/games.firstparty")) {
                z = true;
            }
            i++;
        }
        if (i != 0) {
            er.a(!z2, String.format("Cannot have both %s and %s!", new Object[]{Scopes.GAMES, "https://www.googleapis.com/auth/games.firstparty"}));
        } else {
            er.a(z2, String.format("Games APIs requires %s to function.", new Object[]{Scopes.GAMES}));
        }
    }

    public void c(com.google.android.gms.common.api.a.c cVar, int i) {
        try {
            ((gb) eb()).a(new o(cVar), i);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(com.google.android.gms.common.api.a.c r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fx.c(com.google.android.gms.common.api.a$c, java.lang.String):void");
        /*
        r4 = this;
        if (r5 != 0) goto L_0x001a;
    L_0x0002:
        r0 = 0;
        r1 = r0;
    L_0x0004:
        r0 = r4.eb();	 Catch:{ RemoteException -> 0x0021 }
        r0 = (com.google.android.gms.internal.gb) r0;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r4.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r2 = r2.fP();	 Catch:{ RemoteException -> 0x0021 }
        r3 = r4.Gz;	 Catch:{ RemoteException -> 0x0021 }
        r3 = r3.fO();	 Catch:{ RemoteException -> 0x0021 }
        r0.b(r1, r6, r2, r3);	 Catch:{ RemoteException -> 0x0021 }
    L_0x0019:
        return;
    L_0x001a:
        r0 = new com.google.android.gms.internal.fx$d;	 Catch:{ RemoteException -> 0x0021 }
        r0.<init>(r5);	 Catch:{ RemoteException -> 0x0021 }
        r1 = r0;
        goto L_0x0004;
    L_0x0021:
        r0 = move-exception;
        r0 = "GamesClientImpl";
        r1 = "service died";
        com.google.android.gms.internal.fz.g(r0, r1);
        goto L_0x0019;
        */
    }

    public void c(com.google.android.gms.common.api.a.c cVar, boolean z) {
        try {
            ((gb) eb()).a(new f(cVar), z);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public Bundle cY() {
        try {
            Bundle cY = ((gb) eb()).cY();
            if (cY == null) {
                return cY;
            }
            cY.setClassLoader(fx.class.getClassLoader());
            return cY;
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public void connect() {
        fm();
        super.connect();
    }

    public int d(byte[] bArr, String str) {
        try {
            return ((gb) eb()).b(bArr, str, null);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return -1;
        }
    }

    public void d(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).l(new bi(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void disconnect() {
        this.GA = false;
        if (isConnected()) {
            try {
                gb gbVar = (gb) eb();
                gbVar.fH();
                gbVar.n(this.GE);
            } catch (RemoteException e) {
                fz.g("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        fG();
        super.disconnect();
    }

    public void e(View view) {
        this.Gz.f(view);
    }

    public void e(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).m(new bi(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void f(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).o(new bk(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public int fA() {
        int i = 4368;
        try {
            return ((gb) eb()).fA();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return i;
        }
    }

    public String fB() {
        try {
            return ((gb) eb()).fB();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public int fC() {
        int i = GoogleScorer.CLIENT_PLUS;
        try {
            return ((gb) eb()).fC();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return i;
        }
    }

    public Intent fD() {
        try {
            return ((gb) eb()).fD();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public int fE() {
        int i = GoogleScorer.CLIENT_PLUS;
        try {
            return ((gb) eb()).fE();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return i;
        }
    }

    public int fF() {
        int i = GoogleScorer.CLIENT_PLUS;
        try {
            return ((gb) eb()).fF();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return i;
        }
    }

    public void fH() {
        if (isConnected()) {
            try {
                ((gb) eb()).fH();
            } catch (RemoteException e) {
                fz.g("GamesClientImpl", "service died");
            }
        }
    }

    public String fn() {
        try {
            return ((gb) eb()).fn();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public String fo() {
        try {
            return ((gb) eb()).fo();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Player fp() {
        bm();
        synchronized (this) {
            if (this.Gx == null) {
                try {
                    PlayerBuffer playerBuffer = new PlayerBuffer(((gb) eb()).fI());
                    if (playerBuffer.getCount() > 0) {
                        this.Gx = (PlayerEntity) playerBuffer.get(0).freeze();
                    }
                    playerBuffer.close();
                } catch (RemoteException e) {
                    fz.g("GamesClientImpl", "service died");
                }
            }
        }
        return this.Gx;
    }

    public Game fq() {
        bm();
        synchronized (this) {
            if (this.Gy == null) {
                try {
                    GameBuffer gameBuffer = new GameBuffer(((gb) eb()).fK());
                    if (gameBuffer.getCount() > 0) {
                        this.Gy = (GameEntity) gameBuffer.get(0).freeze();
                    }
                    gameBuffer.close();
                } catch (RemoteException e) {
                    fz.g("GamesClientImpl", "service died");
                }
            }
        }
        return this.Gy;
    }

    public Intent fr() {
        try {
            return ((gb) eb()).fr();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent fs() {
        try {
            return ((gb) eb()).fs();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent ft() {
        try {
            return ((gb) eb()).ft();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent fu() {
        try {
            return ((gb) eb()).fu();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public void fv() {
        try {
            ((gb) eb()).o(this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void fw() {
        try {
            ((gb) eb()).p(this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void fx_() {
        try {
            ((gb) eb()).q(this.GE);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public Intent fy() {
        try {
            return ((gb) eb()).fy();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public Intent fz() {
        try {
            return ((gb) eb()).fz();
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
            return null;
        }
    }

    public void g(com.google.android.gms.common.api.a.c cVar) {
        try {
            ((gb) eb()).d(new j(cVar));
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void g(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).n(new bg(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void h(com.google.android.gms.common.api.a.c cVar, String str) {
        try {
            ((gb) eb()).p(new bm(cVar), str);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public RealTimeSocket i(String str, String str2) {
        if (str2 == null || !ParticipantUtils.aE(str2)) {
            throw new IllegalArgumentException("Bad participant ID");
        }
        RealTimeSocket realTimeSocket = (RealTimeSocket) this.Gw.get(str2);
        return (realTimeSocket == null || realTimeSocket.isClosed()) ? aw(str2) : realTimeSocket;
    }

    public void l(String str, int i) {
        try {
            ((gb) eb()).l(str, i);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void m(String str, int i) {
        try {
            ((gb) eb()).m(str, i);
        } catch (RemoteException e) {
            fz.g("GamesClientImpl", "service died");
        }
    }

    public void onConnected(Bundle bundle) {
        if (this.GA) {
            this.Gz.fN();
            this.GA = false;
        }
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.GA = false;
    }

    public void onConnectionSuspended(int i) {
    }

    protected /* synthetic */ IInterface p(IBinder iBinder) {
        return H(iBinder);
    }
}