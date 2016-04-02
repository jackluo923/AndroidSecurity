.class Lcom/alipay/android/launcher/TabLauncher$2;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;

.field private final synthetic val$hasSmartBar:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$2;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iput-boolean p2, p0, Lcom/alipay/android/launcher/TabLauncher$2;->val$hasSmartBar:Z

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$2;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iget-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher$2;->val$hasSmartBar:Z

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->initTab(Z)V
    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->access$9(Lcom/alipay/android/launcher/TabLauncher;Z)V

    .line 283
    return-void
.end method
