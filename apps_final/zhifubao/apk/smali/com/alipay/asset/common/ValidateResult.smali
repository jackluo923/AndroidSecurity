.class public Lcom/alipay/asset/common/ValidateResult;
.super Ljava/lang/Object;
.source "ValidateResult.java"


# instance fields
.field public bRet:Z

.field public strErr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    .line 18
    return-void
.end method
