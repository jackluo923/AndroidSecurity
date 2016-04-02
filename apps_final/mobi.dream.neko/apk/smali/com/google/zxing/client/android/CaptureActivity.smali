.class public final Lcom/google/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivity$1;
    }
.end annotation


# static fields
.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTORY_REQUEST_CODE:I = 0xbacc

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final PRODUCT_SEARCH_URL_PREFIX:Ljava/lang/String; = "http://www.google"

.field private static final PRODUCT_SEARCH_URL_SUFFIX:Ljava/lang/String; = "/m/products/scan"

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String;

.field private static final ZXING_URLS:[Ljava/lang/String;

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private resultView:Landroid/view/View;

.field private returnRaw:Z

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    const-class v0, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://zxing.appspot.com/scan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "zxing://scan/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 444
    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v1, :cond_0

    .line 368
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 379
    :goto_0
    return-void

    .line 370
    :cond_0
    if-eqz p2, :cond_1

    .line 371
    iput-object p2, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "decode_succeeded"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 4

    .prologue
    .line 723
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "string"

    const-string v3, "app_name"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 725
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "string"

    const-string v3, "msg_camera_framework_bug"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 726
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "string"

    const-string v3, "button_ok"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    new-instance v1, Lcom/google/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 729
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 479
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 480
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 11
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 455
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 456
    .local v6, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 457
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 458
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 459
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "color"

    const-string v10, "result_points"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 461
    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 462
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v1, v4, v7, v8}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 476
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 463
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v7, v8, :cond_3

    .line 467
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v1, v4, v7, v8}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 468
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const/4 v8, 0x3

    aget-object v8, v6, v8

    invoke-static {v1, v4, v7, v8}, Lcom/google/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 470
    :cond_3
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    move-object v0, v6

    .local v0, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 472
    .local v5, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v1, v7, v8, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 25
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 570
    if-eqz p3, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    if-nez v21, :cond_7

    .line 576
    const-wide/16 v18, 0x5dc

    .line 585
    .local v18, "resultDurationMS":J
    :goto_0
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-lez v21, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayTitle()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v21

    if-nez v21, :cond_2

    .line 590
    const-string v21, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/ClipboardManager;

    .line 591
    .local v7, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v20

    .line 592
    .local v20, "text":Ljava/lang/CharSequence;
    if-eqz v20, :cond_2

    .line 593
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 597
    .end local v7    # "clipboard":Landroid/text/ClipboardManager;
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 601
    new-instance v13, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v21, 0x80000

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    const-string v21, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v21, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v16

    .line 606
    .local v16, "rawBytes":[B
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 607
    const-string v21, "SCAN_RESULT_BYTES"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 609
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v14

    .line 610
    .local v14, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v14, :cond_8

    .line 611
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 612
    const-string v21, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v22, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    :cond_4
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 616
    .local v15, "orientation":Ljava/lang/Integer;
    if-eqz v15, :cond_5

    .line 617
    const-string v21, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    :cond_5
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 620
    .local v9, "ecLevel":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 621
    const-string v21, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    :cond_6
    sget-object v21, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 624
    .local v6, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v6, :cond_8

    .line 625
    const/4 v11, 0x0

    .line 626
    .local v11, "i":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 627
    .local v5, "byteSegment":[B
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 628
    add-int/lit8 v11, v11, 0x1

    .line 629
    goto :goto_1

    .line 578
    .end local v5    # "byteSegment":[B
    .end local v6    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v9    # "ecLevel":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v15    # "orientation":Ljava/lang/Integer;
    .end local v16    # "rawBytes":[B
    .end local v18    # "resultDurationMS":J
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v23, 0x5dc

    invoke-virtual/range {v21 .. v24}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .restart local v18    # "resultDurationMS":J
    goto/16 :goto_0

    .line 632
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v16    # "rawBytes":[B
    :cond_8
    sget-object v21, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v22, "id"

    const-string v23, "return_scan_result"

    invoke-virtual/range {v21 .. v23}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 658
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v16    # "rawBytes":[B
    :cond_9
    :goto_2
    return-void

    .line 634
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "/scan"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 639
    .local v10, "end":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?q="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&source=zxing"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 640
    .local v17, "replyURL":Ljava/lang/String;
    sget-object v21, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v22, "id"

    const-string v23, "launch_product_query"

    invoke-virtual/range {v21 .. v23}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto :goto_2

    .line 642
    .end local v10    # "end":I
    .end local v17    # "replyURL":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->returnRaw:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, "codeReplacement":Ljava/lang/CharSequence;
    :goto_3
    :try_start_0
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 653
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "{CODE}"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 654
    .restart local v17    # "replyURL":Ljava/lang/String;
    sget-object v21, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v22, "id"

    const-string v23, "launch_product_query"

    invoke-virtual/range {v21 .. v23}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/CaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    goto/16 :goto_2

    .line 647
    .end local v8    # "codeReplacement":Ljava/lang/CharSequence;
    .end local v17    # "replyURL":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_3

    .line 650
    .restart local v8    # "codeReplacement":Ljava/lang/CharSequence;
    :catch_0
    move-exception v21

    goto :goto_4
.end method

.method private handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 29
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 488
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "barcode_image_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 489
    .local v4, "barcodeImageView":Landroid/widget/ImageView;
    if-nez p3, :cond_1

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget-object v26, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v27, "drawable"

    const-string v28, "launcher_icon"

    invoke-virtual/range {v26 .. v28}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    :goto_0
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "format_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 497
    .local v12, "formatTextView":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "type_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 500
    .local v23, "typeTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/16 v25, 0x3

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v14

    .line 503
    .local v14, "formatter":Ljava/text/DateFormat;
    new-instance v25, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v26

    invoke-direct/range {v25 .. v27}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 504
    .local v13, "formattedTime":Ljava/lang/String;
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "time_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 505
    .local v22, "timeTextView":Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "meta_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 509
    .local v16, "metaTextView":Landroid/widget/TextView;
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "meta_text_view_label"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 510
    .local v17, "metaTextViewLabel":Landroid/view/View;
    const/16 v25, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    const/16 v25, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    .line 513
    .local v18, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    if-eqz v18, :cond_3

    .line 514
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v25, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    .local v19, "metadataText":Ljava/lang/StringBuilder;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 516
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 517
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0xa

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 493
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v12    # "formatTextView":Landroid/widget/TextView;
    .end local v13    # "formattedTime":Ljava/lang/String;
    .end local v14    # "formatter":Ljava/text/DateFormat;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "metaTextView":Landroid/widget/TextView;
    .end local v17    # "metaTextViewLabel":Landroid/view/View;
    .end local v18    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v19    # "metadataText":Ljava/lang/StringBuilder;
    .end local v22    # "timeTextView":Landroid/widget/TextView;
    .end local v23    # "typeTextView":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 520
    .restart local v12    # "formatTextView":Landroid/widget/TextView;
    .restart local v13    # "formattedTime":Ljava/lang/String;
    .restart local v14    # "formatter":Ljava/text/DateFormat;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "metaTextView":Landroid/widget/TextView;
    .restart local v17    # "metaTextViewLabel":Landroid/view/View;
    .restart local v18    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .restart local v19    # "metadataText":Ljava/lang/StringBuilder;
    .restart local v22    # "timeTextView":Landroid/widget/TextView;
    .restart local v23    # "typeTextView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_3

    .line 521
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 522
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "metadataText":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "contents_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 529
    .local v9, "contentsTextView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v10

    .line 530
    .local v10, "displayContents":Ljava/lang/CharSequence;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const/16 v25, 0x16

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v26

    div-int/lit8 v26, v26, 0x4

    rsub-int/lit8 v26, v26, 0x20

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 533
    .local v20, "scaledSize":I
    const/16 v25, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 535
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "contents_supplement_text_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 536
    .local v21, "supplementTextView":Landroid/widget/TextView;
    const-string v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v26, "preferences_supplemental"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->maybeInvokeRetrieval(Landroid/widget/TextView;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    .line 546
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonCount()I

    move-result v6

    .line 547
    .local v6, "buttonCount":I
    sget-object v25, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v26, "id"

    const-string v27, "result_button_view"

    invoke-virtual/range {v25 .. v27}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 548
    .local v7, "buttonView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 549
    const/16 v24, 0x0

    .local v24, "x":I
    :goto_2
    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 550
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 551
    .local v5, "button":Landroid/widget/TextView;
    move/from16 v0, v24

    if-ge v0, v6, :cond_5

    .line 552
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/ResultHandler;->getButtonText(I)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 554
    new-instance v25, Lcom/google/zxing/client/android/result/ResultButtonListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/result/ResultButtonListener;-><init>(Lcom/google/zxing/client/android/result/ResultHandler;I)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 556
    :cond_5
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 560
    .end local v5    # "button":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v25

    if-nez v25, :cond_7

    .line 561
    const-string v25, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/ClipboardManager;

    .line 562
    .local v8, "clipboard":Landroid/text/ClipboardManager;
    if-eqz v10, :cond_7

    .line 563
    invoke-virtual {v8, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 566
    .end local v8    # "clipboard":Landroid/text/ClipboardManager;
    :cond_7
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 698
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_0
    return-void

    .line 705
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 707
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v2, :cond_2

    .line 708
    new-instance v2, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 710
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 714
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private static isZXingURL(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 260
    if-nez p0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v4

    .line 263
    :cond_1
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->ZXING_URLS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 264
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    const/4 v4, 0x1

    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetStatusView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 739
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "string"

    const-string v3, "msg_default_status"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 741
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v4}, Lcom/google/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 744
    return-void
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMS"    # J

    .prologue
    .line 661
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 662
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showHelpOnFirstLaunch()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.google.zxing.client.android"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 677
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 678
    .local v0, "currentVersion":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 679
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "preferences_help_version_shown"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 680
    .local v4, "lastVersion":I
    if-le v0, v4, :cond_0

    .line 681
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "preferences_help_version_shown"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 682
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/google/zxing/client/android/HelpActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    if-nez v4, :cond_1

    const-string v5, "index.html"

    .line 686
    .local v5, "page":Ljava/lang/String;
    :goto_0
    const-string v8, "requested_page_key"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 688
    const/4 v7, 0x1

    .line 693
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v5    # "page":Ljava/lang/String;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return v7

    .line 685
    .restart local v0    # "currentVersion":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "lastVersion":I
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "whatsnew.html"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v0    # "currentVersion":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "lastVersion":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 748
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 409
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 410
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 411
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v3

    .line 413
    .local v3, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 414
    .local v0, "fromLiveScan":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 415
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v5, p1, v3}, Lcom/google/zxing/client/android/history/HistoryManager;->addHistoryItem(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;)V

    .line 417
    iget-object v5, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 418
    invoke-direct {p0, p2, p1}, Lcom/google/zxing/client/android/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 421
    :cond_0
    sget-object v5, Lcom/google/zxing/client/android/CaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    iget-object v6, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 446
    :goto_1
    return-void

    .end local v0    # "fromLiveScan":Z
    :cond_1
    move v0, v4

    .line 413
    goto :goto_0

    .line 424
    .restart local v0    # "fromLiveScan":Z
    :pswitch_0
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 427
    :pswitch_1
    iget-object v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 428
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 430
    :cond_2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 434
    :pswitch_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 435
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    const-string v5, "preferences_bulk_mode"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v8, "string"

    const-string v9, "msg_bulk_mode_scanned"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 440
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_1

    .line 442
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v3, p2}, Lcom/google/zxing/client/android/CaptureActivity;->handleDecodeInternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 354
    if-ne p2, v3, :cond_0

    .line 355
    const v2, 0xbacc

    if-ne p1, v2, :cond_0

    .line 356
    const-string v2, "ITEM_NUMBER"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, "itemNumber":I
    if-ltz v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v2, v1}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistoryItem(I)Lcom/google/zxing/client/android/history/HistoryItem;

    move-result-object v0

    .line 359
    .local v0, "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 363
    .end local v0    # "historyItem":Lcom/google/zxing/client/android/history/HistoryItem;
    .end local v1    # "itemNumber":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v1, Lcom/google/zxing/FakeR;

    invoke-direct {v1, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 145
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 146
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "layout"

    const-string v3, "capture"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 149
    iput-boolean v4, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 150
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 151
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryManager;->trimHistory()V

    .line 152
    new-instance v1, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 153
    new-instance v1, Lcom/google/zxing/client/android/BeepManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 155
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "xml"

    const-string v3, "preferences"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 158
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 325
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "menu"

    const-string v3, "capture"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->shutdown()V

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 291
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 295
    sparse-switch p1, :sswitch_data_0

    .line 319
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 297
    :sswitch_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_1

    .line 298
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 299
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_0

    .line 303
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 313
    :sswitch_2
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 316
    :sswitch_3
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 334
    .local v1, "itemId":I
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "menu_share"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 335
    const-class v2, Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 337
    :cond_0
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "menu_history"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 338
    const-class v2, Lcom/google/zxing/client/android/history/HistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const v2, 0xbacc

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 340
    :cond_1
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "menu_settings"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 341
    const-class v2, Lcom/google/zxing/client/android/PreferencesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :cond_2
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "menu_help"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 344
    const-class v2, Lcom/google/zxing/client/android/HelpActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 273
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onPause()V

    .line 278
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 279
    iget-boolean v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 280
    sget-object v2, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "id"

    const-string v4, "preview_view"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 281
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 282
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 284
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 285
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    new-instance v10, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 170
    sget-object v10, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v11, "id"

    const-string v12, "viewfinder_view"

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/client/android/ViewfinderView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 171
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v11, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v11}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 173
    sget-object v10, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v11, "id"

    const-string v12, "result_view"

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->resultView:Landroid/view/View;

    .line 174
    sget-object v10, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v11, "id"

    const-string v12, "status_view"

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    .line 176
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 177
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 179
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 181
    sget-object v10, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v11, "id"

    const-string v12, "preview_view"

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    .line 182
    .local v8, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 183
    .local v7, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v10, :cond_4

    .line 186
    invoke-direct {p0, v7}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 193
    :goto_0
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/BeepManager;->updatePrefs()V

    .line 195
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v10}, Lcom/google/zxing/client/android/InactivityTimer;->onResume()V

    .line 197
    invoke-virtual {p0}, Lcom/google/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 199
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 200
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "preferences_copy_to_clipboard"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_0

    const-string v10, "SAVE_HISTORY"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->copyToClipboard:Z

    .line 204
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 205
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 206
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 208
    if-eqz v5, :cond_3

    .line 210
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "dataString":Ljava/lang/String;
    const-string v10, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 216
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 217
    invoke-static {v5}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 219
    const-string v10, "SCAN_WIDTH"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "SCAN_HEIGHT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 220
    const-string v10, "SCAN_WIDTH"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 221
    .local v9, "width":I
    const-string v10, "SCAN_HEIGHT"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 222
    .local v3, "height":I
    if-lez v9, :cond_1

    if-lez v3, :cond_1

    .line 223
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v10, v9, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 227
    .end local v3    # "height":I
    .end local v9    # "width":I
    :cond_1
    const-string v10, "PROMPT_MESSAGE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 229
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v10, "CHARACTER_SET"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 257
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_3
    return-void

    .line 189
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-interface {v7, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 190
    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_0

    .line 200
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 232
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "dataString":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    const-string v10, "http://www.google"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "/m/products/scan"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 237
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 238
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 239
    sget-object v10, Lcom/google/zxing/client/android/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Collection;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    .line 241
    :cond_7
    invoke-static {v2}, Lcom/google/zxing/client/android/CaptureActivity;->isZXingURL(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 245
    sget-object v10, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 246
    iput-object v2, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    .line 247
    iget-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->sourceUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 248
    .local v4, "inputUri":Landroid/net/Uri;
    const-string v10, "ret"

    invoke-virtual {v4, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->returnUrlTemplate:Ljava/lang/String;

    .line 249
    const-string v10, "raw"

    invoke-virtual {v4, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->returnRaw:Z

    .line 250
    invoke-static {v4}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v10

    iput-object v10, p0, Lcom/google/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    goto :goto_2

    .line 249
    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 4
    .param p1, "delayMS"    # J

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "id"

    const-string v3, "restart_preview"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 736
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 400
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 388
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 390
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 395
    return-void
.end method
