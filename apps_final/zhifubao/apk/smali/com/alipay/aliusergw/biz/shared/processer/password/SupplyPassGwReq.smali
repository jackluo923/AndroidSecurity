.class public Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;
.source "SupplyPassGwReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public optionStatus:Z

.field public paymentPassword:Ljava/lang/String;

.field public queryPassword:Ljava/lang/String;

.field public simplePassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    return-void
.end method
