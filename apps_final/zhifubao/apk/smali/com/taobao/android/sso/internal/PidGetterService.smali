.class public Lcom/taobao/android/sso/internal/PidGetterService;
.super Landroid/app/Service;


# static fields
.field public static final FETCH_ADDACCOUNT_PIDSTATE:I = 0x3

.field public static final FETCH_GETAUTHTOKEN_PIDSTATE:I = 0x2

.field public static final PID_INVALIDATE_TIME:I = 0xea60

.field public static final REPORT_PID:I = 0x1

.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static sIsAddAccountHasPid:Z

.field public static sIsGetAuthTokenHasPid:Z

.field public static sTokenArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/taobao/android/sso/internal/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PidGetterService.java"

    const-class v2, Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.taobao.android.sso.internal.PidGetterService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    sput-boolean v9, Lcom/taobao/android/sso/internal/PidGetterService;->sIsGetAuthTokenHasPid:Z

    sput-boolean v9, Lcom/taobao/android/sso/internal/PidGetterService;->sIsAddAccountHasPid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    sget-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBind at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;-><init>(Lcom/taobao/android/sso/internal/PidGetterService;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->a:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->a:Landroid/os/IBinder;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
