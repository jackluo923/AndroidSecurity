.class final Lcom/appyet/b/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/a;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/o;->b:Lcom/appyet/b/a/a;

    iput-object p2, p0, Lcom/appyet/b/a/o;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/b/a/o;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/data/FeedItem;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
