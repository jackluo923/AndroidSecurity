.class public abstract Lcom/alipay/mobile/security/faceauth/api/FaceAuthService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "FaceAuthService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method

.method public abstract cancle()V
.end method

.method public abstract checkPreCondition()I
.end method

.method public abstract sample(Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method
