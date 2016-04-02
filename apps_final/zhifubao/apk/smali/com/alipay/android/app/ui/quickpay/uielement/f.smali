.class final Lcom/alipay/android/app/ui/quickpay/uielement/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/f;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/f;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/f;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Ljava/lang/Object;)V

    return-void
.end method
