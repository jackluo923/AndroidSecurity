.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private data:Ljava/io/InputStream;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 467
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 468
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 469
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 470
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "txt"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 476
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 477
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 479
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_1
    return-void

    .line 479
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 460
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method static synthetic access$400(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$Response;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "error"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    const-string v1, "text/plain"

    invoke-direct {v0, p1, v1, p2}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 487
    return-void
.end method

.method private send(Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 500
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 501
    .local v5, "mime":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 502
    .local v2, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 505
    :try_start_0
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    if-nez v10, :cond_1

    .line 506
    new-instance v10, Ljava/lang/Error;

    const-string v11, "sendResponse(): Status can\'t be null."

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10

    .line 547
    :catch_0
    move-exception v10

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 509
    .local v7, "pw":Ljava/io/PrintWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP/1.0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v11}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    if-eqz v5, :cond_2

    .line 512
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    :cond_2
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v11, "Date"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    .line 516
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    :cond_4
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v10, :cond_5

    .line 520
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "key":Ljava/lang/String;
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 522
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 526
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 529
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v11, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v10, :cond_6

    .line 530
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 531
    .local v6, "pending":I
    const/16 v0, 0x4000

    .line 532
    .local v0, "BUFFER_SIZE":I
    new-array v1, v0, [B

    .line 533
    .local v1, "buff":[B
    :goto_2
    if-lez v6, :cond_6

    .line 534
    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    const/4 v12, 0x0

    if-le v6, v0, :cond_7

    move v10, v0

    :goto_3
    invoke-virtual {v11, v1, v12, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 535
    .local v8, "read":I
    if-gtz v8, :cond_8

    .line 543
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "buff":[B
    .end local v6    # "pending":I
    .end local v8    # "read":I
    :cond_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 544
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 545
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v10, :cond_0

    .line 546
    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "buff":[B
    .restart local v6    # "pending":I
    :cond_7
    move v10, v6

    .line 534
    goto :goto_3

    .line 538
    .restart local v8    # "read":I
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p1, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    sub-int/2addr v6, v8

    .line 541
    goto :goto_2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 493
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 573
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 574
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lfi/iki/elonen/NanoHTTPD$Method;

    .prologue
    .line 581
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 582
    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$Status;)V
    .locals 0
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .prologue
    .line 557
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 558
    return-void
.end method
