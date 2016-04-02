.class final Lcom/alipay/pushsdk/push/connection/f;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/d;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/connection/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/f;->a:Lcom/alipay/pushsdk/push/connection/d;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Thread;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Push Listener Processor ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/f;->a:Lcom/alipay/pushsdk/push/connection/d;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/d;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v2

    iget v2, v2, Lcom/alipay/pushsdk/push/connection/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 77
    return-object v0
.end method
