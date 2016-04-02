.class final Lcom/alipay/mobile/socialwidget/ui/l;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/RippleView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/l;->a:Lcom/alipay/mobile/socialwidget/ui/RippleView;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/l;->a:Lcom/alipay/mobile/socialwidget/ui/RippleView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->invalidate()V

    .line 30
    return-void
.end method
