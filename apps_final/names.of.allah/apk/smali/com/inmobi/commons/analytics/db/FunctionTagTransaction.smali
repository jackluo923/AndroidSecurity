.class public Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;
.super Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsFunctions;-><init>()V

    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->c:Landroid/os/Bundle;

    return-void
.end method

.method private a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->b:Landroid/content/Intent;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    const-string v2, "pi"

    invoke-direct {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->b:Landroid/content/Intent;

    const-string v3, "RESPONSE_CODE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->b:Landroid/content/Intent;

    const-string v4, "INAPP_PURCHASE_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    if-nez v2, :cond_1

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "orderId"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionId(Ljava/lang/String;)V

    const-string v2, "productId"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionProductId(Ljava/lang/String;)V

    const-string v2, "purchaseTime"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    const-string v2, "purchaseState"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionStatus(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v2

    :goto_1
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->insertInDatabase(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_5
    sget-object v3, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v2

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->RESTORED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v2, "[InMobi]-[Analytics]-4.4.1"

    const-string v3, "Error sending transaction info. Transaction details invalid"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[InMobi]-[Analytics]-4.4.1"

    const-string v3, "Failed transaction"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_3
    const-string v3, "[InMobi]-[Analytics]-4.4.1"

    const-string v4, "Error sending transaction info. Bundle details invalid"

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[InMobi]-[Analytics]-4.4.1"

    const-string v4, "Failed to send extra params transaction"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "[InMobi]-[Analytics]-4.4.1"

    const-string v3, "Exception in tag transaction"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method private a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->c:Landroid/os/Bundle;

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->c:Landroid/os/Bundle;

    const-string v1, "DETAILS_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "price_amount_micros"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "price_currency_code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "description"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionProductId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemCount(I)V

    invoke-virtual {p1, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemDescription(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemName(Ljava/lang/String;)V

    const-string v0, "inapp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemType(I)V

    :cond_0
    :goto_1
    long-to-double v0, v4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemPrice(D)V

    invoke-virtual {p1, v6}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionCurrencyCode(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    const-string v0, "subs"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    const-string v2, "Failed to set purchase bundle info"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public processFunction()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 1

    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;->a()Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method
