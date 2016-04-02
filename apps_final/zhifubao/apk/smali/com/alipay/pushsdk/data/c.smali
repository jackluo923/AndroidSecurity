.class final Lcom/alipay/pushsdk/data/c;
.super Ljava/lang/Object;
.source "NotifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "Creator.createFromParcel..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    new-array v0, p1, [Lcom/alipay/pushsdk/data/NotifierInfo;

    return-object v0
.end method
