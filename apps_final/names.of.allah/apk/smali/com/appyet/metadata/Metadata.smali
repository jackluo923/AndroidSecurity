.class public Lcom/appyet/metadata/Metadata;
.super Ljava/lang/Object;


# instance fields
.field public MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

.field public MetadataLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataLanguage;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataModuleFeedSqls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataModuleFeedSql;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataModuleFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataModuleFeed;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataModuleForums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataModuleForum;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataModuleWebs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataModuleWeb;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataModule;",
            ">;"
        }
    .end annotation
.end field

.field public MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

.field public MetadataThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/metadata/MetadataTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appyet/metadata/MetadataApplication;

    invoke-direct {v0}, Lcom/appyet/metadata/MetadataApplication;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    new-instance v0, Lcom/appyet/metadata/MetadataSetting;

    invoke-direct {v0}, Lcom/appyet/metadata/MetadataSetting;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataModuleFeeds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataModuleWebs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataLanguages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataModuleFeedSqls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/metadata/Metadata;->MetadataModuleForums:Ljava/util/List;

    return-void
.end method
