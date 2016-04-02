.class Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ImageLoader.java"

    const-class v2, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "openConnection"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.net.URLConnection"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xec

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getInputStream"

    const-string/jumbo v3, "java.net.HttpURLConnection"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/ali/user/mobile/ui/widget/ImageLoader;Ljava/lang/String;Landroid/view/View;Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->this$0:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    .line 222
    iput-object p4, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 223
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->imageDownloadCallback:I

    invoke-virtual {p3, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 224
    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 258
    :goto_0
    return-object v0

    .line 230
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    .line 235
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "n/a"

    instance-of v5, v0, Ljava/net/URL;

    if-eqz v5, :cond_9

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " URL.open(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 246
    :goto_2
    :try_start_1
    const-string/jumbo v4, "ImageLoader"

    invoke-static {v4, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 248
    if-eqz v2, :cond_2

    .line 250
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 254
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 255
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v0, v1

    .line 258
    goto :goto_0

    .line 236
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    const/16 v2, 0x3a98

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 240
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 241
    sget-object v2, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 242
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    .line 248
    if-eqz v3, :cond_5

    .line 250
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 254
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    .line 244
    goto/16 :goto_0

    .line 241
    :catch_1
    move-exception v3

    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/aspect/Monitor;->ajc$after$com_alipay_mobile_aspect_Monitor$22$4ac36c16(Lorg/aspectj/lang/JoinPoint;)V

    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 245
    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    .line 247
    :catchall_0
    move-exception v0

    move-object v3, v1

    .line 248
    :goto_5
    if-eqz v1, :cond_7

    .line 250
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 254
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 255
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 257
    :cond_8
    throw v0

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 247
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 245
    :catch_6
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_2

    :cond_9
    move-object v0, v2

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 267
    iput-object v2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->this$0:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    # invokes: Lcom/ali/user/mobile/ui/widget/ImageLoader;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->access$0(Lcom/ali/user/mobile/ui/widget/ImageLoader;Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    move-result-object v0

    .line 269
    if-ne p0, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->imageDownloadCallback:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 271
    :cond_0
    iput-object v2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    .line 272
    iput-object v2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 273
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 281
    :cond_0
    if-eqz p1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->this$0:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    # invokes: Lcom/ali/user/mobile/ui/widget/ImageLoader;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
    invoke-static {v1, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->access$0(Lcom/ali/user/mobile/ui/widget/ImageLoader;Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    move-result-object v1

    .line 287
    if-ne p0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 289
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->imageDownloadCallback:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 305
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->a:Ljava/lang/String;

    .line 306
    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    .line 307
    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 308
    return-void

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->this$0:Lcom/ali/user/mobile/ui/widget/ImageLoader;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    # invokes: Lcom/ali/user/mobile/ui/widget/ImageLoader;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;
    invoke-static {v1, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->access$0(Lcom/ali/user/mobile/ui/widget/ImageLoader;Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;

    move-result-object v1

    .line 298
    if-ne p0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->c:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 300
    const-string/jumbo v2, "get image  reponse null"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;->onBitmapFailed(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->b:Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->imageDownloadCallback:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/ui/widget/ImageLoader$ImageDownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
