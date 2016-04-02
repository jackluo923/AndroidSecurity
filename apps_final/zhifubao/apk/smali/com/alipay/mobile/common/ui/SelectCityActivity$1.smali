.class Lcom/alipay/mobile/common/ui/SelectCityActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectCityActivity.java"


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 219
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;)Lcom/alipay/mobile/common/ui/SelectCityActivity;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    return-object v0
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SelectCityActivity.java"

    const-class v2, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.common.ui.SelectCityActivity$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xdd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SelectCityActivity"

    const-string/jumbo v3, "onReceive"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 229
    const-string/jumbo v0, "cityList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    const-string/jumbo v0, "cityList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    if-eqz v1, :cond_2

    .line 232
    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    move-object v1, v0

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    const-string/jumbo v4, "hotCity_visiable"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$4(Lcom/alipay/mobile/common/ui/SelectCityActivity;Z)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->hotCityVisiable:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$5(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hotCityList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "hotCityList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    if-eqz v4, :cond_0

    .line 241
    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    move-object v2, v0

    .line 247
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 258
    const-wide/16 v1, 0x1f4

    .line 250
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    :goto_1
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$6(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateHotCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$7(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->initData()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$8(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
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
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->onReceive_aroundBody0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

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
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->onReceive_aroundBody1$advice(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
