.class public Lcom/alipay/android/app/util/ExceptionUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mini_app_error"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    const-string/jumbo v1, "(c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, "(s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(ILjava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ne"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/Throwable;)V

    instance-of v1, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ne"

    const-string/jumbo v2, "0040002"

    invoke-static {v1, v2, p1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/base/util/Tools;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/android/app/base/util/Tools;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    :goto_1
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    :goto_2
    const/16 v1, 0x3f6

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void

    :cond_1
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/net/SocketException;

    if-eqz v1, :cond_3

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/alipay/android/app/exception/AppErrorException;

    if-nez v0, :cond_6

    const-string/jumbo v0, "ex"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/alipay/android/app/json/JSONException;

    if-eqz v1, :cond_5

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-direct {v1, v0, p1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    move-object p1, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "ex"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    goto/16 :goto_2
.end method
