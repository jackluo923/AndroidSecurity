.class public Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentContactUs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field private listValues:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUs;[Ljava/lang/String;)V
    .locals 2
    .param p2, "listItem"    # [Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    iput-object p2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lebgth :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lebgth getcount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    move-object v1, p2

    .line 161
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 162
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Title :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 168
    const v2, 0x7f0601c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    .local v0, "mTextViewTitle":Landroid/widget/TextView;
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUs$ListBaseAdapter;->listValues:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v1

    .line 165
    .end local v0    # "mTextViewTitle":Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
