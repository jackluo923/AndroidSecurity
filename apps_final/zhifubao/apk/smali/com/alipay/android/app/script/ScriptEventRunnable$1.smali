.class Lcom/alipay/android/app/script/ScriptEventRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/script/ScriptEventRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/script/ScriptEventRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/script/ScriptEventRunnable$1;->this$0:Lcom/alipay/android/app/script/ScriptEventRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    return-void
.end method
