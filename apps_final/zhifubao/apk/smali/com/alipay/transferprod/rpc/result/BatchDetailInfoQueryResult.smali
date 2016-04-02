.class public Lcom/alipay/transferprod/rpc/result/BatchDetailInfoQueryResult;
.super Lcom/alipay/transferprod/rpc/result/RPCResponse;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public batchMemo:Ljava/lang/String;

.field public batchNo:Ljava/lang/String;

.field public batchStatus:Ljava/lang/String;

.field public batchType:Ljava/lang/String;

.field public createDate:Ljava/util/Date;

.field public createUserHeadUrl:Ljava/lang/String;

.field public createUserName:Ljava/lang/String;

.field public createrLoginId:Ljava/lang/String;

.field public createrUserId:Ljava/lang/String;

.field public detailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/transferprod/rpc/result/BatchDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public payAmountSingle:Ljava/lang/String;

.field public payAmountTotal:Ljava/lang/String;

.field public realItemsTotal:Ljava/lang/String;

.field public shareObjId:Ljava/lang/String;

.field public shareObjType:Ljava/lang/String;

.field public showitemsTotal:Ljava/lang/String;

.field public successAmountTotal:Ljava/lang/String;

.field public successItemsTotal:Ljava/lang/String;

.field public timeOutValue:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/transferprod/rpc/result/RPCResponse;-><init>()V

    return-void
.end method
