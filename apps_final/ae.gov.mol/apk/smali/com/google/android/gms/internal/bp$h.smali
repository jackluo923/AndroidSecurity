.class final Lcom/google/android/gms/internal/bp$h;
.super Lcom/google/android/gms/internal/bp$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$h;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bp$c;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/internal/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
