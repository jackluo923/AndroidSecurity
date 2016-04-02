.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;->c:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Ljava/util/List;Z)V

    return-void
.end method
