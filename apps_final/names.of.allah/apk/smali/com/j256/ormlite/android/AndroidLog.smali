.class public Lcom/j256/ormlite/android/AndroidLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# static fields
.field private static final ALL_LOGS_NAME:Ljava/lang/String; = "ORMLite"

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final REFRESH_LEVEL_CACHE_EVERY:I = 0xc8


# instance fields
.field private className:Ljava/lang/String;

.field private final levelCache:[Z

.field private volatile levelCacheC:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x17

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/j256/ormlite/logger/Log$Level;->values()[Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v0

    if-le v0, v1, :cond_2

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLog;->refreshLevelCache()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isLevelEnabledInternal(I)Z
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORMLite"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I
    .locals 4

    const/4 v1, 0x6

    const/4 v0, 0x4

    sget-object v2, Lcom/j256/ormlite/android/AndroidLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private refreshLevelCache()V
    .locals 6

    invoke-static {}, Lcom/j256/ormlite/logger/Log$Level;->values()[Lcom/j256/ormlite/logger/Log$Level;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v3

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    invoke-direct {p0, v3}, Lcom/j256/ormlite/android/AndroidLog;->isLevelEnabledInternal(I)Z

    move-result v5

    aput-boolean v5, v4, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 2

    iget v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidLog;->refreshLevelCache()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCacheC:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidLog;->levelToAndroidLevel(Lcom/j256/ormlite/logger/Log$Level;)I

    move-result v0

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidLog;->levelCache:[Z

    aget-boolean v0, v1, v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/j256/ormlite/android/AndroidLog;->isLevelEnabledInternal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/android/AndroidLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/j256/ormlite/android/AndroidLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidLog;->className:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
