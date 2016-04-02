.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
.source "EmailActivateRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementURL:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public optionStatus:Z

.field public showOptionalInfo:Ljava/lang/String;

.field public simplePassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;-><init>()V

    .line 16
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;->simplePassword:Ljava/lang/String;

    .line 10
    return-void
.end method
