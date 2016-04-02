.class Lcom/alipay/asset/common/util/CommonResultUtil$5;
.super Ljava/lang/Object;
.source "CommonResultUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/app/MicroApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$5;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 230
    :try_start_0
    # getter for: Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$0()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$5;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    # invokes: Lcom/alipay/asset/common/util/CommonResultUtil;->a(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$3(Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000038"

    .line 231
    const/4 v3, 0x0

    .line 230
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "wealth-common"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
