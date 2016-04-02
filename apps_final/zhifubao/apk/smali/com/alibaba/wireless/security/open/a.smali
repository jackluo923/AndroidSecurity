.class public final Lcom/alibaba/wireless/security/open/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/wireless/security/open/a;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/open/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/a;
    .locals 1

    sget-object v0, Lcom/alibaba/wireless/security/open/a;->a:Lcom/alibaba/wireless/security/open/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/a;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/wireless/security/open/a;->a:Lcom/alibaba/wireless/security/open/a;

    :cond_0
    sget-object v0, Lcom/alibaba/wireless/security/open/a;->a:Lcom/alibaba/wireless/security/open/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0xf

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/dynamicupdatelib/DynamicUpdateLibAdapter;->setApplicationContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v2, 0x1

    new-instance v3, Lcom/alibaba/wireless/security/open/securesignature/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/securesignature/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v2, 0x2

    new-instance v3, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v1, 0x3

    new-instance v2, Lcom/alibaba/wireless/security/open/staticdatastore/a;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/staticdatastore/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v2, 0x5

    new-instance v3, Lcom/alibaba/wireless/security/open/datacollection/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/datacollection/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v1, 0x6

    new-instance v2, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v2, 0x7

    new-instance v3, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v2, 0x9

    new-instance v3, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/statickeyencrypt/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v1, 0xa

    new-instance v2, Lcom/alibaba/wireless/security/open/opensdk/a;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/opensdk/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v2, 0xb

    new-instance v3, Lcom/alibaba/wireless/security/open/umid/a;

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {v3, v0}, Lcom/alibaba/wireless/security/open/umid/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v1, 0xc

    new-instance v2, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/a;

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-direct {v2, p1}, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/a;-><init>(Landroid/content/ContextWrapper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v1, 0xd

    new-instance v2, Lcom/alibaba/wireless/security/open/atlasencrypt/a;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/atlasencrypt/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v1, 0xe

    new-instance v2, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/wireless/security/open/IComponent;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/IComponent;

    return-object v0
.end method

.method public final a()Lcom/alibaba/wireless/security/open/umid/a;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/umid/a;

    return-object v0
.end method

.method public final b()Lcom/alibaba/wireless/security/open/staticdatastore/a;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/a;->b:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/staticdatastore/a;

    return-object v0
.end method
