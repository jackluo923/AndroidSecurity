.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# instance fields
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final OF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final onLeftRoom(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final onP2PConnected(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final onP2PDisconnected(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final w(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method

.method public final z(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hc$b;)V

    return-void
.end method
