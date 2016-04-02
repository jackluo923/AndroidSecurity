.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "WifiBlackMac"
.end annotation


# static fields
.field public static final EXPIRETIME:Ljava/lang/String; = "expiretime"

.field public static final MAC:Ljava/lang/String; = "mac"


# instance fields
.field private expiretime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private mac:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->expiretime:J

    return-wide v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->expiretime:J

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->mac:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";expiretime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->expiretime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
