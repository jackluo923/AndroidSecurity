.class public final Lcom/google/zxing/client/android/result/TelResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "TelResultHandler.java"


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

    sget-object v2, Lcom/google/zxing/client/android/result/TelResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_dial"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/TelResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_add_contact"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/TelResultHandler;->buttons:[I

    .line 40
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/zxing/client/android/result/TelResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    sget-object v0, Lcom/google/zxing/client/android/result/TelResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/TelResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "contents":Ljava/lang/String;
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/google/zxing/client/android/result/TelResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_tel"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/TelResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/TelParsedResult;

    .line 55
    .local v1, "telResult":Lcom/google/zxing/client/result/TelParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/TelParsedResult;->getTelURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/result/TelResultHandler;->dialPhoneFromUri(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/TelResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 64
    :pswitch_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 65
    .local v0, "numbers":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 66
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/client/android/result/TelResultHandler;->addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
