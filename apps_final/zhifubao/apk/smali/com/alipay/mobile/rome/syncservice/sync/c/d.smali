.class public final Lcom/alipay/mobile/rome/syncservice/sync/c/d;
.super Ljava/lang/Object;
.source "SyncDispatchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/d;->a:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DispatchBizTask: run [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/c/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method
