package com.google.android.gms.plus.model.moments;

import com.google.android.gms.internal.ko;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ItemScope$Builder
{
  private String Mm;
  private double Va;
  private double Vb;
  private List<ko> acA;
  private String acB;
  private String acC;
  private ko acD;
  private String acE;
  private String acF;
  private List<ko> acG;
  private String acH;
  private String acI;
  private String acJ;
  private String acK;
  private String acL;
  private String acM;
  private String acN;
  private String acO;
  private ko acP;
  private String acQ;
  private String acR;
  private String acS;
  private ko acT;
  private ko acU;
  private ko acV;
  private List<ko> acW;
  private String acX;
  private String acY;
  private String acZ;
  private final Set<Integer> acp = new HashSet();
  private ko acq;
  private List<String> acr;
  private ko acs;
  private String act;
  private String acu;
  private String acv;
  private List<ko> acw;
  private int acx;
  private List<ko> acy;
  private ko acz;
  private String ada;
  private ko adb;
  private String adc;
  private String add;
  private String ade;
  private ko adf;
  private String adg;
  private String adh;
  private String adi;
  private String adj;
  private String mName;
  private String mi;
  private String qU;
  private String qV;
  private String xD;
  
  public ItemScope build()
  {
    return new ko(acp, acq, acr, acs, act, acu, acv, acw, acx, acy, acz, acA, acB, acC, acD, acE, acF, mi, acG, acH, acI, acJ, Mm, acK, acL, acM, acN, acO, acP, acQ, acR, xD, acS, acT, Va, acU, Vb, mName, acV, acW, acX, acY, acZ, ada, adb, adc, add, ade, adf, adg, adh, qU, qV, adi, adj);
  }
  
  public Builder setAbout(ItemScope paramItemScope)
  {
    acq = ((ko)paramItemScope);
    acp.add(Integer.valueOf(2));
    return this;
  }
  
  public Builder setAdditionalName(List<String> paramList)
  {
    acr = paramList;
    acp.add(Integer.valueOf(3));
    return this;
  }
  
  public Builder setAddress(ItemScope paramItemScope)
  {
    acs = ((ko)paramItemScope);
    acp.add(Integer.valueOf(4));
    return this;
  }
  
  public Builder setAddressCountry(String paramString)
  {
    act = paramString;
    acp.add(Integer.valueOf(5));
    return this;
  }
  
  public Builder setAddressLocality(String paramString)
  {
    acu = paramString;
    acp.add(Integer.valueOf(6));
    return this;
  }
  
  public Builder setAddressRegion(String paramString)
  {
    acv = paramString;
    acp.add(Integer.valueOf(7));
    return this;
  }
  
  public Builder setAssociated_media(List<ItemScope> paramList)
  {
    acw = paramList;
    acp.add(Integer.valueOf(8));
    return this;
  }
  
  public Builder setAttendeeCount(int paramInt)
  {
    acx = paramInt;
    acp.add(Integer.valueOf(9));
    return this;
  }
  
  public Builder setAttendees(List<ItemScope> paramList)
  {
    acy = paramList;
    acp.add(Integer.valueOf(10));
    return this;
  }
  
  public Builder setAudio(ItemScope paramItemScope)
  {
    acz = ((ko)paramItemScope);
    acp.add(Integer.valueOf(11));
    return this;
  }
  
  public Builder setAuthor(List<ItemScope> paramList)
  {
    acA = paramList;
    acp.add(Integer.valueOf(12));
    return this;
  }
  
  public Builder setBestRating(String paramString)
  {
    acB = paramString;
    acp.add(Integer.valueOf(13));
    return this;
  }
  
  public Builder setBirthDate(String paramString)
  {
    acC = paramString;
    acp.add(Integer.valueOf(14));
    return this;
  }
  
  public Builder setByArtist(ItemScope paramItemScope)
  {
    acD = ((ko)paramItemScope);
    acp.add(Integer.valueOf(15));
    return this;
  }
  
  public Builder setCaption(String paramString)
  {
    acE = paramString;
    acp.add(Integer.valueOf(16));
    return this;
  }
  
  public Builder setContentSize(String paramString)
  {
    acF = paramString;
    acp.add(Integer.valueOf(17));
    return this;
  }
  
  public Builder setContentUrl(String paramString)
  {
    mi = paramString;
    acp.add(Integer.valueOf(18));
    return this;
  }
  
  public Builder setContributor(List<ItemScope> paramList)
  {
    acG = paramList;
    acp.add(Integer.valueOf(19));
    return this;
  }
  
  public Builder setDateCreated(String paramString)
  {
    acH = paramString;
    acp.add(Integer.valueOf(20));
    return this;
  }
  
  public Builder setDateModified(String paramString)
  {
    acI = paramString;
    acp.add(Integer.valueOf(21));
    return this;
  }
  
  public Builder setDatePublished(String paramString)
  {
    acJ = paramString;
    acp.add(Integer.valueOf(22));
    return this;
  }
  
  public Builder setDescription(String paramString)
  {
    Mm = paramString;
    acp.add(Integer.valueOf(23));
    return this;
  }
  
  public Builder setDuration(String paramString)
  {
    acK = paramString;
    acp.add(Integer.valueOf(24));
    return this;
  }
  
  public Builder setEmbedUrl(String paramString)
  {
    acL = paramString;
    acp.add(Integer.valueOf(25));
    return this;
  }
  
  public Builder setEndDate(String paramString)
  {
    acM = paramString;
    acp.add(Integer.valueOf(26));
    return this;
  }
  
  public Builder setFamilyName(String paramString)
  {
    acN = paramString;
    acp.add(Integer.valueOf(27));
    return this;
  }
  
  public Builder setGender(String paramString)
  {
    acO = paramString;
    acp.add(Integer.valueOf(28));
    return this;
  }
  
  public Builder setGeo(ItemScope paramItemScope)
  {
    acP = ((ko)paramItemScope);
    acp.add(Integer.valueOf(29));
    return this;
  }
  
  public Builder setGivenName(String paramString)
  {
    acQ = paramString;
    acp.add(Integer.valueOf(30));
    return this;
  }
  
  public Builder setHeight(String paramString)
  {
    acR = paramString;
    acp.add(Integer.valueOf(31));
    return this;
  }
  
  public Builder setId(String paramString)
  {
    xD = paramString;
    acp.add(Integer.valueOf(32));
    return this;
  }
  
  public Builder setImage(String paramString)
  {
    acS = paramString;
    acp.add(Integer.valueOf(33));
    return this;
  }
  
  public Builder setInAlbum(ItemScope paramItemScope)
  {
    acT = ((ko)paramItemScope);
    acp.add(Integer.valueOf(34));
    return this;
  }
  
  public Builder setLatitude(double paramDouble)
  {
    Va = paramDouble;
    acp.add(Integer.valueOf(36));
    return this;
  }
  
  public Builder setLocation(ItemScope paramItemScope)
  {
    acU = ((ko)paramItemScope);
    acp.add(Integer.valueOf(37));
    return this;
  }
  
  public Builder setLongitude(double paramDouble)
  {
    Vb = paramDouble;
    acp.add(Integer.valueOf(38));
    return this;
  }
  
  public Builder setName(String paramString)
  {
    mName = paramString;
    acp.add(Integer.valueOf(39));
    return this;
  }
  
  public Builder setPartOfTVSeries(ItemScope paramItemScope)
  {
    acV = ((ko)paramItemScope);
    acp.add(Integer.valueOf(40));
    return this;
  }
  
  public Builder setPerformers(List<ItemScope> paramList)
  {
    acW = paramList;
    acp.add(Integer.valueOf(41));
    return this;
  }
  
  public Builder setPlayerType(String paramString)
  {
    acX = paramString;
    acp.add(Integer.valueOf(42));
    return this;
  }
  
  public Builder setPostOfficeBoxNumber(String paramString)
  {
    acY = paramString;
    acp.add(Integer.valueOf(43));
    return this;
  }
  
  public Builder setPostalCode(String paramString)
  {
    acZ = paramString;
    acp.add(Integer.valueOf(44));
    return this;
  }
  
  public Builder setRatingValue(String paramString)
  {
    ada = paramString;
    acp.add(Integer.valueOf(45));
    return this;
  }
  
  public Builder setReviewRating(ItemScope paramItemScope)
  {
    adb = ((ko)paramItemScope);
    acp.add(Integer.valueOf(46));
    return this;
  }
  
  public Builder setStartDate(String paramString)
  {
    adc = paramString;
    acp.add(Integer.valueOf(47));
    return this;
  }
  
  public Builder setStreetAddress(String paramString)
  {
    add = paramString;
    acp.add(Integer.valueOf(48));
    return this;
  }
  
  public Builder setText(String paramString)
  {
    ade = paramString;
    acp.add(Integer.valueOf(49));
    return this;
  }
  
  public Builder setThumbnail(ItemScope paramItemScope)
  {
    adf = ((ko)paramItemScope);
    acp.add(Integer.valueOf(50));
    return this;
  }
  
  public Builder setThumbnailUrl(String paramString)
  {
    adg = paramString;
    acp.add(Integer.valueOf(51));
    return this;
  }
  
  public Builder setTickerSymbol(String paramString)
  {
    adh = paramString;
    acp.add(Integer.valueOf(52));
    return this;
  }
  
  public Builder setType(String paramString)
  {
    qU = paramString;
    acp.add(Integer.valueOf(53));
    return this;
  }
  
  public Builder setUrl(String paramString)
  {
    qV = paramString;
    acp.add(Integer.valueOf(54));
    return this;
  }
  
  public Builder setWidth(String paramString)
  {
    adi = paramString;
    acp.add(Integer.valueOf(55));
    return this;
  }
  
  public Builder setWorstRating(String paramString)
  {
    adj = paramString;
    acp.add(Integer.valueOf(56));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.moments.ItemScope.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */