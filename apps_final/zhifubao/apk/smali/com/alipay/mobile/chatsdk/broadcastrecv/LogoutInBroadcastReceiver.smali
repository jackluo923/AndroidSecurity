.class public Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogoutInBroadcastReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->ajc$preClinit()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->LOGTAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "LogoutInBroadcastReceiver.java"

    const-class v2, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.chatsdk.broadcastrecv.LogoutInBroadcastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private clearChatEnv()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelAllSendingMsg()V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->clearAllRegisters()V

    .line 64
    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive: [ LogoutInBroadcastReceiver ] [ action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "com.alipay.security.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceive: [ SECURITY_LOGOUT ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->clearChatEnv()V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string/jumbo v0, "com.alipay.security.startlogin"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceive: [ SECURITY_START_LOGIN ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->cancelAllSendingMsg()V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->repairMsgStatus()V

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceive: [SECURITY_LOGIN] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    if-nez v0, :cond_3

    .line 51
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->checkInitCmdReceived()V

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->onReceive_aroundBody0(Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;->onReceive_aroundBody1$advice(Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
