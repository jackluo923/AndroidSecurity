.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Lcom/google/zxing/FakeR;

    invoke-direct {v0, p1}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    .line 66
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 67
    new-instance v0, Lcom/google/zxing/client/android/DecodeThread;

    new-instance v1, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/CaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 69
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 70
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 73
    iput-object p4, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 74
    invoke-virtual {p4}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 75
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 76
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 144
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 145
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "decode"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 146
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->drawViewfinder()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v7, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "restart_preview"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 81
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v8, "Got restart preview message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "decode_succeeded"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 84
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v8, "Got decode succeeded message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 87
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 89
    .local v1, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/zxing/Result;

    invoke-virtual {v8, v7, v1}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    .end local v1    # "barcode":Landroid/graphics/Bitmap;
    :cond_2
    const-string v7, "barcode_bitmap"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v1, v7

    goto :goto_1

    .line 90
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "decode_failed"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 92
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 93
    iget-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v10, "id"

    const-string v11, "decode"

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 94
    :cond_4
    iget v7, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "return_scan_result"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 95
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v8, "Got return scan result message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v8, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    const/4 v9, -0x1

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    iget-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto/16 :goto_0

    .line 98
    :cond_5
    iget v7, p1, Landroid/os/Message;->what:I

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "launch_product_query"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 99
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v8, "Got product query message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 101
    .local v6, "url":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x80000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    iget-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 106
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 107
    .local v2, "browserPackageName":Ljava/lang/String;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_6

    .line 108
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 109
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using browser in package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_6
    const-string v7, "com.android.browser"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 113
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const-string v7, "com.android.browser.application_id"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_7
    :try_start_0
    iget-object v7, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v7, v4}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find anything to handle VIEW of URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 5

    .prologue
    .line 126
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 127
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 128
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "quit"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "id"

    const-string v3, "decode_succeeded"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 139
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "id"

    const-string v3, "decode_failed"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 140
    return-void

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method
