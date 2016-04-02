.class public abstract Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;
.super Ljava/lang/Object;


# static fields
.field public static final UNKNOWERR:Ljava/lang/String; = "unknow_err"


# instance fields
.field public httpCode:I

.field public mIsSuccess:Z

.field public mRetCode:Ljava/lang/String;

.field public mRetInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;->mRetCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;->mRetInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;->mIsSuccess:Z

    return v0
.end method

.method public abstract parse([B)Ljava/lang/Object;
.end method
