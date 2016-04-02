.class final Lcom/google/android/gms/internal/bp$aj;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "aj"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final dZ:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/internal/bp$aj;->dZ:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/bp$aj;->dZ:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$ab;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$ac;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ad;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$ad;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$z;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$z;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public e(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$y;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$y;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public f(Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$aa;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$aa;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public n(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$am;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$am;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public o(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$p;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$p;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "externalRoomId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$u;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/bp$u;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "participantId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$w;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$w;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "participantId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$x;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$x;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    .prologue
    const-string v0, "GamesClient"

    const-string v1, "RoomBinderCallbacks: onRealTimeMessageReceived"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bs;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$v;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dZ:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$v;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public p(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$al;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$al;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public q(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ai;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$ai;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public r(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$ak;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dX:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$ak;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public s(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$h;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$h;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method

.method public t(Lcom/google/android/gms/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    new-instance v1, Lcom/google/android/gms/internal/bp$i;

    iget-object v2, p0, Lcom/google/android/gms/internal/bp$aj;->dE:Lcom/google/android/gms/internal/bp;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp$aj;->dY:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/bp$i;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/u$b;)V

    return-void
.end method
