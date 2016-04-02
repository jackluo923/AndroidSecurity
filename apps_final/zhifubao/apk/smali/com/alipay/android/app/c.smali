.class final Lcom/alipay/android/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspService;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/MspService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/c;->a:Lcom/alipay/android/app/MspService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/app/c;->a:Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/c;->a:Lcom/alipay/android/app/MspService;

    invoke-virtual {v0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/c;->a:Lcom/alipay/android/app/MspService;

    invoke-virtual {v0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/c;->a:Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method
