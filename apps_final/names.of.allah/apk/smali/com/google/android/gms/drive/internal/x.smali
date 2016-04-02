.class public Lcom/google/android/gms/drive/internal/x;
.super Lcom/google/android/gms/drive/internal/ac$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/gms/drive/events/DriveEvent;",
        ">",
        "Lcom/google/android/gms/drive/internal/ac$a;"
    }
.end annotation


# instance fields
.field private final In:I

.field private final Jk:Lcom/google/android/gms/drive/events/DriveEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final Jl:Lcom/google/android/gms/drive/internal/x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/internal/x$a",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;ILcom/google/android/gms/drive/events/DriveEvent$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "I",
            "Lcom/google/android/gms/drive/events/DriveEvent$Listener",
            "<TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/ac$a;-><init>()V

    iput p2, p0, Lcom/google/android/gms/drive/internal/x;->In:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/x;->Jk:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    new-instance v0, Lcom/google/android/gms/drive/internal/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/x$a;-><init>(Landroid/os/Looper;Lcom/google/android/gms/drive/internal/x$1;)V

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jl:Lcom/google/android/gms/drive/internal/x$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnEventResponse;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/drive/internal/x;->In:I

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/hn;->A(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "EventCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jl:Lcom/google/android/gms/drive/internal/x$a;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/x;->Jk:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->gr()Lcom/google/android/gms/drive/events/ChangeEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/x$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/x;->Jl:Lcom/google/android/gms/drive/internal/x$a;

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/x;->Jk:Lcom/google/android/gms/drive/events/DriveEvent$Listener;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnEventResponse;->gs()Lcom/google/android/gms/drive/events/FileConflictEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/internal/x$a;->a(Lcom/google/android/gms/drive/events/DriveEvent$Listener;Lcom/google/android/gms/drive/events/DriveEvent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
