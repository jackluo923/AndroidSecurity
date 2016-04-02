.class public final Lcom/alipay/android/phone/globalsearch/c/m;
.super Ljava/lang/Object;
.source "ItemManager.java"


# instance fields
.field a:Lcom/alipay/android/phone/globalsearch/c/g;

.field b:Lcom/alipay/android/phone/globalsearch/c/u;

.field c:Lcom/alipay/android/phone/globalsearch/c/p;

.field d:Lcom/alipay/android/phone/globalsearch/c/k;

.field e:Lcom/alipay/android/phone/globalsearch/c/c;

.field f:Lcom/alipay/android/phone/globalsearch/c/s;

.field g:Lcom/alipay/android/phone/globalsearch/c/q;

.field h:Lcom/alipay/android/phone/globalsearch/c/a;

.field i:Lcom/alipay/android/phone/globalsearch/c/e;

.field j:Lcom/alipay/android/phone/globalsearch/c/n;

.field k:Lcom/alipay/android/phone/globalsearch/c/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/g;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->a:Lcom/alipay/android/phone/globalsearch/c/g;

    .line 26
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/u;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/u;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->b:Lcom/alipay/android/phone/globalsearch/c/u;

    .line 27
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/p;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/p;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->c:Lcom/alipay/android/phone/globalsearch/c/p;

    .line 28
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/k;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->d:Lcom/alipay/android/phone/globalsearch/c/k;

    .line 29
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/c;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->e:Lcom/alipay/android/phone/globalsearch/c/c;

    .line 30
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/s;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/s;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->f:Lcom/alipay/android/phone/globalsearch/c/s;

    .line 31
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/q;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/q;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->g:Lcom/alipay/android/phone/globalsearch/c/q;

    .line 32
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/a;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->h:Lcom/alipay/android/phone/globalsearch/c/a;

    .line 33
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/e;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->i:Lcom/alipay/android/phone/globalsearch/c/e;

    .line 34
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/n;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->j:Lcom/alipay/android/phone/globalsearch/c/n;

    .line 35
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/i;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->k:Lcom/alipay/android/phone/globalsearch/c/i;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->a:Lcom/alipay/android/phone/globalsearch/c/g;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/g;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->b:Lcom/alipay/android/phone/globalsearch/c/u;

    check-cast p4, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/u;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->c:Lcom/alipay/android/phone/globalsearch/c/p;

    check-cast p4, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/p;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->d:Lcom/alipay/android/phone/globalsearch/c/k;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/k;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->e:Lcom/alipay/android/phone/globalsearch/c/c;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/c;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->f:Lcom/alipay/android/phone/globalsearch/c/s;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/s;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->g:Lcom/alipay/android/phone/globalsearch/c/q;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/q;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->h:Lcom/alipay/android/phone/globalsearch/c/a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/a;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_7
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->i:Lcom/alipay/android/phone/globalsearch/c/e;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/e;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_8
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->j:Lcom/alipay/android/phone/globalsearch/c/n;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/n;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_9
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/m;->k:Lcom/alipay/android/phone/globalsearch/c/i;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/phone/globalsearch/c/i;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
