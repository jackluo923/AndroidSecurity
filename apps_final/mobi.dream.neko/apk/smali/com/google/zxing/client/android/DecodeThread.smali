.class final Lcom/google/zxing/client/android/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"


# instance fields
.field private final activity:Lcom/google/zxing/client/android/CaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 4
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/client/android/DecodeThread;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    .line 54
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    .line 59
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-class v1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 62
    const-string v1, "preferences_decode_1D"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/google/zxing/client/android/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_1
    const-string v1, "preferences_decode_QR"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    sget-object v1, Lcom/google/zxing/client/android/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_2
    const-string v1, "preferences_decode_Data_Matrix"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v1, Lcom/google/zxing/client/android/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Collection;

    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 72
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p3, :cond_4

    .line 75
    iget-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 92
    new-instance v0, Lcom/google/zxing/client/android/DecodeHandler;

    iget-object v1, p0, Lcom/google/zxing/client/android/DecodeThread;->activity:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v2, p0, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/DecodeHandler;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void
.end method
