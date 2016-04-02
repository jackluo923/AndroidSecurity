.class public Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private autoLogin:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private colorStr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private customerType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extern_token:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gestureAppearMode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gestureErrorNum:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gestureOrbitHide:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gesturePwd:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gestureSkip:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gestureSkipStr:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private havanaId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isBindCard:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isCertified:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNewUser:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isShowWalletEditionSwitch:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isWirelessUser:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private loginTime:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private loginToken:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private logonId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private memberGrade:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nick:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private noPayPwd:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private realName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private realNamed:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private taobaoSid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userAvatar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private walletEdition:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/a;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->sessionId:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->autoLogin:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gesturePwd:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginTime:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->noPayPwd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->extern_token:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginToken:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser:Z

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isBindCard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureErrorNum:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkipStr:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureOrbitHide:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureAppearMode:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNewUser:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->colorStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->havanaId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->memberGrade:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->colorStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->customerType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtern_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->extern_token:Ljava/lang/String;

    return-object v0
.end method

.method public getGestureAppearMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureAppearMode:Ljava/lang/String;

    return-object v0
.end method

.method public getGestureErrorNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureErrorNum:Ljava/lang/String;

    return-object v0
.end method

.method public getGestureOrbitHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureOrbitHide:Z

    return v0
.end method

.method public getGesturePwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gesturePwd:Ljava/lang/String;

    return-object v0
.end method

.method public getGestureSkipStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkipStr:Ljava/lang/String;

    return-object v0
.end method

.method public getHavanaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->havanaId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCertified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberGrade()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->memberGrade:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniMode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getNike()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealNamed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realNamed:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "REALNAMED"

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTaobaoSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletEdition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->autoLogin:Z

    return v0
.end method

.method public isBindCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isBindCard:Z

    return v0
.end method

.method public isGestureSkip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    return v0
.end method

.method public isNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNewUser:Z

    return v0
.end method

.method public isNoPayPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->noPayPwd:Z

    return v0
.end method

.method public isShowMiniSwitch()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    return v0
.end method

.method public isShowWalletEditionSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    return v0
.end method

.method public isWirelessUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser:Z

    return v0
.end method

.method public setAutoLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->autoLogin:Z

    return-void
.end method

.method public setBindCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isBindCard:Z

    return-void
.end method

.method public setColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->colorStr:Ljava/lang/String;

    return-void
.end method

.method public setCustomerType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->customerType:Ljava/lang/String;

    return-void
.end method

.method public setExtern_token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->extern_token:Ljava/lang/String;

    return-void
.end method

.method public setGestureAppearMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureAppearMode:Ljava/lang/String;

    return-void
.end method

.method public setGestureErrorNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureErrorNum:Ljava/lang/String;

    return-void
.end method

.method public setGestureOrbitHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureOrbitHide:Z

    return-void
.end method

.method public setGesturePwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gesturePwd:Ljava/lang/String;

    return-void
.end method

.method public setGestureSkip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    return-void
.end method

.method public setGestureSkipStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkipStr:Ljava/lang/String;

    return-void
.end method

.method public setHavanaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->havanaId:Ljava/lang/String;

    return-void
.end method

.method public setIsCertified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setMemberGrade(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->memberGrade:Ljava/lang/String;

    return-void
.end method

.method public setMiniMode(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-void
.end method

.method public setMobileNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    return-void
.end method

.method public setNewUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNewUser:Z

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    return-void
.end method

.method public setNike(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    return-void
.end method

.method public setNoPayPwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->noPayPwd:Z

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realName:Ljava/lang/String;

    return-void
.end method

.method public setRealNamed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realNamed:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setShowMiniSwitch(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    return-void
.end method

.method public setShowWalletEditionSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    return-void
.end method

.method public setTaobaoSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setWalletEdition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    return-void
.end method

.method public setWirelessUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->logonId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->autoLogin:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gesturePwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkip:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->noPayPwd:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->mobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isCertified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->taobaoSid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->extern_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->loginToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isBindCard:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realNamed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureErrorNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureSkipStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureOrbitHide:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->customerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->gestureAppearMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNewUser:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->colorStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->havanaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->memberGrade:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->walletEdition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isShowWalletEditionSwitch:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->realName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
