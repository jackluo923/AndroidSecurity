.class public Lcom/taobao/mteam/abeacon/found/utils/GattError;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "GATT INVALID HANDLE"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "GATT READ NOT PERMIT"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "GATT WRITE NOT PERMIT"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "GATT INVALID PDU"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "GATT INSUF AUTHENTICATION"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "GATT REQ NOT SUPPORTED"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "GATT INVALID OFFSET"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "GATT INSUF AUTHORIZATION"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "GATT PREPARE Q FULL"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "GATT NOT FOUND"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "GATT NOT LONG"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "GATT INSUF KEY SIZE"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "GATT INVALID ATTR LEN"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "GATT ERR UNLIKELY"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "GATT INSUF ENCRYPTION"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "GATT UNSUPPORT GRP TYPE"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "GATT INSUF RESOURCE"

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "GATT ILLEGAL PARAMETER"

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "GATT NO RESOURCES"

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "GATT INTERNAL ERROR"

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "GATT WRONG STATE"

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "GATT DB FULL"

    goto :goto_0

    :sswitch_16
    const-string/jumbo v0, "GATT BUSY"

    goto :goto_0

    :sswitch_17
    const-string/jumbo v0, "GATT ERROR"

    goto :goto_0

    :sswitch_18
    const-string/jumbo v0, "GATT CMD STARTED"

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v0, "GATT PENDING"

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v0, "GATT AUTH FAIL"

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v0, "GATT MORE"

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v0, "GATT INVALID CFG"

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v0, "BTA_GATT_DUP_REG  "

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v0, "BTA_GATT_ALREADY_OPEN "

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v0, "BTA_GATT_CANCEL"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x80 -> :sswitch_12
        0x81 -> :sswitch_13
        0x82 -> :sswitch_14
        0x83 -> :sswitch_15
        0x84 -> :sswitch_16
        0x85 -> :sswitch_17
        0x86 -> :sswitch_18
        0x87 -> :sswitch_11
        0x88 -> :sswitch_19
        0x89 -> :sswitch_1a
        0x8a -> :sswitch_1b
        0x8b -> :sswitch_1c
        0x8c -> :sswitch_1d
        0x8d -> :sswitch_1e
        0x8e -> :sswitch_1f
    .end sparse-switch
.end method
