.class final Lcom/appyet/b/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/ah;->b:Lcom/appyet/b/a/w;

    iput-object p2, p0, Lcom/appyet/b/a/ah;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/b/a/ah;->a:Lcom/appyet/data/FeedItem;

    invoke-static {p1}, Lcom/appyet/d/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setEnclosureDuration(Ljava/lang/Integer;)V

    return-void
.end method
