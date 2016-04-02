.class Lcom/alipay/android/launcher/TabLauncher$9;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;

.field private final synthetic val$isNeedProcessPush:Z

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$9;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$isNeedProcessPush:Z

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureResult(Z)V
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$9;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher$9;->val$isNeedProcessPush:Z

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->processGestureCallBack(Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lcom/alipay/android/launcher/TabLauncher;->access$14(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;Z)V

    .line 1066
    return-void
.end method
