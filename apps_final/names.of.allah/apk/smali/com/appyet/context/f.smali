.class public final Lcom/appyet/context/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/appyet/data/Module;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/appyet/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/appyet/metadata/MetadataModuleFeed;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Long;

.field public g:Lcom/appyet/context/d;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field private k:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/context/f;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/context/f;->j:Z

    iput-object p1, p0, Lcom/appyet/context/f;->k:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/context/f;->k:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleFeedSqls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/appyet/metadata/MetadataModuleFeedSql;

    iget-object v0, p0, Lcom/appyet/context/f;->k:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModule;

    iget v4, v0, Lcom/appyet/metadata/MetadataModule;->Id:I

    iget v5, v1, Lcom/appyet/metadata/MetadataModuleFeedSql;->ModuleId:I

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    iget-object v4, p0, Lcom/appyet/context/f;->a:Lcom/appyet/data/Module;

    invoke-virtual {v4}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/context/f;->k:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleFeedSql;->Query:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/d;->b(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
