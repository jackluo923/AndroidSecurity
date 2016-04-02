.class public Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cateId:Ljava/lang/String;

.field public myAppIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public page:I

.field public pagesize:I

.field public platform:Ljava/lang/String;

.field public pre:Z

.field public resolution:Ljava/lang/String;

.field public stage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
