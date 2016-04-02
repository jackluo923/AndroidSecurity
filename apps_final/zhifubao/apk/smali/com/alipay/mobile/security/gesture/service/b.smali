.class final Lcom/alipay/mobile/security/gesture/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/b;->a:Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/b;->a:Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)Lcom/alipay/mobile/security/gesture/service/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->downloadCfg(ZLcom/alipay/mobile/security/gesture/service/i;)V

    return-void
.end method
