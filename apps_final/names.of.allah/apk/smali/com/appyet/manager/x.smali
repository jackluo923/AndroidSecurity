.class final Lcom/appyet/manager/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/manager/d;


# direct methods
.method constructor <init>(Lcom/appyet/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 15

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getFeedDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getFeedItemDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getWebDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v7

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/appyet/data/DatabaseHelper;->getForumDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v8

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v9

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "module"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/appyet/metadata/MetadataModule;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->Name:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setName(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->Type:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setType(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->GroupName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setGroupName(Ljava/lang/String;)V

    iget v12, v1, Lcom/appyet/metadata/MetadataModule;->SortOrder:I

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setSortOrder(I)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "m"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "m"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/appyet/data/Module;->getLayout()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultLayout:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultLayout:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setLayout(Ljava/lang/String;)V

    :cond_3
    iget-boolean v12, v1, Lcom/appyet/metadata/MetadataModule;->IsHidden:Z

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setIsHidden(Z)V

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/data/Module;

    invoke-direct {v0}, Lcom/appyet/data/Module;-><init>()V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->Type:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setType(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->Name:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setName(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->GroupName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setGroupName(Ljava/lang/String;)V

    iget v12, v1, Lcom/appyet/metadata/MetadataModule;->SortOrder:I

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setSortOrder(I)V

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setGuid(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "m"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "m"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultLayout:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultLayout:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setLayout(Ljava/lang/String;)V

    :cond_5
    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModule;->IsHidden:Z

    invoke-virtual {v0, v1}, Lcom/appyet/data/Module;->setIsHidden(Z)V

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_6
    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Lcom/appyet/metadata/MetadataModule;->DefaultIcon:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    iget-object v1, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v1, v1, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModule;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    if-nez v1, :cond_9

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    const-string v1, "ModuleId"

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    const-string v10, "FeedId"

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v10, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->a()Z

    goto :goto_4

    :cond_d
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v9

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v10

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleFeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleFeed;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/Feed;

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getGuid()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/appyet/metadata/MetadataModuleFeed;->Guid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->Encoding:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->IsAutoMobilize:Z

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setIsAutoMobilize(Z)V

    iget v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->ArticleNumberLimit:I

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Lcom/appyet/data/Feed;->setArticleNumberLimit(J)V

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v1, v2

    :goto_8
    if-nez v1, :cond_e

    new-instance v1, Lcom/appyet/data/Feed;

    invoke-direct {v1}, Lcom/appyet/data/Feed;-><init>()V

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->FeedUrl:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->Encoding:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget v13, v0, Lcom/appyet/metadata/MetadataModuleFeed;->ModuleId:I

    invoke-static {v12, v10, v13}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;Ljava/util/List;I)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/appyet/data/Feed;->setModuleId(J)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setCacheGuid(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setGuid(Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/appyet/metadata/MetadataModuleFeed;->IsAutoMobilize:Z

    invoke-virtual {v1, v12}, Lcom/appyet/data/Feed;->setIsAutoMobilize(Z)V

    iget v0, v0, Lcom/appyet/metadata/MetadataModuleFeed;->ArticleNumberLimit:I

    int-to-long v12, v0

    invoke-virtual {v1, v12, v13}, Lcom/appyet/data/Feed;->setArticleNumberLimit(J)V

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto/16 :goto_7

    :cond_10
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed;

    iget-object v1, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v1, v1, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModuleFeeds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModuleFeed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getGuid()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->Guid:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    :goto_a
    if-nez v1, :cond_11

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    const-string v1, "FeedId"

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_b

    :cond_13
    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->a()Z

    goto :goto_9

    :cond_14
    invoke-interface {v7}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleWebs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleWeb;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/Web;

    invoke-virtual {v1}, Lcom/appyet/data/Web;->getGuid()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Guid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v10, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Type:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/appyet/data/Web;->setType(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Data:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/appyet/data/Web;->setData(Ljava/lang/String;)V

    invoke-interface {v7, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v1, v2

    :goto_d
    if-nez v1, :cond_15

    new-instance v1, Lcom/appyet/data/Web;

    invoke-direct {v1}, Lcom/appyet/data/Web;-><init>()V

    iget-object v10, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Type:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/appyet/data/Web;->setType(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Data:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/appyet/data/Web;->setData(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget v11, v0, Lcom/appyet/metadata/MetadataModuleWeb;->ModuleId:I

    invoke-static {v10, v5, v11}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;Ljava/util/List;I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/appyet/data/Web;->setModuleId(Ljava/lang/Long;)V

    iget-object v0, v0, Lcom/appyet/metadata/MetadataModuleWeb;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/data/Web;->setGuid(Ljava/lang/String;)V

    invoke-interface {v7, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_c

    :cond_17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Web;

    iget-object v1, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v1, v1, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModuleWebs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModuleWeb;

    invoke-virtual {v0}, Lcom/appyet/data/Web;->getGuid()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleWeb;->Guid:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    :goto_f
    if-nez v1, :cond_18

    invoke-interface {v7, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_e

    :cond_1a
    invoke-interface {v8}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v0, v0, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleForums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleForum;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/Forum;

    invoke-virtual {v1}, Lcom/appyet/data/Forum;->getGuid()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/appyet/metadata/MetadataModuleForum;->Guid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v7, v0, Lcom/appyet/metadata/MetadataModuleForum;->ForumUrl:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/appyet/data/Forum;->setLink(Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move v1, v2

    :goto_11
    if-nez v1, :cond_1b

    new-instance v1, Lcom/appyet/data/Forum;

    invoke-direct {v1}, Lcom/appyet/data/Forum;-><init>()V

    iget-object v7, v0, Lcom/appyet/metadata/MetadataModuleForum;->ForumUrl:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/appyet/data/Forum;->setLink(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget v9, v0, Lcom/appyet/metadata/MetadataModuleForum;->ModuleId:I

    invoke-static {v7, v5, v9}, Lcom/appyet/manager/d;->a(Lcom/appyet/manager/d;Ljava/util/List;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/appyet/data/Forum;->setModuleId(Ljava/lang/Long;)V

    iget-object v0, v0, Lcom/appyet/metadata/MetadataModuleForum;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/data/Forum;->setGuid(Ljava/lang/String;)V

    invoke-interface {v8, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_10

    :cond_1d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Forum;

    iget-object v1, p0, Lcom/appyet/manager/x;->a:Lcom/appyet/manager/d;

    iget-object v1, v1, Lcom/appyet/manager/d;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModuleForums:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModuleForum;

    invoke-virtual {v0}, Lcom/appyet/data/Forum;->getGuid()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleForum;->Guid:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    :goto_13
    if-nez v1, :cond_1e

    invoke-interface {v8, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    return-object v0

    :cond_21
    move v1, v3

    goto :goto_13

    :cond_22
    move v1, v3

    goto :goto_11

    :cond_23
    move v1, v3

    goto/16 :goto_f

    :cond_24
    move v1, v3

    goto/16 :goto_d

    :cond_25
    move v1, v3

    goto/16 :goto_a

    :cond_26
    move v1, v3

    goto/16 :goto_8

    :cond_27
    move v1, v3

    goto/16 :goto_5

    :cond_28
    move v0, v3

    goto/16 :goto_2
.end method
