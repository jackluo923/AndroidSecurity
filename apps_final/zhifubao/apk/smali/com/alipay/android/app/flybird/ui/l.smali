.class final Lcom/alipay/android/app/flybird/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/l;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/l;->a:I

    iput p3, p0, Lcom/alipay/android/app/flybird/ui/l;->b:I

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/l;->c:Ljava/lang/Object;

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/l;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/l;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/l;->a:I

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/l;->b:I

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/l;->c:Ljava/lang/Object;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/l;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(IILjava/lang/Object;I)V

    return-void
.end method
