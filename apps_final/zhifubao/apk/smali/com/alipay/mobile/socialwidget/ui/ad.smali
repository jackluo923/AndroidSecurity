.class final Lcom/alipay/mobile/socialwidget/ui/ad;
.super Ljava/lang/Object;
.source "StrangerSessionPage_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/ad;->b:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/ad;->a:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/ad;->b:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/ad;->a:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Landroid/database/Cursor;)V

    .line 80
    return-void
.end method
