.class final Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "ProductResultInfoRetriever.java"


# static fields
.field private static final PRODUCT_NAME_PRICE_PATTERNS:[Ljava/util/regex/Pattern;


# instance fields
.field private final context:Landroid/content/Context;

.field private final productID:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    const-string v2, ",event\\)\">([^<]+)</a></h3>.+<span class=psrp>([^<]+)</span>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owb63p\">([^<]+).+zdi3pb\">([^<]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->PRODUCT_NAME_PRICE_PATTERNS:[Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 46
    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    .line 47
    const-string v0, "string"

    const-string v1, "msg_google_product"

    invoke-static {p4, v0, v1}, Lcom/google/zxing/FakeR;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->source:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private static unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 54
    iget-object v8, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "encodedProductID":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.google."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/m/products?ie=utf8&oe=utf8&scoring=p&source=zxing&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "uri":Ljava/lang/String;
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper$ContentType;->HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static {v7, v8}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 59
    .local v1, "content":Ljava/lang/CharSequence;
    sget-object v0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->PRODUCT_NAME_PRICE_PATTERNS:[Ljava/util/regex/Pattern;

    .local v0, "arr$":[Ljava/util/regex/Pattern;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 60
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 61
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 62
    iget-object v8, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->productID:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->source:Ljava/lang/String;

    new-array v10, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {p0, v8, v9, v10, v7}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-void

    .line 59
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v6    # "p":Ljava/util/regex/Pattern;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
