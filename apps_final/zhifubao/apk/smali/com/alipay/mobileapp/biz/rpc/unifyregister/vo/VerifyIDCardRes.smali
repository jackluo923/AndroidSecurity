.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
.source "VerifyIDCardRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementURL:Ljava/lang/String;

.field public buttonMemo:Ljava/lang/String;

.field public directLogin:Z

.field public existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

.field public loginToken:Ljava/lang/String;

.field public optionStatus:Z

.field public showOptionalInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;-><init>()V

    return-void
.end method
