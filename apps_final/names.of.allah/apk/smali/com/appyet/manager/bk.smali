.class public final Lcom/appyet/manager/bk;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/manager/bk;->a:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/appyet/metadata/MetadataModuleWeb;
    .locals 6

    iget-object v0, p0, Lcom/appyet/manager/bk;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataModuleWebs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataModuleWeb;

    iget-object v1, p0, Lcom/appyet/manager/bk;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/metadata/MetadataModule;

    iget v4, v1, Lcom/appyet/metadata/MetadataModule;->Id:I

    iget v5, v0, Lcom/appyet/metadata/MetadataModuleWeb;->ModuleId:I

    if-ne v4, v5, :cond_1

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
