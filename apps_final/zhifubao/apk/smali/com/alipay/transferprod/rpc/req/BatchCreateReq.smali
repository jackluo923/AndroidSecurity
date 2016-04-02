.class public Lcom/alipay/transferprod/rpc/req/BatchCreateReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public batchMemo:Ljava/lang/String;

.field public batchType:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public payAmountSingle:Ljava/lang/String;

.field public payAmountTotal:Ljava/lang/String;

.field public realItemsTotal:Ljava/lang/String;

.field public showitemsTotal:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/transferprod/rpc/req/BatchPayUserInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
