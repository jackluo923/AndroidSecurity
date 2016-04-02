.class public interface abstract Lcom/alipay/mobile/security/faceauth/api/AntDetector;
.super Ljava/lang/Object;
.source "AntDetector.java"


# static fields
.field public static final ACTION_ID_LOGIN:I = 0x10001

.field public static final ACTION_ID_SAMPLE:I = 0x10000

.field public static final ACTION_ID_TRY_LOGIN:I = 0x10002

.field public static final APP_ID_ALIPAY:I = 0x1

.field public static final APP_ID_BANK:I


# virtual methods
.method public abstract auth(Lcom/alipay/mobile/security/faceauth/api/AntDetectParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method

.method public abstract cancle()V
.end method

.method public abstract checkEnvironment(Landroid/content/Context;)I
.end method

.method public abstract destroy()V
.end method

.method public abstract login(Lcom/alipay/mobile/security/faceauth/api/login/AntFaceLoginParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method

.method public abstract sample(Lcom/alipay/mobile/security/faceauth/api/sample/AntSampleFaceParameter;Lcom/alipay/mobile/security/faceauth/api/AntDetectCallback;)V
.end method
