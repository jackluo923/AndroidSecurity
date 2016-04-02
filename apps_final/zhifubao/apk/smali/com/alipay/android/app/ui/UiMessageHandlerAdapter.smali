.class public Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IILjava/lang/Object;I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput p3, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    iput p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x3ee

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  msg string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/android/app/base/message/MspMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v2

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6d88\u606f\u65e0\u6cd5\u5904\u7406"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e

    invoke-static {v1, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const-string/jumbo v0, " UiMessageHandlerAdapter  show first loading  "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-direct {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;-><init>(ILjava/lang/String;)V

    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->a(ILcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    :cond_1
    iget v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniFirstWindowData;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;)V

    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v0, 0x3e9

    iput v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    const-string/jumbo v0, " UiMessageHandlerAdapter  show first loading end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, " UiMessageHandlerAdapter  show form start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;-><init>()V

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniFrameFactory;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " push frame  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/android/app/base/trade/Trade;->h()Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/sys/GlobalContext;->a(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, " UiMessageHandlerAdapter  show form end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->c()V

    iput v5, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v2, :cond_0

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x3f7

    if-ne v1, v3, :cond_4

    iget-object v0, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    iget v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/ui/TradeUiManager;->b(I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->dispose()V

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0xc

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "6002"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v2, p1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget-object v3, p1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v4, 0xe

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    iget v1, p1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0xa

    invoke-static {v1, v5, v0, v2}, Lcom/alipay/android/app/ui/UiMessageHandlerAdapter;->a(IILjava/lang/Object;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
