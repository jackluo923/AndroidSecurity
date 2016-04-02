.class Lcom/alipay/android/launcher/TabLauncher$8;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;

.field private final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$8;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$8;->val$tabId:Ljava/lang/String;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$8;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher$8;->val$tabId:Ljava/lang/String;

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/android/launcher/TabLauncher;->access$13(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method
