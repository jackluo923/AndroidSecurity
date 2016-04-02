.class final Lcom/alipay/mobile/socialwidget/ui/w;
.super Ljava/lang/Object;
.source "SocialRecentListView.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/w;->a:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/w;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/socialwidget/ui/w;->c:I

    iput-object p4, p0, Lcom/alipay/mobile/socialwidget/ui/w;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/w;->e:Landroid/database/Cursor;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/w;->a:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    return-object v0
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 7

    .prologue
    .line 166
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/x;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/w;->b:Ljava/lang/String;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/w;->c:I

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/ui/w;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/socialwidget/ui/w;->e:Landroid/database/Cursor;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/socialwidget/ui/x;-><init>(Lcom/alipay/mobile/socialwidget/ui/w;ILjava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method
