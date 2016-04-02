.class public final Lcom/google/zxing/client/android/result/WifiResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "WifiResultHandler.java"


# instance fields
.field private final parent:Lcom/google/zxing/client/android/CaptureActivity;

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    .line 45
    new-instance v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 46
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonText(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/result/WifiResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "button_wifi"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 74
    .local v3, "wifiResult":Lcom/google/zxing/client/result/WifiParsedResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v0, "contents":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    sget-object v5, Lcom/google/zxing/client/android/result/WifiResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v6, "string"

    const-string v7, "wifi_ssid_label"

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "wifiLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 77
    iget-object v4, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    sget-object v5, Lcom/google/zxing/client/android/result/WifiResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v6, "string"

    const-string v7, "wifi_type_label"

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "typeLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/google/zxing/client/android/result/WifiResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_wifi"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x1

    .line 61
    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 63
    .local v1, "wifiResult":Lcom/google/zxing/client/result/WifiParsedResult;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 64
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/client/android/result/WifiResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "string"

    const-string v5, "wifi_changing_network"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v2, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    new-instance v3, Lcom/google/zxing/client/android/wifi/WifiConfigManager;

    invoke-direct {v3, v0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;-><init>(Landroid/net/wifi/WifiManager;)V

    new-array v4, v6, [Lcom/google/zxing/client/result/WifiParsedResult;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    .line 68
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiResult":Lcom/google/zxing/client/result/WifiParsedResult;
    :cond_0
    return-void
.end method
