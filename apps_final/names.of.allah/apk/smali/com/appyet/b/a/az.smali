.class final Lcom/appyet/b/a/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/b/a/ay;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/az;->a:Lcom/appyet/b/a/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/b/a/az;->a:Lcom/appyet/b/a/ay;

    iget-object v0, v0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/b/a/az;->a:Lcom/appyet/b/a/ay;

    iget-object v0, v0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/b/a/az;->a:Lcom/appyet/b/a/ay;

    iget-object v0, v0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0, p1}, Lcom/appyet/data/Feed;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
