.class public Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentCompanyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentCompanyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentCompanyList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentCompanyList;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 36
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v33

    const v34, 0x7f030041

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 230
    .local v32, "view":Landroid/view/View;
    const v33, 0x7f06015e

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 231
    .local v30, "mTextViewTitle":Landroid/widget/TextView;
    const v33, 0x7f060163

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 232
    .local v19, "mTextViewCompanyCode":Landroid/widget/TextView;
    const v33, 0x7f060166

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 233
    .local v28, "mTextViewLicenseExpiry":Landroid/widget/TextView;
    const v33, 0x7f06016a

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 234
    .local v29, "mTextViewSalaryRestrictions":Landroid/widget/TextView;
    const v33, 0x7f06015f

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 235
    .local v21, "mTextViewCountry":Landroid/widget/TextView;
    const v33, 0x7f06016b

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 236
    .local v22, "mTextViewExpiredCard":Landroid/widget/TextView;
    const v33, 0x7f06016c

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 237
    .local v24, "mTextViewExpiredCardOne":Landroid/widget/TextView;
    const v33, 0x7f06016d

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 239
    .local v23, "mTextViewExpiredCardMore":Landroid/widget/TextView;
    const v33, 0x7f060172

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 240
    .local v31, "mTextViewTotalEmployee":Landroid/widget/TextView;
    const v33, 0x7f060175

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 241
    .local v18, "mTextViewAbscondingCases":Landroid/widget/TextView;
    const v33, 0x7f060178

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 242
    .local v25, "mTextViewExpiredCards":Landroid/widget/TextView;
    const v33, 0x7f06017b

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 243
    .local v26, "mTextViewExpiredPermits":Landroid/widget/TextView;
    const v33, 0x7f06017e

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 246
    .local v27, "mTextViewLabourWithOutContracts":Landroid/widget/TextView;
    const v33, 0x7f060170

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 247
    .local v14, "mLinearLayoutTotalEmployee":Landroid/widget/LinearLayout;
    const v33, 0x7f060173

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 248
    .local v10, "mLinearLayoutAbscondingCases":Landroid/widget/LinearLayout;
    const v33, 0x7f060176

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 249
    .local v11, "mLinearLayoutExpiredCards":Landroid/widget/LinearLayout;
    const v33, 0x7f060179

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 250
    .local v12, "mLinearLayoutExpiredPermits":Landroid/widget/LinearLayout;
    const v33, 0x7f06017c

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 253
    .local v13, "mLinearLayoutLabourWihtoutContracts":Landroid/widget/LinearLayout;
    const v33, 0x7f060160

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 254
    .local v7, "mImageViewRightWrong":Landroid/widget/ImageView;
    const v33, 0x7f06016f

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 255
    .local v20, "mTextViewCompanyFine":Landroid/widget/TextView;
    const v33, 0x7f06016e

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TableRow;

    .line 256
    .local v16, "mTableRowCompanyFine":Landroid/widget/TableRow;
    const v33, 0x7f060167

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TableRow;

    .line 258
    .local v17, "mTableRowSalaryRestriction":Landroid/widget/TableRow;
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$1;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$3;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$4;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$5;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$6;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v33

    packed-switch v33, :pswitch_data_0

    .line 397
    :goto_0
    new-instance v33, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;-><init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getLICENSEDATE()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lae/gov/mol/helper/CommonMethods;->getLongDate(Ljava/lang/String;)J

    move-result-wide v8

    .line 411
    .local v8, "mLicenceDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 412
    .local v5, "mCurrent":J
    cmp-long v33, v5, v8

    if-lez v33, :cond_0

    .line 413
    const/high16 v33, -0x10000

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v5    # "mCurrent":J
    .end local v8    # "mLicenceDate":J
    :cond_0
    :goto_1
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v33, " "

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v34, Ljava/lang/StringBuilder;

    const-string v33, " "

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getLICENSEDATE()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCom_status()Ljava/lang/String;

    move-result-object v33

    const-string v34, "1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f02015e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCom_status()Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "mSalaryRestriction":Ljava/lang/String;
    const-string v33, "0"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 441
    const/high16 v33, -0x10000

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    const v34, 0x7f0901a6

    invoke-virtual/range {v33 .. v34}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    sget-object v33, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "Salary Restric"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getEMPLOYEES()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getTOTALABSCONDING()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getEXPIREDLABOURCARD()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getEXPIREDWORKPERMIT()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getLABOURWITHOUTCONTRACT()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANY_FINE()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "mCompanyFine":Ljava/lang/String;
    const-string v33, "1"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string v33, "yes"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 457
    :cond_3
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 458
    const/high16 v33, -0x10000

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    const v34, 0x7f0901a6

    invoke-virtual/range {v33 .. v34}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_3
    return-object v32

    .line 344
    .end local v4    # "mCompanyFine":Ljava/lang/String;
    .end local v15    # "mSalaryRestriction":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getOFFICENAME_ENG()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v3, "itemsViolation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v33

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 362
    :cond_4
    const/16 v33, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    const/16 v33, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    const/16 v33, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 369
    .end local v3    # "itemsViolation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYNAME()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getOFFICENAME()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .restart local v3    # "itemsViolation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v33

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_5

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 386
    :cond_5
    const/16 v33, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    const/16 v33, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    const/16 v33, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 435
    .end local v3    # "itemsViolation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCom_status()Ljava/lang/String;

    move-result-object v33

    const-string v34, "0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lae/gov/mol/fragment/FragmentCompanyList;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020121

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 461
    .restart local v4    # "mCompanyFine":Ljava/lang/String;
    .restart local v15    # "mSalaryRestriction":Ljava/lang/String;
    :cond_7
    const/16 v33, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_3

    .line 419
    .end local v4    # "mCompanyFine":Ljava/lang/String;
    .end local v15    # "mSalaryRestriction":Ljava/lang/String;
    :catch_0
    move-exception v33

    goto/16 :goto_1

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
