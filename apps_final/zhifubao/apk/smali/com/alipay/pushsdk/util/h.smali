.class final Lcom/alipay/pushsdk/util/h;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/util/f;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/util/f;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/util/h;->a:Lcom/alipay/pushsdk/util/f;

    iput-object p2, p0, Lcom/alipay/pushsdk/util/h;->b:Ljava/lang/Runnable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/util/h;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Lcom/alipay/pushsdk/util/h;->a:Lcom/alipay/pushsdk/util/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/f;->a()V

    .line 46
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/alipay/pushsdk/util/h;->a:Lcom/alipay/pushsdk/util/f;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/util/f;->a()V

    .line 45
    throw v0
.end method
