.class public Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;
.super Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Lcom/appyet/context/ApplicationContext;

.field private mAudioFocusChangeListener:Lcom/appyet/wrapper/AudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.appyet.wrapper.AudioFocusChangeListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    new-instance v0, Lcom/appyet/wrapper/AudioFocusChangeListener;

    iget-object v1, p0, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->mApplicationContext:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Lcom/appyet/wrapper/AudioFocusChangeListener;-><init>(Lcom/appyet/context/ApplicationContext;)V

    iput-object v0, p0, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->mAudioFocusChangeListener:Lcom/appyet/wrapper/AudioFocusChangeListener;

    return-void
.end method

.method public static checkAvailable()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abandonFocus(Landroid/media/AudioManager;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->mAudioFocusChangeListener:Lcom/appyet/wrapper/AudioFocusChangeListener;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public requestFocus(Landroid/media/AudioManager;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/appyet/wrapper/AudioFocusChangeListenerWrapper;->mAudioFocusChangeListener:Lcom/appyet/wrapper/AudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
