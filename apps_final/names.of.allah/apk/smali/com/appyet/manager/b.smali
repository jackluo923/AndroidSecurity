.class public final Lcom/appyet/manager/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WeChap3awEbr"

    iput-object v0, p0, Lcom/appyet/manager/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    invoke-direct {p0}, Lcom/appyet/manager/b;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->IsShowAd:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v2, "a15170387834572"

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdBanner:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v2, "a15170387834572"

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v2, ""

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v2, ""

    iput-object v2, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Lcom/appyet/f/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appyet/manager/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appyet/b/a/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appyet/manager/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appyet/manager/al;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appyet/manager/ar;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/appyet/d/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appyet/f/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/a/r;

    invoke-direct {v1}, Lcom/google/a/r;-><init>()V

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    iput-object v2, v1, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/a/r;->a()Lcom/google/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    const-class v3, Lcom/appyet/metadata/Metadata;

    invoke-virtual {v1, v0, v3}, Lcom/google/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/Metadata;

    iput-object v0, v2, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataApplication;->PackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->IsShowAd:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, "a15170387834572"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, "a15170387834572"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, ""

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, ""

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget v1, v1, Lcom/appyet/metadata/MetadataApplication;->ApplicationTypeId:I

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->SubscriptionExpireDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->SubscriptionExpireDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->IsShowAd:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, "a15170387834572"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, "a15170387834572"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, ""

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    const-string v1, ""

    iput-object v1, v0, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private e()Lcom/appyet/a/a;
    .locals 5

    const/16 v2, 0x64

    const/4 v4, 0x1

    new-instance v0, Lcom/appyet/a/a;

    invoke-direct {v0}, Lcom/appyet/a/a;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->IsValid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->IsExpired:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->IsShowAd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdAllocation:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    const-string v1, "4e9e34fb3d06472b"

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    const-string v1, "936668ecf7014517"

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/util/Random;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v2, v2, Lcom/appyet/metadata/MetadataAppSync;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->r:Lcom/appyet/metadata/MetadataAppSync;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataAppSync;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->IsShowAd:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_c

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/util/Random;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v2, v2, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v2, v2, Lcom/appyet/metadata/MetadataApplication;->UserAdAllocation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->UserAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataApplication;->VendorAdmobIdFullBanner:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/appyet/manager/b;->e()Lcom/appyet/a/a;

    move-result-object v0

    iget-object v1, v0, Lcom/appyet/a/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v0, v0, Lcom/appyet/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/appyet/manager/c;

    invoke-direct {v1, p0, p2}, Lcom/appyet/manager/c;-><init>(Lcom/appyet/manager/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appyet/manager/b;->b:Lcom/appyet/context/ApplicationContext;

    iget v1, v1, Lcom/appyet/context/ApplicationContext;->y:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v0, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    iget-object v0, v0, Lcom/appyet/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/appyet/manager/b;->c:Lcom/google/android/gms/ads/AdView;

    goto :goto_0
.end method
