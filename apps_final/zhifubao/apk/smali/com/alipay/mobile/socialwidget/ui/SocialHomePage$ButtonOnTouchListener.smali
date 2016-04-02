.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 797
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 800
    iput-wide v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    .line 802
    iput-wide v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 810
    iput v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 812
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    .line 813
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    .line 829
    :cond_1
    :goto_0
    return v4

    .line 815
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    .line 818
    iget-wide v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    iget-wide v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762tab\u53cc\u51fb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_3
    :goto_1
    iput v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->b:I

    iput-wide v5, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->c:J

    iput-wide v5, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;->d:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
