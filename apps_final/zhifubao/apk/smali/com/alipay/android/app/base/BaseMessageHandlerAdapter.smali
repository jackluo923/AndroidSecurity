.class public Lcom/alipay/android/app/base/BaseMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  msg string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v2

    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/base/trade/TradeManager;->c(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/base/trade/Trade;->g()V

    goto :goto_0

    :sswitch_1
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v0, "minipay"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v0, "protocol"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_1
        0x3ee -> :sswitch_0
        0x3f7 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
    .end sparse-switch
.end method
