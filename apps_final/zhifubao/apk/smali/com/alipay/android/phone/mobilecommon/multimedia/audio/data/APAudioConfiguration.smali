.class public Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private notifyWhileManualChange:Z

.field private playOutputMode:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->MODE_PHONE_SPEAKER:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->playOutputMode:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->notifyWhileManualChange:Z

    return-void
.end method


# virtual methods
.method public getPlayOutputMode()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->playOutputMode:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    return-object v0
.end method

.method public isNotifyWhileManualChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->notifyWhileManualChange:Z

    return v0
.end method

.method public setNotifyWhileManualChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->notifyWhileManualChange:Z

    return-void
.end method

.method public setPlayOutputMode(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->playOutputMode:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APAudioConfiguration{playOutputMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;->playOutputMode:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
