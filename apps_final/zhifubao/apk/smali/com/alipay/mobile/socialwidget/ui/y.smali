.class final Lcom/alipay/mobile/socialwidget/ui/y;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/y;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/y;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/socialwidget/ui/y;->c:I

    iput-object p4, p0, Lcom/alipay/mobile/socialwidget/ui/y;->d:Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/y;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    return-object v0
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 6

    .prologue
    .line 169
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/z;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/y;->b:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/y;->c:I

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/ui/y;->d:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialwidget/ui/z;-><init>(Lcom/alipay/mobile/socialwidget/ui/y;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
