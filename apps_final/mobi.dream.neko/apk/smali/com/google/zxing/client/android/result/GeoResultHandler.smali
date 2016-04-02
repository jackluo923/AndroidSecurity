.class public final Lcom/google/zxing/client/android/result/GeoResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "GeoResultHandler.java"


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

    sget-object v2, Lcom/google/zxing/client/android/result/GeoResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_show_map"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/zxing/client/android/result/GeoResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_get_directions"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/GeoResultHandler;->buttons:[I

    .line 39
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/zxing/client/android/result/GeoResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/google/zxing/client/android/result/GeoResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/google/zxing/client/android/result/GeoResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_geo"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/GeoResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/GeoParsedResult;

    .line 54
    .local v0, "geoResult":Lcom/google/zxing/client/result/GeoParsedResult;
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getGeoURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GeoResultHandler;->openMap(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/result/GeoResultHandler;->getDirections(DD)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
