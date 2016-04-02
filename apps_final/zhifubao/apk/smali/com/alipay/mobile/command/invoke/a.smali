.class final Lcom/alipay/mobile/command/invoke/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/command/rpc/proxy/Config;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/invoke/a;->a:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransport()Lcom/alipay/mobile/command/rpc/http/Transport;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/command/invoke/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/command/invoke/b;-><init>(Lcom/alipay/mobile/command/invoke/a;)V

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
