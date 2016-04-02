.class public final Lcom/google/zxing/client/android/result/ResultHandlerFactory;
.super Ljava/lang/Object;
.source "ResultHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/result/ResultHandlerFactory$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static makeResultHandler(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;
    .locals 3
    .param p0, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 35
    .local v0, "result":Lcom/google/zxing/client/result/ParsedResult;
    sget-object v1, Lcom/google/zxing/client/android/result/ResultHandlerFactory$1;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 57
    new-instance v1, Lcom/google/zxing/client/android/result/TextResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/TextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    :goto_0
    return-object v1

    .line 37
    :pswitch_0
    new-instance v1, Lcom/google/zxing/client/android/result/AddressBookResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/AddressBookResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 39
    :pswitch_1
    new-instance v1, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v1, Lcom/google/zxing/client/android/result/ProductResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/ProductResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 43
    :pswitch_3
    new-instance v1, Lcom/google/zxing/client/android/result/URIResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 45
    :pswitch_4
    new-instance v1, Lcom/google/zxing/client/android/result/WifiResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/WifiResultHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 47
    :pswitch_5
    new-instance v1, Lcom/google/zxing/client/android/result/GeoResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/GeoResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 49
    :pswitch_6
    new-instance v1, Lcom/google/zxing/client/android/result/TelResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/TelResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 51
    :pswitch_7
    new-instance v1, Lcom/google/zxing/client/android/result/SMSResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/SMSResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 53
    :pswitch_8
    new-instance v1, Lcom/google/zxing/client/android/result/CalendarResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    .line 55
    :pswitch_9
    new-instance v1, Lcom/google/zxing/client/android/result/ISBNResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/ISBNResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1
    .param p0, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
