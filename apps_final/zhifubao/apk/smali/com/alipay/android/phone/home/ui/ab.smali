.class final Lcom/alipay/android/phone/home/ui/ab;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/aa;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/aa;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aa;->a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Ljava/util/List;)V

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "notify, "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aa;->a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c()V

    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aa;->a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 280
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
