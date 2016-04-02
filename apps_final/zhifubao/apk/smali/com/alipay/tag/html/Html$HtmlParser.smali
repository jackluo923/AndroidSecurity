.class Lcom/alipay/tag/html/Html$HtmlParser;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/alipay/tag/html/Html$HtmlParser;->a:Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;
    .locals 1

    sget-object v0, Lcom/alipay/tag/html/Html$HtmlParser;->a:Lcom/alipay/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method
