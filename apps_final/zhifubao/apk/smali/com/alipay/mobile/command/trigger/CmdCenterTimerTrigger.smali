.class public Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/PendingIntent;

.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "CmdCenterTimerTrigger.java"

    const-class v2, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setRepeating"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:intervalMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 12

    const-wide/32 v4, 0x36ee80

    const/4 v1, 0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "trigger_type"

    sget-object v6, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x8000000

    invoke-static {v3, v11, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v11}, Ljava/util/Calendar;->add(II)V

    sget-object v3, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    sget-object v6, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    sget-object v7, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v2, v3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x2

    invoke-static {v4, v5}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-static {v7, v8, v0, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v8

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-static {v8, v9, v10, v11, v7}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
