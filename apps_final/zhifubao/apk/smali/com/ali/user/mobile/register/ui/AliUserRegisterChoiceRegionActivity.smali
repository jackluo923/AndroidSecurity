.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliUserRegisterChoiceRegionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_register_region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/base/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;


# instance fields
.field private a:Lcom/ali/user/mobile/register/RegionAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "contacts_letters_list"
    .end annotation
.end field

.field protected mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_list"
    .end annotation
.end field

.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_region_title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public static setRegionCallback(Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "region"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->b:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "letter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->c:Ljava/util/HashMap;

    .line 73
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "letter_str"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->d:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    new-instance v0, Lcom/ali/user/mobile/register/RegionAdapter;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/register/RegionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->a:Lcom/ali/user/mobile/register/RegionAdapter;

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->a:Lcom/ali/user/mobile/register/RegionAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mLetterView:Lcom/ali/user/mobile/ui/widget/AUBladeView;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUBladeView;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u7cfb\u7edf\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->onFail(ILjava/lang/String;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    .line 126
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegionInfo;

    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    const-string/jumbo v2, "region"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->finish()V

    .line 116
    sget-object v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->onSelect(Lcom/ali/user/mobile/register/RegionInfo;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->e:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    .line 120
    :cond_0
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mAppId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
