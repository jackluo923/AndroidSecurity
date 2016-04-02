.class public Lcom/alipay/android/app/widget/CustomAlertDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/CustomAlertDialog$Builder;,
        Lcom/alipay/android/app/widget/CustomAlertDialog$b;,
        Lcom/alipay/android/app/widget/CustomAlertDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

.field private b:Landroid/content/DialogInterface;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/ListAdapter;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:I

.field private p:Z

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog$b;)V
    .locals 2

    iget-object v0, p1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->d:Landroid/content/Context;

    const-string/jumbo v1, "AlertDialog"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->o:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->p:Z

    new-instance v0, Lcom/alipay/android/app/widget/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/widget/g;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->q:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->b:Landroid/content/DialogInterface;

    new-instance v0, Lcom/alipay/android/app/widget/CustomAlertDialog$a;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->b:Landroid/content/DialogInterface;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/widget/CustomAlertDialog$a;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->c:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->b:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p4, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->l:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p2, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iput-object p4, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->m:Landroid/os/Message;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-boolean v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->r:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "msp_dialog_alert_list"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->q:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->o:Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->m:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->p:I

    iput v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->o:I

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->m:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->m:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/alipay/android/app/widget/CustomArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->m:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/alipay/android/app/widget/CustomArrayAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomArrayAdapter;->a(Landroid/widget/ListView;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->m:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->o:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    iget v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->o:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    iget v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/android/app/widget/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/h;-><init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "msp_dialog_alert"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->setContentView(I)V

    const-string/jumbo v0, "left_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->d:Landroid/widget/Button;

    const-string/jumbo v0, "right_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->e:Landroid/widget/Button;

    const-string/jumbo v0, "dialog_split_v"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->f:Landroid/view/View;

    const-string/jumbo v0, "dialog_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->g:Landroid/widget/TextView;

    const-string/jumbo v0, "dialog_message"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->h:Landroid/widget/TextView;

    const-string/jumbo v0, "dialog_divider"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->i:Landroid/widget/ImageView;

    const-string/jumbo v0, "dialog_content_view"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->j:Landroid/widget/FrameLayout;

    const-string/jumbo v0, "dialog_button_group"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->e:Landroid/view/View;

    if-nez v0, :cond_7

    move v0, v3

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->p:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->e:Landroid/widget/Button;

    :goto_4
    iget-boolean v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->p:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->d:Landroid/widget/Button;

    :goto_5
    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    :goto_6
    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_7
    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->f:Landroid/view/View;

    if-le v0, v3, :cond_d

    move v1, v2

    :goto_8
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->k:Landroid/view/View;

    if-nez v0, :cond_e

    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v0, v0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->d:Landroid/widget/Button;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->e:Landroid/widget/Button;

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->l:Landroid/os/Message;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_6

    :cond_c
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/alipay/android/app/widget/CustomAlertDialog;->a:Lcom/alipay/android/app/widget/CustomAlertDialog$b;

    iget-object v5, v5, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->m:Landroid/os/Message;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move v1, v4

    goto :goto_8

    :cond_e
    move v4, v2

    goto :goto_9
.end method
