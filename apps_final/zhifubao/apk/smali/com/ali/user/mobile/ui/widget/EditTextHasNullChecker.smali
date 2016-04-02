.class public Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;
.super Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;
.source "EditTextHasNullChecker.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->b:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->c:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->e:Ljava/util/Set;

    .line 23
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 168
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x1020002

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 176
    :goto_1
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TabHost;

    if-nez v0, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 176
    goto :goto_1
.end method


# virtual methods
.method public addNeedCheckCheckBox(Landroid/widget/CheckBox;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 56
    return-void
.end method

.method public addNeedCheckPasswordView(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 43
    return-void
.end method

.method public addNeedCheckTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "TextViewDefalutTxt"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 51
    return-void
.end method

.method public addNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 37
    return-void
.end method

.method public addNeedEnabledButton(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 76
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public removeButton(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public removeNeedCheckView(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->validate()V

    .line 65
    return-void
.end method

.method public validate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    move v1, v3

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    if-eqz v1, :cond_e

    move v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 105
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v4, :cond_7

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v4, :cond_9

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "TextViewIndex"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v1, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v5, :cond_c

    check-cast v1, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "TextViewDefalutTxt"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_b
    move v1, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    goto/16 :goto_0

    :cond_e
    move v4, v2

    .line 107
    goto/16 :goto_2
.end method
