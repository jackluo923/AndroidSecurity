.class public interface abstract Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
.super Ljava/lang/Object;
.source "SSOLoginCaller.java"


# static fields
.field public static final RET_SSO_LOGIN_FAIL:I = -0x3ec

.field public static final RET_SSO_READ_FAIL:I = -0x3e9

.field public static final RET_SSO_USER_CANCEL:I = -0x3eb

.field public static final RET_SSO_VERIFY_FAIL:I = -0x3ea


# virtual methods
.method public abstract onSsoLoginFail(I)V
.end method

.method public abstract onSsoLoginStart()V
.end method

.method public abstract onSsoLoginSuccess()V
.end method

.method public abstract onSsoLoginUserConfirm()V
.end method

.method public abstract onSsoLoginUserConfirmed()V
.end method
