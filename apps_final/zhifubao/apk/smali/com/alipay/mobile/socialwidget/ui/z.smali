.class final Lcom/alipay/mobile/socialwidget/ui/z;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/y;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/y;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/z;->b:I

    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/z;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialwidget/ui/z;->d:I

    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/z;->e:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 172
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->b:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/y;->a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionUnread(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/y;->a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionRead(Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/y;->a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/z;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/y;->a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/z;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/z;->a:Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/y;->a(Lcom/alipay/mobile/socialwidget/ui/y;)Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 188
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/z;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 187
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
