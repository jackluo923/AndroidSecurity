.class public Lcom/alipay/mobileprod/biz/aapay/model/client/AutoPayResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public message:Ljava/lang/String;

.field public overLimit:Z

.field public payResultUnknown:Z

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/AutoPayResult;->payResultUnknown:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/AutoPayResult;->success:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/client/AutoPayResult;->overLimit:Z

    return-void
.end method
