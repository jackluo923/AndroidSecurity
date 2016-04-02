.class public Lcom/alipay/mobileapp/core/service/login/taobao/model/TaobaoAutoLoginUrlRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:I

.field public success:Z

.field public taobao_auto_loginurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/TaobaoAutoLoginUrlRes;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/TaobaoAutoLoginUrlRes;->memo:Ljava/lang/String;

    return-void
.end method
