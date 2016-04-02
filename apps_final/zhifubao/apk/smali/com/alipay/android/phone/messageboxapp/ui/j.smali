.class final Lcom/alipay/android/phone/messageboxapp/ui/j;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->b(Lcom/alipay/android/phone/messageboxapp/ui/h;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v2, v2, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u786e\u5b9a\u8981\u5220\u9664\u6240\u6709\u6d88\u606f\u5417\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 146
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->alert_ok:I

    new-instance v3, Lcom/alipay/android/phone/messageboxapp/ui/k;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/messageboxapp/ui/k;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/j;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 153
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->alert_cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-gt v1, v3, :cond_a

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v0

    move v2, v0

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    move v0, v2

    .line 182
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->g(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 186
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->h(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 189
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 192
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c()V

    .line 195
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->i(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 196
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v1, v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a()V

    .line 204
    :goto_2
    if-lez v0, :cond_5

    .line 205
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TODO"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v1, v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(I)V

    .line 209
    :cond_5
    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/l;

    invoke-direct {v0, p0, v3}, Lcom/alipay/android/phone/messageboxapp/ui/l;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/j;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 171
    iget-object v5, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    const-string/jumbo v6, "INIT"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 175
    :cond_7
    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 200
    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->j(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxapp/ui/f;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->d(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/messageboxapp/ui/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 201
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->j(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxapp/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/messageboxapp/ui/f;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 242
    :cond_a
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->c(Lcom/alipay/android/phone/messageboxapp/ui/h;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 244
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/j;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    iget-object v1, v1, Lcom/alipay/android/phone/messageboxapp/ui/h;->k:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->max_delete_toast:I

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
