.class final Lcom/alipay/mobile/socialwidget/ui/x;
.super Ljava/lang/Object;
.source "SocialRecentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/w;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/w;ILjava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->b:I

    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/socialwidget/ui/x;->f:Landroid/database/Cursor;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 169
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->b:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    move-result-object v0

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_visual"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 246
    :cond_1
    :goto_1
    return-void

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionUnread(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkunread"

    .line 173
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->markSessionRead(Ljava/lang/String;)I

    .line 179
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkread"

    .line 180
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_3
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto/16 :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    .line 189
    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v4, "top"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    .line 188
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->operateRecentSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarkuntop"

    .line 190
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :pswitch_4
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInternalType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto/16 :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    .line 199
    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v4, "top"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    .line 198
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->operateRecentSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentmarktop"

    .line 200
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :pswitch_5
    const/4 v0, -0x1

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    if-ne v0, v1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->f:Landroid/database/Cursor;

    const-string/jumbo v2, "lastSenderId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_4

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSessions(Ljava/util/List;)V

    goto/16 :goto_1

    .line 209
    :cond_4
    aget-object v5, v2, v1

    .line 211
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 210
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 214
    const-string/jumbo v0, "1"

    .line 213
    invoke-static {v0, v5}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    packed-switch v0, :pswitch_data_1

    .line 237
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->d:I

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const-string/jumbo v2, "recentdelete"

    .line 237
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_7
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 223
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto/16 :goto_0

    .line 230
    :pswitch_8
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->deleteAllMsgs()V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/x;->a:Lcom/alipay/mobile/socialwidget/ui/w;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/w;->a(Lcom/alipay/mobile/socialwidget/ui/w;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/x;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->markFriendOrGroupTop(ILjava/lang/String;Z)Z

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 221
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
