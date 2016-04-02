.class public Lcom/alipay/mobile/login/bean/LoginInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/login/bean/LoginInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/login/bean/a;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/login/bean/LoginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->a:Ljava/lang/String;

    new-array v0, v3, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v2

    iput-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->b:Z

    new-array v0, v3, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v2

    iput-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->c:Z

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->g:Ljava/lang/String;

    new-array v0, v3, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v2

    iput-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->h:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdInputed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHeadImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isForAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->b:Z

    return v0
.end method

.method public isMobileUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->c:Z

    return v0
.end method

.method public isTaobaoQUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->h:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setForAutoLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->b:Z

    return-void
.end method

.method public setMobileUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->c:Z

    return-void
.end method

.method public setPwdInputed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoQUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->h:Z

    return-void
.end method

.method public setUserHeadImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setUserMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->b:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->c:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->d:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/login/bean/LoginInfo;->h:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
