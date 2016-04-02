.class public Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioPlayRsp;
.super Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioRsp;


# instance fields
.field private extra:I

.field private what:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioRsp;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtra()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioPlayRsp;->extra:I

    return v0
.end method

.method public getWhat()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioPlayRsp;->what:I

    return v0
.end method

.method public setExtra(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioPlayRsp;->extra:I

    return-void
.end method

.method public setWhat(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioPlayRsp;->what:I

    return-void
.end method
