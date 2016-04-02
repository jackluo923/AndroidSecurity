.class Lcom/alipay/android/launcher/TabLauncher$10;
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
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$10;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/launcher/TabLauncher$10;)Lcom/alipay/android/launcher/TabLauncher;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$10;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1087
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/launcher/TabLauncher$10$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/TabLauncher$10$1;-><init>(Lcom/alipay/android/launcher/TabLauncher$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1102
    return-void
.end method
