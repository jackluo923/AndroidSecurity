.class public Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;
.source "VerifySmsGwReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ackCode:Ljava/lang/String;

.field public apdid:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public smsVerifyType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    return-void
.end method
