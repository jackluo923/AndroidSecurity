.class public Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "ShareInfoRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public image:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public receiverId:Ljava/lang/String;

.field public receiverUserType:Ljava/lang/String;

.field public score:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
