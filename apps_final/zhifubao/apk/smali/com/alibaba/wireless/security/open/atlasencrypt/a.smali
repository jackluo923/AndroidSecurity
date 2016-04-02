.class public final Lcom/alibaba/wireless/security/open/atlasencrypt/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/atlasencrypt/IAtlasEncryptComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/a/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/a/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/atlasencrypt/a;->a:Lcom/taobao/wireless/security/adapter/a/a;

    return-void
.end method


# virtual methods
.method public final atlasSafeEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/atlasencrypt/a;->a:Lcom/taobao/wireless/security/adapter/a/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/atlasencrypt/a;->a:Lcom/taobao/wireless/security/adapter/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, ""

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
