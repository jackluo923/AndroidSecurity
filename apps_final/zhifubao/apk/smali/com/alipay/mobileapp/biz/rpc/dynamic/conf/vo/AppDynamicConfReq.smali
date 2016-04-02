.class public Lcom/alipay/mobileapp/biz/rpc/dynamic/conf/vo/AppDynamicConfReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channel:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public platformVersion:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productStatus:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public tabNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
