.class final Lcom/google/android/gms/internal/hc$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic Gf:Lcom/google/android/gms/internal/hc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/hc$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc$b;->fp()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc$b;->unregister()V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/internal/hc;)Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hd;->ao(I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$a;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/hc$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc$b;->fp()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc$b;->unregister()V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/hc$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hc$b;->fq()V

    goto :goto_0

    :cond_5
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
