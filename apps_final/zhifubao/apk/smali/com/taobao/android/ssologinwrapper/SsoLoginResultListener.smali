.class public interface abstract Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;
.super Ljava/lang/Object;


# static fields
.field public static final CANCEL_CLICKED:Ljava/lang/String; = "sso:cancel_clicked"

.field public static final CHANGE_ACCOUNT_LOGIN:Ljava/lang/String; = "sso:change_account_login"

.field public static final NO_ACCOUNT_MATCHED:Ljava/lang/String; = "sso:no_acount_matched"


# virtual methods
.method public abstract onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
.end method

.method public abstract onFailedResult(Ljava/lang/String;)V
.end method

.method public abstract onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V
.end method
