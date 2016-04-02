.class public abstract Lcom/alipay/mobile/framework/service/voice/VoiceInputService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "VoiceInputService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract RecognizeCancel()V
.end method

.method public abstract RecognizeInit(Lcom/alipay/mobile/framework/service/voice/RecognizeListenerSupprot;)V
.end method

.method public abstract RecognizeStart(Ljava/lang/String;)Z
.end method

.method public abstract RecognizeStop()V
.end method

.method public abstract getVoiceInputCallback()Lcom/alipay/mobile/framework/service/voice/OnVoiceInputCompleted;
.end method

.method public abstract invokeVoiceInput(Lcom/alipay/mobile/framework/service/voice/OnVoiceInputCompleted;Ljava/lang/String;)V
.end method

.method public abstract isServiceAvailable()Z
.end method

.method public abstract playSoundCancel()V
.end method

.method public abstract playSoundError()V
.end method

.method public abstract playSoundOff()V
.end method

.method public abstract playSoundOn()V
.end method

.method public abstract setFilterSymbol(Z)V
.end method
