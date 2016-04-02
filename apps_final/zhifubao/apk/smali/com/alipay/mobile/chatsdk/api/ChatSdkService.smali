.class public abstract Lcom/alipay/mobile/chatsdk/api/ChatSdkService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ChatSdkService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
.end method

.method public abstract registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
.end method

.method public abstract unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z
.end method
