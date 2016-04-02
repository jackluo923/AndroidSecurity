.class final Lcom/appyet/b/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/b/a/a;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/l;->a:Lcom/appyet/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    :try_start_0
    const-string v0, "href"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/b/a/l;->a:Lcom/appyet/b/a/a;

    iget-object v0, v0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "rel"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "rel"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alternate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/b/a/l;->a:Lcom/appyet/b/a/a;

    iget-object v0, v0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    const-string v1, "href"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setWebLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
