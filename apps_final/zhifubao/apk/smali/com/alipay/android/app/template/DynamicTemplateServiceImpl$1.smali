.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$1;
.super Landroid/support/v4/util/LruCache;
.source "DynamicTemplateServiceImpl.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    iget v0, p2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->g:I

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
