.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;
.source "SupplementReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clientIp:Ljava/lang/String;

.field public optionStatus:Z

.field public payPassword:Ljava/lang/String;

.field public rdsInfo:Ljava/lang/String;

.field public simplePassword:Ljava/lang/String;

.field public wa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    return-void
.end method
