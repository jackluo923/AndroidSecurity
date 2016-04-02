.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 351
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "setRecentList"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 357
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 362
    :goto_1
    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    new-instance v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 363
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v3, v3, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mOnLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v4, v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v5}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/lang/String;)V

    .line 362
    iput-object v0, v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    .line 365
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APListView;->setDividerHeight(I)V

    .line 367
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryMode:I

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->updateRecentList()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method
