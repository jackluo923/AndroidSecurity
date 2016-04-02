.class Lcom/adsdk/sdk/mraid/MraidCommandFactory;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidCommandFactory$MraidJavascriptCommand:[I

.field protected static instance:Lcom/adsdk/sdk/mraid/MraidCommandFactory;


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidCommandFactory$MraidJavascriptCommand()[I
    .locals 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidCommandFactory$MraidJavascriptCommand:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->values()[Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CLOSE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_RESIZE_PROPERTIES:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->RESIZE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->SET_RESIZE_PROPERTIES:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->UNSPECIFIED:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->USECUSTOMCLOSE:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidCommandFactory$MraidJavascriptCommand:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/MraidCommandFactory;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->instance:Lcom/adsdk/sdk/mraid/MraidCommandFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adsdk/sdk/mraid/MraidView;",
            ")",
            "Lcom/adsdk/sdk/mraid/MraidCommand;"
        }
    .end annotation

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->instance:Lcom/adsdk/sdk/mraid/MraidCommandFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->internalCreate(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/adsdk/sdk/mraid/MraidCommandFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->instance:Lcom/adsdk/sdk/mraid/MraidCommandFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adsdk/sdk/mraid/MraidView;",
            ")",
            "Lcom/adsdk/sdk/mraid/MraidCommand;"
        }
    .end annotation

    const/4 v0, 0x0

    # invokes: Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->fromString(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;
    invoke-static {p1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->access$2(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    move-result-object v1

    invoke-static {}, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidCommandFactory$MraidJavascriptCommand()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandClose;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandClose;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandUseCustomClose;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandUseCustomClose;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandOpen;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandOpen;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandResize;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandResize;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandGetResizeProperties;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandGetResizeProperties;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandSetResizeProperties;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandSetResizeProperties;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandStorePicture;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandStorePicture;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandGetCurrentPosition;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandGetCurrentPosition;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandGetDefaultPosition;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandGetDefaultPosition;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandGetMaxSize;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandGetMaxSize;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandGetScreenSize;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandGetScreenSize;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandCreateCalendarEvent;

    invoke-direct {v0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidCommandCreateCalendarEvent;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method
