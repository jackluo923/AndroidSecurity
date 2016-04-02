.class Lcom/alipay/asset/common/util/CommonResultUtil$2;
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
    iput-object p1, p0, Lcom/alipay/asset/common/util/CommonResultUtil$2;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/asset/common/util/CommonResultUtil$2;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-static {v0}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$1(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 96
    return-void
.end method
