.class public Lcom/alipay/mobile/framework/service/common/impl/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shareLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 10
    const-string/jumbo v0, ""

    .line 13
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 46
    :goto_0
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 47
    const-string/jumbo v2, "sharein"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v2, "UC-FFC-1222-01"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 52
    :goto_1
    return-void

    .line 19
    :sswitch_0
    const-string/jumbo v0, "laiwang"

    goto :goto_0

    .line 22
    :sswitch_1
    const-string/jumbo v0, "laiwangSpace"

    goto :goto_0

    .line 25
    :sswitch_2
    const-string/jumbo v0, "wechat"

    goto :goto_0

    .line 28
    :sswitch_3
    const-string/jumbo v0, "wechatSpace"

    goto :goto_0

    .line 31
    :sswitch_4
    const-string/jumbo v0, "message"

    goto :goto_0

    .line 34
    :sswitch_5
    const-string/jumbo v0, "copyLink"

    goto :goto_0

    .line 37
    :sswitch_6
    const-string/jumbo v0, "qqSpace"

    goto :goto_0

    .line 40
    :sswitch_7
    const-string/jumbo v0, "qqFriend"

    goto :goto_0

    .line 43
    :sswitch_8
    const-string/jumbo v0, "alipayContact"

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    goto :goto_1

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
    .end sparse-switch
.end method
