.class Lcom/alipay/asset/common/util/CommonResultUtil$3;
.super Ljava/lang/Object;
.source "CommonResultUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    invoke-static {}, Lcom/alipay/asset/common/util/CommonResultUtil;->access$2()V

    .line 113
    return-void
.end method
