.class public final Lcom/google/zxing/client/android/result/SMSResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "SMSResultHandler.java"


# static fields
.field private static buttons:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/result/SMSResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_sms"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/SMSResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_mms"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/SMSResultHandler;->buttons:[I

    .line 40
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/zxing/client/android/result/SMSResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/google/zxing/client/android/result/SMSResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/SMSResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 69
    .local v4, "smsResult":Lcom/google/zxing/client/result/SMSParsedResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v0, "contents":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "rawNumbers":[Ljava/lang/String;
    array-length v5, v3

    new-array v1, v5, [Ljava/lang/String;

    .line 72
    .local v1, "formattedNumbers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 73
    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 76
    invoke-virtual {v4}, Lcom/google/zxing/client/result/SMSParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 77
    invoke-virtual {v4}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/google/zxing/client/android/result/SMSResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_sms"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/SMSResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 55
    .local v0, "smsResult":Lcom/google/zxing/client/result/SMSParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/client/android/result/SMSResultHandler;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/zxing/client/android/result/SMSResultHandler;->sendMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
