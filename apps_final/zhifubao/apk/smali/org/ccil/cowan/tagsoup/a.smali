.class final Lorg/ccil/cowan/tagsoup/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ccil/cowan/tagsoup/AutoDetector;


# instance fields
.field final synthetic a:Lorg/ccil/cowan/tagsoup/Parser;


# direct methods
.method constructor <init>(Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/a;->a:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
