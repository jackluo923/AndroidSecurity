.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;
.super Ljava/lang/Object;
.source "MoreDataFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Z)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    iput-boolean p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/aa;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;Z)V

    .line 92
    return-void
.end method
