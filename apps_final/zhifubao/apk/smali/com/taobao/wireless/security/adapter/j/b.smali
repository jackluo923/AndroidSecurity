.class public final Lcom/taobao/wireless/security/adapter/j/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/j/b;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method

.method private a([Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x259

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    :try_start_0
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    aget-object v2, p1, v0

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    if-eqz p2, :cond_6

    const/16 v0, 0x9

    if-ne p4, v0, :cond_4

    const-string/jumbo v3, ""

    :goto_1
    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/j/b;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->signRequestNative([Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    const/16 v1, 0x8

    if-ne p4, v1, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    move-object v3, p3

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6

    const/16 v5, 0x259

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "Input map size invalid : required size is \"%d\" and actual size is \"%d\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v5}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    const-string/jumbo v0, "INPUT"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    return-object v1

    :cond_1
    const-string/jumbo v0, "Input map value invalid : key \"%1s\" not exits or the relative value is empty"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "INPUT"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v5}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    iget v5, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/taobao/wireless/security/adapter/j/a$a;->a:[I

    aget v2, v1, v5

    const/16 v1, 0x13

    sget-object v3, Lcom/taobao/wireless/security/adapter/j/b$1;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v9, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/taobao/wireless/security/adapter/j/b$1;->a:[I

    add-int/lit8 v6, v9, -0x1

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_1

    :goto_2
    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    add-int/lit8 v5, v9, -0x1

    if-nez p2, :cond_13

    const-string/jumbo v6, ""

    :goto_3
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/taobao/wireless/security/adapter/j/b;->a([Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xd

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/taobao/wireless/security/adapter/j/a$b;->a:[I

    aget v1, v1, v5

    move v9, v1

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x1

    invoke-static {v15}, Lcom/taobao/wireless/security/adapter/j/b;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    :goto_4
    move v3, v2

    move-object v2, v1

    goto :goto_2

    :pswitch_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    const/4 v3, 0x2

    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "Input map size invalid : required size is \"%d\" and actual size is \"%d\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    const-string/jumbo v1, "INPUT"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "SEEDKEY"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/n/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v5, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v1, 0x1

    aput-object v5, v2, v1

    goto/16 :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "Input map value invalid : key \"%1s\" not exits or the relative value is empty"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "INPUT"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_4
    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x25e

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    const/4 v2, 0x1

    invoke-static {v15}, Lcom/taobao/wireless/security/adapter/j/b;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_7
    const/4 v10, 0x7

    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    const-string/jumbo v1, "Input map size invalid,required size is %d and actual size is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_6
    const-string/jumbo v1, "API"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "V"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "IMEI"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "IMSI"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "TIME"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "DATA"

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "ECODE"

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v5, v11, v12

    const/4 v12, 0x4

    aput-object v6, v11, v12

    invoke-static {v11}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v8, :cond_20

    const-string/jumbo v8, ""

    move-object v11, v8

    :goto_5
    if-nez v7, :cond_7

    const-string/jumbo v7, ""

    :cond_7
    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v8, v12

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v7, v8, v1

    const/4 v1, 0x5

    aput-object v11, v8, v1

    const/4 v1, 0x6

    aput-object v6, v8, v1

    move v3, v10

    move-object v2, v8

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v1, "Input map value invalid : some key not exits or the relative value is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :pswitch_8
    const/16 v13, 0xa

    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_9

    const-string/jumbo v1, "Input map size invalid,required size is %d and actual size is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9
    const-string/jumbo v1, "DATA"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "TIME"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "API"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "V"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "ECODE"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1f

    const-string/jumbo v6, ""

    move-object v7, v6

    :goto_6
    const-string/jumbo v6, "SID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1e

    const-string/jumbo v6, ""

    move-object v8, v6

    :goto_7
    const-string/jumbo v6, "TTID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1d

    const-string/jumbo v6, ""

    move-object v10, v6

    :goto_8
    const-string/jumbo v6, "DEVICEID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1c

    const-string/jumbo v6, ""

    move-object v11, v6

    :goto_9
    const-string/jumbo v6, "LAT"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1b

    const-string/jumbo v6, ""

    move-object v12, v6

    :goto_a
    const-string/jumbo v6, "LNG"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_a

    const-string/jumbo v6, ""

    :cond_a
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v15, 0x2

    aput-object v3, v14, v15

    const/4 v15, 0x3

    aput-object v5, v14, v15

    invoke-static {v14}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v7, 0x1

    aput-object v1, v14, v7

    const/4 v1, 0x2

    aput-object v2, v14, v1

    const/4 v1, 0x3

    aput-object v3, v14, v1

    const/4 v1, 0x4

    aput-object v5, v14, v1

    const/4 v1, 0x5

    aput-object v8, v14, v1

    const/4 v1, 0x6

    aput-object v10, v14, v1

    const/4 v1, 0x7

    aput-object v11, v14, v1

    const/16 v1, 0x8

    aput-object v12, v14, v1

    const/16 v1, 0x9

    aput-object v6, v14, v1

    move v3, v13

    move-object v2, v14

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v1, "Input map value invalid : some key not exits or the relative value is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :pswitch_9
    const/16 v14, 0xb

    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_c

    const-string/jumbo v1, "Input map size invalid,required size is %d and actual size is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    const-string/jumbo v1, "DATA"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "TIME"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "API"

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "V"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "ECODE"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1a

    const-string/jumbo v6, ""

    move-object v7, v6

    :goto_b
    const-string/jumbo v6, "SID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_19

    const-string/jumbo v6, ""

    move-object v8, v6

    :goto_c
    const-string/jumbo v6, "TTID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_18

    const-string/jumbo v6, ""

    move-object v10, v6

    :goto_d
    const-string/jumbo v6, "DEVICEID"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_17

    const-string/jumbo v6, ""

    move-object v11, v6

    :goto_e
    const-string/jumbo v6, "LAT"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_16

    const-string/jumbo v6, ""

    move-object v12, v6

    :goto_f
    const-string/jumbo v6, "LNG"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_15

    const-string/jumbo v6, ""

    move-object v13, v6

    :goto_10
    const-string/jumbo v6, "EXT"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_d

    const-string/jumbo v6, ""

    :cond_d
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    const/16 v16, 0x2

    aput-object v3, v15, v16

    const/16 v16, 0x3

    aput-object v5, v15, v16

    invoke-static {v15}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    const/16 v15, 0xb

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/4 v7, 0x1

    aput-object v1, v15, v7

    const/4 v1, 0x2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    aput-object v3, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v8, v15, v1

    const/4 v1, 0x6

    aput-object v10, v15, v1

    const/4 v1, 0x7

    aput-object v11, v15, v1

    const/16 v1, 0x8

    aput-object v12, v15, v1

    const/16 v1, 0x9

    aput-object v13, v15, v1

    const/16 v1, 0xa

    aput-object v6, v15, v1

    move v3, v14

    move-object v2, v15

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v1, "Input map value invalid : some key not exits or the relative value is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :pswitch_a
    const/4 v3, 0x2

    if-eqz v15, :cond_f

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const-string/jumbo v1, "Input map size invalid,required size is %d and actual size is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_f
    const-string/jumbo v1, "INPUT"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "ENCRYPTEDKEY"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    move-object v2, v5

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v1, "Input map value invalid : some key not exits or the relative value is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :pswitch_b
    const/4 v5, 0x2

    if-eqz v15, :cond_11

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const-string/jumbo v1, "Input map size invalid,required size is %d and actual size is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_11
    const-string/jumbo v1, "STR1"

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "STR2"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    const/4 v6, 0x1

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v2, v3, v1

    move-object v1, v3

    move v2, v5

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v1, "Input map value invalid : some key not exits or the relative value is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_13
    move-object/from16 v6, p2

    goto/16 :goto_3

    :cond_14
    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v2, ""

    const/16 v3, 0x259

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_15
    move-object v13, v6

    goto/16 :goto_10

    :cond_16
    move-object v12, v6

    goto/16 :goto_f

    :cond_17
    move-object v11, v6

    goto/16 :goto_e

    :cond_18
    move-object v10, v6

    goto/16 :goto_d

    :cond_19
    move-object v8, v6

    goto/16 :goto_c

    :cond_1a
    move-object v7, v6

    goto/16 :goto_b

    :cond_1b
    move-object v12, v6

    goto/16 :goto_a

    :cond_1c
    move-object v11, v6

    goto/16 :goto_9

    :cond_1d
    move-object v10, v6

    goto/16 :goto_8

    :cond_1e
    move-object v8, v6

    goto/16 :goto_7

    :cond_1f
    move-object v7, v6

    goto/16 :goto_6

    :cond_20
    move-object v11, v8

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
