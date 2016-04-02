.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;
.super Ljava/lang/Object;
.source "MoreDataFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Ljava/util/List;)V

    .line 78
    return-void
.end method
