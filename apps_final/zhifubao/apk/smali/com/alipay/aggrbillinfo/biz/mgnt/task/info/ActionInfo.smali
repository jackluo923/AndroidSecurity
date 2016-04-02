.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionId:Ljava/lang/String;

.field public actionType:I

.field public canSkip:Z

.field public captchaBase64:Ljava/lang/String;

.field public captchaUrl:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public hideInput:Z

.field public prompt:Ljava/lang/String;

.field public skipPrompt:Ljava/lang/String;

.field public suggestion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public verifyType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
