.class final Lcom/alipay/mobile/rome/pushservice/adapter/c;
.super Ljava/lang/Object;
.source "AlipayPushDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-boolean v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->d:Z

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-boolean v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(I)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/c;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget-object v2, v2, Lcom/alipay/mobile/rome/pushservice/adapter/b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Lcom/alipay/mobile/rome/pushservice/adapter/b;Ljava/io/File;)V

    goto :goto_1
.end method
