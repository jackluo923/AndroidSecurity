.class public Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;
.super Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
.source "SearchItemModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 18
    const-string/jumbo v0, "\u67e5\u770b\u66f4\u591a"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->c:Ljava/lang/String;

    .line 14
    return-void
.end method
