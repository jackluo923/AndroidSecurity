.class public Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;
.super Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dynamicId:Ljava/lang/String;

.field public hidenPayerAccount:Ljava/lang/String;

.field public payerAccount:Ljava/lang/String;

.field public payerHeadImageUrl:Ljava/lang/String;

.field public payerIsOnline:Z

.field public payerName:Ljava/lang/String;

.field public payerUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;->payerIsOnline:Z

    return-void
.end method
