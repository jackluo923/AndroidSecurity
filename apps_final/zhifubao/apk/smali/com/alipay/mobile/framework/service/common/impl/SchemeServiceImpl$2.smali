.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/net/Uri;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->d:Landroid/net/Uri;

    iput-object p6, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->f:Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 6

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "startapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$2(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Z)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->d:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$3(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->e:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$4(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Landroid/os/Bundle;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$5(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/os/Bundle;)V

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    const-string/jumbo v0, "touchpal"

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->d:Landroid/net/Uri;

    :goto_1
    invoke-static {v4, v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$6(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SchemeService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$2;->b:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
