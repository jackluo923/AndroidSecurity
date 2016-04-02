.class final Lcom/alipay/android/phone/globalsearch/a/e;
.super Ljava/lang/Object;
.source "ChatMessageDataSource.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/globalsearch/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/globalsearch/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/a/e;->a:Lcom/alipay/android/phone/globalsearch/a/d;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChatMessageList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/e;->a:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->b(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/e;->a:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->b(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChatName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/e;->a:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->a(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/a/e;->a:Lcom/alipay/android/phone/globalsearch/a/d;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/d;->a(Lcom/alipay/android/phone/globalsearch/a/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
