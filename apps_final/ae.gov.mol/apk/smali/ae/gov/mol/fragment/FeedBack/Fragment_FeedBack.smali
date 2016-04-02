.class public Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_FeedBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$DoneOnEditorActionListener;
    }
.end annotation


# instance fields
.field mArrayListReceiver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mButtonSubmit:Landroid/widget/Button;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragment:Lae/gov/mol/helper/CustomFragment;

.field mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

.field mEditTextEmail:Landroid/widget/EditText;

.field mEditTextMobile:Landroid/widget/EditText;

.field mEditTextName:Landroid/widget/EditText;

.field mEditTextSubject:Landroid/widget/EditText;

.field mImageViewBanner:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mTextViewMandatory:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-virtual {p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 196
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->finish()V

    goto :goto_0
.end method

.method public isValidCharacterOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    const v2, 0x7f090233

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 188
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 189
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->setContentView(I)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mArrayListReceiver:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mArrayListReceiver:Ljava/util/ArrayList;

    const v1, 0x7f09018f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    invoke-direct {v0, p0}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 65
    const v0, 0x7f060758

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v0, 0x7f06032c

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mImageViewBanner:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f060757

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$1;-><init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f060332

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mTextViewMandatory:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mTextViewMandatory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mTextViewMandatory:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->setRedAsteriskSign(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f06032d

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextName:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f06032e

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextMobile:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextMobile:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lae/gov/mol/helper/InputFilterMinMax;

    const/16 v4, 0xc

    invoke-direct {v3, v5, v4}, Lae/gov/mol/helper/InputFilterMinMax;-><init>(II)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 84
    const v0, 0x7f06032f

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextEmail:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f060330

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextSubject:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextSubject:Landroid/widget/EditText;

    iget-object v1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextSubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->setRedAsteriskSign(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f060331

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/ActionEditText;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

    iget-object v1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

    invoke-virtual {v2}, Lae/gov/mol/helper/ActionEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->setRedAsteriskSign(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/ActionEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextDesc:Lae/gov/mol/helper/ActionEditText;

    new-instance v1, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$DoneOnEditorActionListener;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$DoneOnEditorActionListener;-><init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/ActionEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    const v0, 0x7f060333

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mButtonSubmit:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$2;-><init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public openEmailComponents(Ljava/lang/String;)V
    .locals 5
    .param p1, "strDescription"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->mEditTextSubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f09018f

    invoke-virtual {p0, v4}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "Send Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 175
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0602c4

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 176
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    if-eqz p2, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 181
    return-void
.end method
