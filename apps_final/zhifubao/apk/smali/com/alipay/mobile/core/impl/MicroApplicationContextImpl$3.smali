.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$sourceId:Ljava/lang/String;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$sourceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$sourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$targetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;->val$params:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/core/ApplicationManager;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 608
    return-void
.end method
