.class Lcom/alipay/mobile/framework/service/ext/security/bean/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    new-array v0, p1, [Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/a;->a(Landroid/os/Parcel;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/a;->a(I)[Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method
