.class public Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushMsgBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

.field private c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PushMsgBroadcastReceiver.java"

    const-class v2, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.messageboxstatic.biz.push.PushMsgBroadcastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 31
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/friends/FriendstabAccessServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    .line 42
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;)Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->c:Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->b:Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.alipay.mobile.push.CMD_CLICKED_20000236"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;

    invoke-direct {v6, p0, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/push/a;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/push/PushMsgBroadcastReceiver;Landroid/content/Intent;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
