.class Lcom/alipay/asset/common/util/CommonResultUtil$1;
.super Ljava/lang/Object;
.source "CommonResultUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/app/MicroApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$1;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    # getter for: Lcom/alipay/asset/common/util/CommonResultUtil;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$0()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$1;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {v0, v2, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
