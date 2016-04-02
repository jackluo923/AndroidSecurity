.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;
.super Ljava/lang/Object;
.source "Fragment_eServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MasterDataList"
.end annotation


# instance fields
.field lang:Ljava/lang/String;

.field otherValue:Ljava/lang/String;

.field searchText:Ljava/lang/String;

.field searchType:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    return-void
.end method


# virtual methods
.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->otherValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 1214
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->lang:Ljava/lang/String;

    .line 1215
    return-void
.end method

.method public setOtherValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "otherValue"    # Ljava/lang/String;

    .prologue
    .line 1206
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->otherValue:Ljava/lang/String;

    .line 1207
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 1198
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->searchText:Ljava/lang/String;

    .line 1199
    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchType"    # Ljava/lang/String;

    .prologue
    .line 1190
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->searchType:Ljava/lang/String;

    .line 1191
    return-void
.end method
