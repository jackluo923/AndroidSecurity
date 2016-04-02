.class public Lcom/alipay/pushsdk/push/l;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field private static G:J

.field private static final synthetic H:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic I:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic J:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic K:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Landroid/app/AlarmManager;

.field private B:Landroid/app/PendingIntent;

.field private C:Landroid/app/PendingIntent;

.field private D:Landroid/os/PowerManager$WakeLock;

.field private E:I

.field private F:J

.field a:Ljava/util/Timer;

.field b:Ljava/util/Timer;

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/pushsdk/push/d;

.field private f:Lcom/alipay/pushsdk/push/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/alipay/pushsdk/push/connection/k;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/alipay/pushsdk/push/a/d;

.field private r:Lcom/alipay/pushsdk/push/d/f;

.field private s:Lcom/alipay/pushsdk/push/d/b;

.field private t:Lcom/alipay/pushsdk/push/d/c;

.field private u:Lcom/alipay/pushsdk/push/d/e;

.field private v:Lcom/alipay/pushsdk/push/d/a;

.field private w:Landroid/os/Handler;

.field private x:Ljava/util/List;

.field private y:Z

.field private z:Ljava/util/concurrent/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PushManager.java"

    const-class v2, Lcom/alipay/pushsdk/push/l;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3af

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/l;->H:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x43d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/l;->I:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "acquire"

    const-string/jumbo v3, "android.os.PowerManager$WakeLock"

    const-string/jumbo v4, "long"

    const-string/jumbo v5, "timeout"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x45b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/l;->J:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "release"

    const-string/jumbo v3, "android.os.PowerManager$WakeLock"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x468

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/l;->K:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 59
    const-class v0, Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v2, p0, Lcom/alipay/pushsdk/push/l;->l:I

    .line 73
    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->m:I

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->o:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/l;->y:Z

    .line 92
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->a:Ljava/util/Timer;

    .line 93
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->b:Ljava/util/Timer;

    .line 95
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    .line 96
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    .line 97
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    .line 99
    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->E:I

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/l;->F:J

    .line 106
    iput-object p1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/NotificationService;->b()Lcom/alipay/pushsdk/push/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->e:Lcom/alipay/pushsdk/push/d;

    .line 108
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->f:Lcom/alipay/pushsdk/push/e;

    .line 111
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/l;->p:Z

    .line 113
    new-instance v0, Lcom/alipay/pushsdk/push/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/a/e;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->q:Lcom/alipay/pushsdk/push/a/d;

    .line 114
    new-instance v0, Lcom/alipay/pushsdk/push/d/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/f;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->r:Lcom/alipay/pushsdk/push/d/f;

    .line 115
    new-instance v0, Lcom/alipay/pushsdk/push/d/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/b;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->s:Lcom/alipay/pushsdk/push/d/b;

    .line 116
    new-instance v0, Lcom/alipay/pushsdk/push/d/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/c;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->t:Lcom/alipay/pushsdk/push/d/c;

    .line 117
    new-instance v0, Lcom/alipay/pushsdk/push/d/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/e;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->u:Lcom/alipay/pushsdk/push/d/e;

    .line 118
    new-instance v0, Lcom/alipay/pushsdk/push/d/a;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d/a;-><init>(Lcom/alipay/pushsdk/push/l;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->v:Lcom/alipay/pushsdk/push/d/a;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->w:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    .line 124
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 123
    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->E:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/l;->F:J

    .line 141
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PushManager() getLastConnectedTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-wide v2, p0, Lcom/alipay/pushsdk/push/l;->F:J

    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/r;->c()Z

    move-result v0

    .line 149
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PushManager() flagTraceLog="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/m;->c(Z)V

    .line 154
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pushManager="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method private C()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 955
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/l;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 348
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->h:Ljava/lang/String;

    iget v1, v0, Lcom/alipay/pushsdk/data/a;->c:I

    iput v1, p0, Lcom/alipay/pushsdk/push/l;->i:I

    iget v1, v0, Lcom/alipay/pushsdk/data/a;->f:I

    iput v1, p0, Lcom/alipay/pushsdk/push/l;->m:I

    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/l;->g:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/pushsdk/data/a;->g:I

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->l:I

    new-instance v0, Lcom/alipay/pushsdk/push/q;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() serverInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v4, :cond_3

    aget-object v0, v1, v5

    if-eqz v0, :cond_2

    aget-object v0, v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->i:I

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadPushConfig() pushHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pushPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/push/l;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", protocolVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/push/l;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() invalid configPort="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "loadPushConfig() configPort is null."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() invalid serverList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 602
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)..."

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->f:Lcom/alipay/pushsdk/push/e;

    iget-object v1, v0, Lcom/alipay/pushsdk/push/e;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/e;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/alipay/pushsdk/push/e;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/e;

    move-result-object v2

    iget v3, v2, Lcom/alipay/pushsdk/push/e;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alipay/pushsdk/push/e;->a:I

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Incremented task count to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/pushsdk/push/e;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    monitor-enter v1

    .line 608
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask taskList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/l;->y:Z

    if-nez v0, :cond_7

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/l;->y:Z

    .line 615
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask() runnable is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask(runnable)...taskSubmitter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/alipay/pushsdk/push/l;->e:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->e:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->z:Ljava/util/concurrent/Future;

    .line 624
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->z:Ljava/util/concurrent/Future;

    if-nez v0, :cond_5

    .line 625
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->f:Lcom/alipay/pushsdk/push/e;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e;->a()V

    .line 607
    :cond_5
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 633
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)... done"

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_6
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 628
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v3, "runTask()..."

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/l;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->z:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->x:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/pushsdk/push/l;->y:Z

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "runTask() runnable is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->e:Lcom/alipay/pushsdk/push/d;

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/push/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->z:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->z:Ljava/util/concurrent/Future;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->f:Lcom/alipay/pushsdk/push/e;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e;->a()V

    :cond_a
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->f:Lcom/alipay/pushsdk/push/e;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e;->a()V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v3, "runTask()...done"

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 607
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 629
    :cond_b
    const/4 v0, 0x5

    :try_start_5
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v4, "runTask(),taskList is empty"

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public static a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 962
    .line 964
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setExact"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 969
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v4, "setReflectTimer() invoke setExact api done."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 974
    :catch_0
    move-exception v0

    .line 976
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 980
    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/pushsdk/push/l;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActiveNetworkInfo() typeName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkConnectType() proxyHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", proxyPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/push/l;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    iput v5, p0, Lcom/alipay/pushsdk/push/l;->k:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/l;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/pushsdk/push/l;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alipay/pushsdk/push/l;->k:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/pushsdk/push/l;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/pushsdk/push/l;->i:I

    return v0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 278
    sget-wide v0, Lcom/alipay/pushsdk/push/l;->G:J

    return-wide v0
.end method

.method static synthetic f(J)V
    .locals 0

    .prologue
    .line 103
    sput-wide p0, Lcom/alipay/pushsdk/push/l;->G:J

    return-void
.end method

.method static synthetic g(Lcom/alipay/pushsdk/push/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/pushsdk/push/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/pushsdk/push/l;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alipay/pushsdk/push/l;->l:I

    return v0
.end method

.method static synthetic j(Lcom/alipay/pushsdk/push/l;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/alipay/pushsdk/push/l;->m:I

    return v0
.end method

.method static synthetic k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    return-object v0
.end method

.method public static s()V
    .locals 0

    .prologue
    .line 500
    invoke-static {}, Lcom/alipay/pushsdk/push/s;->c()V

    .line 501
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1126
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/alipay/pushsdk/push/l;->K:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Call WakeLock.release() at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    .line 1141
    return-void

    .line 1129
    :catch_0
    move-exception v0

    .line 1133
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->a(J)V

    .line 284
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/connection/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 262
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    .line 267
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alipay/pushsdk/push/l;->o:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/alipay/pushsdk/push/l;->p:Z

    .line 585
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 167
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "connect()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/alipay/pushsdk/push/connection/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/connection/j;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    .line 180
    const-string/jumbo v1, "connect() ConnectionPolicy is false."

    .line 179
    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/n;

    new-instance v1, Lcom/alipay/pushsdk/push/a/b;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/a/b;-><init>(Lcom/alipay/pushsdk/push/l;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/pushsdk/push/n;-><init>(Lcom/alipay/pushsdk/push/l;Lcom/alipay/pushsdk/push/a/b;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->b(J)V

    .line 294
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 190
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/l;->p:Z

    .line 195
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/l;->C()V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "terminatePersistentConnection()..."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/push/m;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/m;-><init>(Lcom/alipay/pushsdk/push/l;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/l;->a(Ljava/lang/Runnable;)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/pushsdk/push/l;->c(J)V

    .line 205
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->A()V

    .line 206
    return-void

    .line 197
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(J)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 302
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->c(J)V

    .line 305
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PushManager() setLastLostedTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-static {p1, p2}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public final d()Lcom/alipay/pushsdk/push/connection/k;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 252
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    if-eqz v0, :cond_0

    .line 253
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    return-object v0
.end method

.method public final d(J)V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->d(J)V

    .line 319
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 10

    .prologue
    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 917
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 919
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.KEEPLIVE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-static {v1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    .line 926
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 927
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    .line 928
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->x()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 929
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 932
    :cond_1
    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    .line 933
    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    invoke-static {v2, v0, v1, v3}, Lcom/alipay/pushsdk/push/l;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z

    move-result v2

    .line 934
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 935
    sget-object v3, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startHeartAlarmTimer() setReflectTimer ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_2
    if-eqz v2, :cond_4

    .line 946
    :cond_3
    :goto_0
    return-void

    .line 943
    :cond_4
    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->C:Landroid/app/PendingIntent;

    sget-object v4, Lcom/alipay/pushsdk/push/l;->H:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, p0, v2, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-static {v5, v6, v7, v8, v4}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v9, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 336
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "PushManager() getPushTrigger enter."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/alipay/pushsdk/push/l;->m:I

    return v0
.end method

.method public final l()Lcom/alipay/pushsdk/push/a/d;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->q:Lcom/alipay/pushsdk/push/a/d;

    return-object v0
.end method

.method public final m()Lcom/alipay/pushsdk/push/d/d;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->r:Lcom/alipay/pushsdk/push/d/f;

    return-object v0
.end method

.method public final n()Lcom/alipay/pushsdk/push/d/d;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->s:Lcom/alipay/pushsdk/push/d/b;

    return-object v0
.end method

.method public final o()Lcom/alipay/pushsdk/push/d/d;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->t:Lcom/alipay/pushsdk/push/d/c;

    return-object v0
.end method

.method public final p()Lcom/alipay/pushsdk/push/d/d;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->u:Lcom/alipay/pushsdk/push/d/e;

    return-object v0
.end method

.method public final q()Lcom/alipay/pushsdk/push/d/d;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->v:Lcom/alipay/pushsdk/push/d/a;

    return-object v0
.end method

.method public final r()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v0, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 480
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    .line 482
    const-string/jumbo v3, "startReconnectionThread()... ReconnectionTask"

    .line 481
    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    monitor-enter p0

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/connection/k;->h()V

    .line 485
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iput-boolean v11, p0, Lcom/alipay/pushsdk/push/l;->p:Z

    .line 493
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/l;->C()V

    .line 496
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".push.action.CONNECT"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-static {v3, v11, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    :cond_2
    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/alipay/pushsdk/push/l;->A:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->i()J

    move-result-wide v5

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getReconnTimer lastTryConnectTime="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", lastConnectedTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    cmp-long v7, v2, v0

    if-lez v7, :cond_6

    cmp-long v5, v2, v5

    if-ltz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->c()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v12

    sub-long/2addr v2, v5

    cmp-long v7, v2, v0

    if-gtz v7, :cond_7

    :goto_0
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getReconnTimer lostedTime="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", curWaitTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->B:Landroid/app/PendingIntent;

    sget-object v3, Lcom/alipay/pushsdk/push/l;->I:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v11}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v3, p0, v4, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v3

    invoke-static {v5, v6, v7, v8, v3}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4, v11, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 497
    :cond_5
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 496
    :cond_6
    invoke-static {}, Lcom/alipay/pushsdk/push/s;->b()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v12

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getReconnTimer reconnectionTask.waiting="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final t()Z
    .locals 9

    .prologue
    const/4 v4, 0x5

    const/4 v8, 0x4

    .line 550
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    if-eqz v1, :cond_0

    .line 553
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected() connection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/pushsdk/push/l;->n:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/k;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->d()J

    move-result-wide v1

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 564
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->e()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 565
    const/4 v0, 0x1

    .line 567
    :cond_1
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    sget-object v5, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isConnected() lastTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", del="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {v8, v5, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/l;->p:Z

    return v0
.end method

.method public final v()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 588
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "submitRegisterTask()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/pushsdk/push/p;-><init>(Lcom/alipay/pushsdk/push/l;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/l;->a(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 595
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v0, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    const-string/jumbo v1, "submitHeartBeatTask()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Lcom/alipay/pushsdk/push/l;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/l;->a(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public final x()J
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 987
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->m()I

    move-result v0

    int-to-long v0, v0

    .line 989
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/l;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->l()I

    move-result v0

    int-to-long v0, v0

    .line 993
    :cond_0
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPushKeepAliveInterval() keepAliveTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_1
    return-wide v0
.end method

.method public final y()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 1001
    const/4 v0, 0x0

    .line 1003
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    new-instance v1, Lcom/alipay/pushsdk/push/j;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->a()J

    move-result-wide v1

    .line 1006
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1007
    sget-object v3, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isFrontPolicy launchTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->f()J

    move-result-wide v3

    .line 1010
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/pushsdk/util/j;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    const/4 v0, 0x1

    .line 1015
    :cond_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    sget-object v1, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isFrontPolicy ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_2
    return v0
.end method

.method public final z()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x4e20

    .line 1109
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->d:Landroid/content/Context;

    .line 1111
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1110
    check-cast v0, Landroid/os/PowerManager;

    .line 1112
    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/pushsdk/push/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    .line 1113
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1115
    iget-object v0, p0, Lcom/alipay/pushsdk/push/l;->D:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/alipay/pushsdk/push/l;->J:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, v4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Call WakeLock.acquire() at: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_1
    return-void
.end method
