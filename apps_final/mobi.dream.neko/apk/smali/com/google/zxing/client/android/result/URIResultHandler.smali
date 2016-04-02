.class public final Lcom/google/zxing/client/android/result/URIResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "URIResultHandler.java"


# static fields
.field private static final SECURE_PROTOCOLS:[Ljava/lang/String;

.field private static buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "otpauth:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/result/URIResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_open_browser"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/URIResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_share_by_email"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/client/android/result/URIResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_share_by_sms"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/zxing/client/android/result/URIResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_search_book_contents"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    .line 50
    return-void
.end method


# virtual methods
.method public areContentsSecure()Z
    .locals 8

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/client/result/URIParsedResult;

    .line 93
    .local v5, "uriResult":Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v5}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "uri":Ljava/lang/String;
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->SECURE_PROTOCOLS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 95
    .local v3, "secure":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const/4 v6, 0x1

    .line 99
    .end local v3    # "secure":Ljava/lang/String;
    :goto_1
    return v6

    .line 94
    .restart local v3    # "secure":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "secure":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    .line 57
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/google/zxing/client/android/result/URIResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_uri"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/URIResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/URIParsedResult;

    .line 68
    .local v1, "uriResult":Lcom/google/zxing/client/result/URIParsedResult;
    invoke-virtual {v1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "uri":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/URIResultHandler;->searchBookContents(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
