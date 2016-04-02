.class Lcom/alipay/mobile/chatsdk/meta/MetaInfo$1;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/meta/MetaInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/meta/MetaInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/meta/MetaInfo$1;->this$0:Lcom/alipay/mobile/chatsdk/meta/MetaInfo;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "on execute tab_launcher_activated pipeline  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 96
    const-class v1, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 97
    return-void
.end method
