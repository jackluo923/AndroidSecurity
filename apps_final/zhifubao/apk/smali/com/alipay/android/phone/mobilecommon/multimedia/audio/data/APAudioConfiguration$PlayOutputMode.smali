.class public final enum Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

.field public static final enum MODE_EAR_PHONE:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

.field public static final enum MODE_PHONE_SPEAKER:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    const-string/jumbo v1, "MODE_EAR_PHONE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->MODE_EAR_PHONE:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    const-string/jumbo v1, "MODE_PHONE_SPEAKER"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->MODE_PHONE_SPEAKER:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->MODE_EAR_PHONE:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->MODE_PHONE_SPEAKER:Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration$PlayOutputMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
