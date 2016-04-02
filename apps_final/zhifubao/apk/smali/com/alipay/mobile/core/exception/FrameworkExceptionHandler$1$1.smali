.class Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;
.super Ljava/lang/Object;
.source "FrameworkExceptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;->this$1:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;->this$1:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;

    iget-object v0, v0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$topRunningApp:Lcom/alipay/mobile/framework/app/MicroApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method
