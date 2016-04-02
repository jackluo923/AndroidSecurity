.class Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;
.super Ljava/lang/Object;
.source "BackgroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    iput-object p2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;->a:[Ljava/lang/Object;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;->this$0:Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;->a:[Ljava/lang/Object;

    # invokes: Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;[Ljava/lang/Object;)V

    .line 331
    return-void
.end method
