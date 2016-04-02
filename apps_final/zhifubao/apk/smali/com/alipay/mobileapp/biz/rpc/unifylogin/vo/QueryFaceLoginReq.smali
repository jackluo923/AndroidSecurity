.class public Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;
.super Ljava/lang/Object;
.source "QueryFaceLoginReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public userIdLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
