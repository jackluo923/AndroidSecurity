.class public final Lcom/google/zxing/client/android/result/ProductResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "ProductResultHandler.java"


# static fields
.field private static buttons:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/result/ProductResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_product_search"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/ProductResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_web_search"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/zxing/client/android/result/ProductResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_custom_product_search"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    .line 42
    new-instance v0, Lcom/google/zxing/client/android/result/ProductResultHandler$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/result/ProductResultHandler$1;-><init>(Lcom/google/zxing/client/android/result/ProductResultHandler;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->showGoogleShopperButton(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/google/zxing/client/android/result/ProductResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_product"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/ProductResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/ProductParsedResult;

    .line 64
    .local v0, "productResult":Lcom/google/zxing/client/result/ProductParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->openProductSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ProductParsedResult;->getNormalizedProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/ProductResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
