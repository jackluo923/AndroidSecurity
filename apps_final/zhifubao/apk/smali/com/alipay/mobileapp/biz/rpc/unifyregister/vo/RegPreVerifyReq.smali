.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;
.source "RegPreVerifyReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public checkCode:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public queryPassword:Ljava/lang/String;

.field public rdsInfo:Ljava/lang/String;

.field public securityId:Ljava/lang/String;

.field public wa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    return-void
.end method
