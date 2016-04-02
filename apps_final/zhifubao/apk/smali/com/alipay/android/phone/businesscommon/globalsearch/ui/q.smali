.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;
.super Ljava/lang/Object;
.source "MainSearchFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field final synthetic c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/q;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    .line 101
    return-void
.end method
