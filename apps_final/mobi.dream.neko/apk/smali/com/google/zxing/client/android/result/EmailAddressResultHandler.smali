.class public final Lcom/google/zxing/client/android/result/EmailAddressResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "EmailAddressResultHandler.java"


# static fields
.field private static buttons:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_email"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_add_contact"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    .line 39
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_email_address"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 54
    .local v1, "emailResult":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getMailtoURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 63
    .local v0, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/client/android/result/EmailAddressResultHandler;->addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
