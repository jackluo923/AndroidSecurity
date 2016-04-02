.class public Lcom/alipay/android/lib/plusin/protocol/FrameData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Lcom/alipay/android/app/net/Request;

.field private b:Lcom/alipay/android/app/net/Response;

.field private c:I

.field private d:Lcom/alipay/android/app/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->a:Lcom/alipay/android/app/net/Request;

    iput-object p2, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b:Lcom/alipay/android/app/net/Response;

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->c:I

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->a:Lcom/alipay/android/app/net/Request;

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b:Lcom/alipay/android/app/net/Response;

    iput-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public final h()Lcom/alipay/android/app/net/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->a:Lcom/alipay/android/app/net/Request;

    return-object v0
.end method

.method public final i()Lcom/alipay/android/app/net/Response;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b:Lcom/alipay/android/app/net/Response;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->c:I

    return v0
.end method

.method public final k()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/lib/plusin/protocol/FrameData;->d:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method
