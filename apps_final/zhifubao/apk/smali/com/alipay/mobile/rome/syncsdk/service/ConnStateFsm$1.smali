.class synthetic Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;
.super Ljava/lang/Object;
.source "ConnStateFsm.java"


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->values()[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;->$SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;->$SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;->$SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;->$SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$1;->$SwitchMap$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State:[I

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
