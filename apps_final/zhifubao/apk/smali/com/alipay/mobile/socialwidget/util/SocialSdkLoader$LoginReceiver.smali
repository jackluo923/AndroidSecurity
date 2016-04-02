.class public final Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SocialSdkLoader.java"


# static fields
.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SocialSdkLoader.java"

    const-class v2, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.socialwidget.util.SocialSdkLoader$LoginReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;Z)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->b:Z

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 39
    iput-boolean p2, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->b:Z

    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->b:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1
    sget-object v0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v6, "com.alipay.security.login"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "userId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->b:Z

    if-nez v5, :cond_1

    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "SocialSdk_SocialHomeWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u6536\u5230\u767b\u9646,\u52a0\u8f7dsdk:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v5}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    iput-boolean v10, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->b:Z

    :cond_0
    :goto_0
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

    aget-object v2, v2, v10

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

    :cond_1
    const-string/jumbo v5, "userId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "SocialSdk_SocialHomeWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u6536\u5230\u767b\u9646,\u5237\u65b0sdk:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " new:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iput-object v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v5}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$LoginReceiver;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v5}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->c(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V

    goto/16 :goto_0
.end method
