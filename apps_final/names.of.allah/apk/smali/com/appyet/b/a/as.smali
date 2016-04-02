.class final Lcom/appyet/b/a/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/b/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/as;->a:Lcom/appyet/b/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/b/a/as;->a:Lcom/appyet/b/a/w;

    iget-object v0, v0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/b/a/as;->a:Lcom/appyet/b/a/w;

    iget-object v0, v0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0, p1}, Lcom/appyet/data/Feed;->setPubDateString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
