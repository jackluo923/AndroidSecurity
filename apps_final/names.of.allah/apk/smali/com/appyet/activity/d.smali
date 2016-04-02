.class final Lcom/appyet/activity/d;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/appyet/activity/CustomizeActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/CustomizeActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/activity/d;->a:Z

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v0, v0, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1}, Lcom/appyet/manager/d;->j()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1}, Lcom/appyet/manager/d;->d()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/activity/CustomizeActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/appyet/activity/d;->b:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v0, v0, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleFeedSqls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleFeedSql;

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModule;

    iget v2, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    iget v5, v0, Lcom/appyet/metadata/MetadataModuleFeedSql;->ModuleId:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v2, v2, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appyet/data/Module;

    iget-object v6, v1, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v1, p0, Lcom/appyet/activity/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v2

    iget-object v5, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v5, v5, Lcom/appyet/activity/CustomizeActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v6, v0, Lcom/appyet/metadata/MetadataModuleFeedSql;->Query:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/appyet/manager/d;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 15

    const/4 v11, 0x0

    const/4 v10, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super/range {p0 .. p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    invoke-static {v1}, Lcom/appyet/activity/CustomizeActivity;->a(Lcom/appyet/activity/CustomizeActivity;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/Module;

    invoke-virtual {v1}, Lcom/appyet/data/Module;->getGroupName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v12, v1, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    new-instance v1, Lcom/appyet/activity/c;

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/appyet/activity/c;-><init>(Lcom/appyet/activity/CustomizeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v1}, Lcom/appyet/activity/b;->add(Ljava/lang/Object;)V

    :cond_0
    move v13, v11

    move-object v12, v10

    move-object v2, v3

    :goto_0
    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_7

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->e:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/appyet/data/Module;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getGroupName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v14, v1, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    new-instance v1, Lcom/appyet/activity/c;

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/appyet/activity/c;-><init>(Lcom/appyet/activity/CustomizeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v14, v1}, Lcom/appyet/activity/b;->add(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/appyet/activity/c;->g:Z

    move-object v12, v3

    :goto_1
    invoke-virtual {v10}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "download.png"

    invoke-virtual {v10, v1}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    :cond_1
    :goto_2
    new-instance v1, Lcom/appyet/activity/c;

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getStatusLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getIcon()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v10}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/appyet/activity/c;-><init>(Lcom/appyet/activity/CustomizeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v2, v2, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    invoke-virtual {v2, v1}, Lcom/appyet/activity/b;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move-object v2, v12

    move-object v12, v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sync_now.png"

    invoke-virtual {v10, v1}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Themes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "switch_theme.png"

    invoke-virtual {v10, v1}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "settings.png"

    invoke-virtual {v10, v1}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Customize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "customize.png"

    invoke-virtual {v10, v1}, Lcom/appyet/data/Module;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/appyet/activity/c;->g:Z

    :cond_8
    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->g:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v2, v2, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    invoke-static {v1}, Lcom/appyet/activity/CustomizeActivity;->b(Lcom/appyet/activity/CustomizeActivity;)Z

    :cond_9
    move v4, v11

    :goto_4
    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    invoke-virtual {v1}, Lcom/appyet/activity/b;->getCount()I

    move-result v1

    if-ge v4, v1, :cond_f

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    invoke-virtual {v1, v4}, Lcom/appyet/activity/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/activity/c;

    iget-object v2, v1, Lcom/appyet/activity/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/appyet/activity/c;->c:Ljava/lang/String;

    const-string v3, "Feed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v2, v2, Lcom/appyet/activity/CustomizeActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v11

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appyet/data/Feed;

    invoke-virtual {v2}, Lcom/appyet/data/Feed;->getModuleId()J

    move-result-wide v6

    iget-object v8, v1, Lcom/appyet/activity/c;->d:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    int-to-long v6, v3

    invoke-virtual {v2}, Lcom/appyet/data/Feed;->getUnreadCount()J

    move-result-wide v2

    add-long/2addr v2, v6

    long-to-int v2, v2

    :goto_6
    move v3, v2

    goto :goto_5

    :cond_a
    iget-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_e

    iget-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    :goto_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appyet/activity/d;->a:Z

    :cond_b
    :goto_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appyet/activity/d;->a:Z

    goto :goto_8

    :cond_d
    iget-object v2, v1, Lcom/appyet/activity/c;->c:Ljava/lang/String;

    const-string v3, "FeedQuery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/appyet/activity/d;->b:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/appyet/activity/c;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/appyet/activity/c;->b:Ljava/lang/String;

    goto :goto_7

    :cond_f
    iget-boolean v1, p0, Lcom/appyet/activity/d;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appyet/activity/d;->c:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->d:Lcom/appyet/activity/b;

    invoke-virtual {v1}, Lcom/appyet/activity/b;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_10
    move v2, v3

    goto :goto_6

    :cond_11
    move-object v12, v2

    goto/16 :goto_1
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/activity/d;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
