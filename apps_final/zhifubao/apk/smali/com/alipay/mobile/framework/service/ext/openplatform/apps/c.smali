.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->b:Landroid/os/Bundle;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "20000001"

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    return-void
.end method
