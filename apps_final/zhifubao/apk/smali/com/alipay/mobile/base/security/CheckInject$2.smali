.class Lcom/alipay/mobile/base/security/CheckInject$2;
.super Ljava/lang/Object;
.source "CheckInject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/security/CheckInject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/security/CheckInject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/security/CheckInject$2;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/base/security/CheckInject$2;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    iget-object v1, p0, Lcom/alipay/mobile/base/security/CheckInject$2;->this$0:Lcom/alipay/mobile/base/security/CheckInject;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/security/CheckInject;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/base/security/CheckInject;->alert(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/base/security/CheckInject;->access$0(Lcom/alipay/mobile/base/security/CheckInject;Landroid/app/Activity;)V

    .line 137
    return-void
.end method
