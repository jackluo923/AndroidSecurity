.class public Lcom/alipay/android/app/template/markup/MarkFactory;
.super Ljava/lang/Object;
.source "MarkFactory.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/markup/MarkFull;

.field private static b:Lcom/alipay/android/app/template/markup/Mark;

.field private static c:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->a:Lcom/alipay/android/app/template/markup/MarkFull;

    .line 22
    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->b:Lcom/alipay/android/app/template/markup/Mark;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->c:Ljava/lang/Byte;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindObserver(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstanceSimpleMark()Lcom/alipay/android/app/template/markup/Mark;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/markup/Mark;->init(Lcom/alibaba/fastjson/JSONObject;)V

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/markup/MarkFull;
    .locals 2

    .prologue
    .line 35
    sget-object v1, Lcom/alipay/android/app/template/markup/MarkFactory;->c:Ljava/lang/Byte;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->a:Lcom/alipay/android/app/template/markup/MarkFull;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/android/app/template/markup/MarkFull;

    invoke-direct {v0}, Lcom/alipay/android/app/template/markup/MarkFull;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->a:Lcom/alipay/android/app/template/markup/MarkFull;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->a:Lcom/alipay/android/app/template/markup/MarkFull;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstanceSimpleMark()Lcom/alipay/android/app/template/markup/Mark;
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lcom/alipay/android/app/template/markup/MarkFactory;->c:Ljava/lang/Byte;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->b:Lcom/alipay/android/app/template/markup/Mark;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/android/app/template/markup/Mark;

    invoke-direct {v0}, Lcom/alipay/android/app/template/markup/Mark;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->b:Lcom/alipay/android/app/template/markup/Mark;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/alipay/android/app/template/markup/MarkFactory;->b:Lcom/alipay/android/app/template/markup/Mark;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetObserver()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstanceSimpleMark()Lcom/alipay/android/app/template/markup/Mark;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/markup/Mark;->init(Lcom/alibaba/fastjson/JSONObject;)V

    .line 54
    return-void
.end method
