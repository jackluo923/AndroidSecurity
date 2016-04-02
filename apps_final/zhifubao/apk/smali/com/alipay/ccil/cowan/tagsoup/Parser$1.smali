.class Lcom/alipay/ccil/cowan/tagsoup/Parser$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/ccil/cowan/tagsoup/AutoDetector;


# instance fields
.field final synthetic this$0:Lcom/alipay/ccil/cowan/tagsoup/Parser;


# direct methods
.method constructor <init>(Lcom/alipay/ccil/cowan/tagsoup/Parser;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Parser$1;->this$0:Lcom/alipay/ccil/cowan/tagsoup/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
