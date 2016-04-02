.class public Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;
.super Ljava/lang/Object;


# instance fields
.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field walletTid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;->id:I

    return v0
.end method

.method public getWalletTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;->walletTid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;->id:I

    return-void
.end method

.method public setWalletTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;->walletTid:Ljava/lang/String;

    return-void
.end method
