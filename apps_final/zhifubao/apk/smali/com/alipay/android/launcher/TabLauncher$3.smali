.class Lcom/alipay/android/launcher/TabLauncher$3;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$3;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/alipay/mobile/base/security/CheckInject;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$3;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/base/security/CheckInject;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/base/security/CheckInject;->checkHook()V

    .line 293
    return-void
.end method
