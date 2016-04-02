.class Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$a;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$a;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    return-void
.end method
