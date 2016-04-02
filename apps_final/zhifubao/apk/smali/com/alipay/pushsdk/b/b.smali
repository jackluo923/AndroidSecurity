.class public final Lcom/alipay/pushsdk/b/b;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/pushsdk/b/b;->f:Landroid/os/Messenger;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/b/b;->a:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/pushsdk/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized a(I)V
    .locals 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alipay/pushsdk/b/b;->e:I

    .line 109
    iget-object v0, p0, Lcom/alipay/pushsdk/b/b;->f:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/b;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/pushsdk/b/b;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_2
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const-string/jumbo v2, "Command"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/pushsdk/b/b;->c:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/pushsdk/b/b;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/pushsdk/b/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/pushsdk/b/b;->d:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/pushsdk/b/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 37
    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/b/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string/jumbo v2, "Command"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/pushsdk/b/b;->e:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/pushsdk/b/b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
