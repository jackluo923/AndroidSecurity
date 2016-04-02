.class public Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bindId:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/mobileinno/biz/outservice/rpc/response/SFSUploadResult;->resultStatus:I

    return-void
.end method
