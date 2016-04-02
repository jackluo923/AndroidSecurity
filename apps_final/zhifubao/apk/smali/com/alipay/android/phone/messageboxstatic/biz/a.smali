.class final Lcom/alipay/android/phone/messageboxstatic/biz/a;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/QueryListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxstatic/biz/a;)Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/a;->a:Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;

    return-object v0
.end method


# virtual methods
.method public final doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public final doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/b;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/a;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public final doQuery(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public final doQuery(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method
