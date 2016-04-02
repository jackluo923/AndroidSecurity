.class public Lcom/alipay/ccil/cowan/tagsoup/PYXScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/ccil/cowan/tagsoup/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public scan(Ljava/io/Reader;Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v0, :cond_0

    array-length v7, v0

    if-ge v7, v6, :cond_1

    :cond_0
    new-array v0, v6, [C

    :cond_1
    invoke-virtual {v5, v2, v6, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v7, v0, v2

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v1, :cond_2

    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    :cond_2
    add-int/lit8 v1, v6, -0x1

    invoke-interface {p2, v0, v3, v1}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    move v1, v3

    goto :goto_0

    :sswitch_1
    if-eqz v1, :cond_3

    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v1, v2

    :cond_3
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    goto :goto_0

    :sswitch_2
    if-eqz v1, :cond_4

    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v1, v2

    :cond_4
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto :goto_0

    :sswitch_3
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v7, v5, -0x1

    invoke-interface {p2, v0, v3, v7}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    add-int/lit8 v7, v5, 0x1

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v0, v7, v5}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    goto :goto_0

    :sswitch_4
    if-eqz v1, :cond_5

    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v1, v2

    :cond_5
    const-string/jumbo v7, "-\\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xa

    aput-char v5, v0, v2

    invoke-interface {p2, v0, v2, v3}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :sswitch_5
    if-eqz v1, :cond_7

    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    move v1, v2

    :cond_7
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    goto :goto_0

    :cond_8
    invoke-interface {p2, v0, v2, v2}, Lcom/alipay/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2d -> :sswitch_4
        0x3f -> :sswitch_2
        0x41 -> :sswitch_3
        0x45 -> :sswitch_5
    .end sparse-switch
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method
