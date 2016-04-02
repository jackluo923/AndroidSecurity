.class public final Lcom/taobao/wireless/security/sdk/rootdetect/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/i/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/i/a;

    invoke-direct {v0}, Lcom/taobao/wireless/security/adapter/i/a;-><init>()V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/rootdetect/a;->a:Lcom/taobao/wireless/security/adapter/i/a;

    return-void
.end method


# virtual methods
.method public final isRoot()Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/rootdetect/a;->a:Lcom/taobao/wireless/security/adapter/i/a;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/i/a;->a()Z

    move-result v0

    return v0
.end method
