package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ko
  extends hz
  implements SafeParcelable, ItemScope
{
  public static final kp CREATOR = new kp();
  private static final HashMap<String, hz.a<?, ?>> aco;
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
  private final Set<Integer> acp;
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
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("about", hz.a.a("about", 2, ko.class));
    aco.put("additionalName", hz.a.k("additionalName", 3));
    aco.put("address", hz.a.a("address", 4, ko.class));
    aco.put("addressCountry", hz.a.j("addressCountry", 5));
    aco.put("addressLocality", hz.a.j("addressLocality", 6));
    aco.put("addressRegion", hz.a.j("addressRegion", 7));
    aco.put("associated_media", hz.a.b("associated_media", 8, ko.class));
    aco.put("attendeeCount", hz.a.g("attendeeCount", 9));
    aco.put("attendees", hz.a.b("attendees", 10, ko.class));
    aco.put("audio", hz.a.a("audio", 11, ko.class));
    aco.put("author", hz.a.b("author", 12, ko.class));
    aco.put("bestRating", hz.a.j("bestRating", 13));
    aco.put("birthDate", hz.a.j("birthDate", 14));
    aco.put("byArtist", hz.a.a("byArtist", 15, ko.class));
    aco.put("caption", hz.a.j("caption", 16));
    aco.put("contentSize", hz.a.j("contentSize", 17));
    aco.put("contentUrl", hz.a.j("contentUrl", 18));
    aco.put("contributor", hz.a.b("contributor", 19, ko.class));
    aco.put("dateCreated", hz.a.j("dateCreated", 20));
    aco.put("dateModified", hz.a.j("dateModified", 21));
    aco.put("datePublished", hz.a.j("datePublished", 22));
    aco.put("description", hz.a.j("description", 23));
    aco.put("duration", hz.a.j("duration", 24));
    aco.put("embedUrl", hz.a.j("embedUrl", 25));
    aco.put("endDate", hz.a.j("endDate", 26));
    aco.put("familyName", hz.a.j("familyName", 27));
    aco.put("gender", hz.a.j("gender", 28));
    aco.put("geo", hz.a.a("geo", 29, ko.class));
    aco.put("givenName", hz.a.j("givenName", 30));
    aco.put("height", hz.a.j("height", 31));
    aco.put("id", hz.a.j("id", 32));
    aco.put("image", hz.a.j("image", 33));
    aco.put("inAlbum", hz.a.a("inAlbum", 34, ko.class));
    aco.put("latitude", hz.a.h("latitude", 36));
    aco.put("location", hz.a.a("location", 37, ko.class));
    aco.put("longitude", hz.a.h("longitude", 38));
    aco.put("name", hz.a.j("name", 39));
    aco.put("partOfTVSeries", hz.a.a("partOfTVSeries", 40, ko.class));
    aco.put("performers", hz.a.b("performers", 41, ko.class));
    aco.put("playerType", hz.a.j("playerType", 42));
    aco.put("postOfficeBoxNumber", hz.a.j("postOfficeBoxNumber", 43));
    aco.put("postalCode", hz.a.j("postalCode", 44));
    aco.put("ratingValue", hz.a.j("ratingValue", 45));
    aco.put("reviewRating", hz.a.a("reviewRating", 46, ko.class));
    aco.put("startDate", hz.a.j("startDate", 47));
    aco.put("streetAddress", hz.a.j("streetAddress", 48));
    aco.put("text", hz.a.j("text", 49));
    aco.put("thumbnail", hz.a.a("thumbnail", 50, ko.class));
    aco.put("thumbnailUrl", hz.a.j("thumbnailUrl", 51));
    aco.put("tickerSymbol", hz.a.j("tickerSymbol", 52));
    aco.put("type", hz.a.j("type", 53));
    aco.put("url", hz.a.j("url", 54));
    aco.put("width", hz.a.j("width", 55));
    aco.put("worstRating", hz.a.j("worstRating", 56));
  }
  
  public ko()
  {
    xJ = 1;
    acp = new HashSet();
  }
  
  ko(Set<Integer> paramSet, int paramInt1, ko paramko1, List<String> paramList, ko paramko2, String paramString1, String paramString2, String paramString3, List<ko> paramList1, int paramInt2, List<ko> paramList2, ko paramko3, List<ko> paramList3, String paramString4, String paramString5, ko paramko4, String paramString6, String paramString7, String paramString8, List<ko> paramList4, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, ko paramko5, String paramString18, String paramString19, String paramString20, String paramString21, ko paramko6, double paramDouble1, ko paramko7, double paramDouble2, String paramString22, ko paramko8, List<ko> paramList5, String paramString23, String paramString24, String paramString25, String paramString26, ko paramko9, String paramString27, String paramString28, String paramString29, ko paramko10, String paramString30, String paramString31, String paramString32, String paramString33, String paramString34, String paramString35)
  {
    acp = paramSet;
    xJ = paramInt1;
    acq = paramko1;
    acr = paramList;
    acs = paramko2;
    act = paramString1;
    acu = paramString2;
    acv = paramString3;
    acw = paramList1;
    acx = paramInt2;
    acy = paramList2;
    acz = paramko3;
    acA = paramList3;
    acB = paramString4;
    acC = paramString5;
    acD = paramko4;
    acE = paramString6;
    acF = paramString7;
    mi = paramString8;
    acG = paramList4;
    acH = paramString9;
    acI = paramString10;
    acJ = paramString11;
    Mm = paramString12;
    acK = paramString13;
    acL = paramString14;
    acM = paramString15;
    acN = paramString16;
    acO = paramString17;
    acP = paramko5;
    acQ = paramString18;
    acR = paramString19;
    xD = paramString20;
    acS = paramString21;
    acT = paramko6;
    Va = paramDouble1;
    acU = paramko7;
    Vb = paramDouble2;
    mName = paramString22;
    acV = paramko8;
    acW = paramList5;
    acX = paramString23;
    acY = paramString24;
    acZ = paramString25;
    ada = paramString26;
    adb = paramko9;
    adc = paramString27;
    add = paramString28;
    ade = paramString29;
    adf = paramko10;
    adg = paramString30;
    adh = paramString31;
    qU = paramString32;
    qV = paramString33;
    adi = paramString34;
    adj = paramString35;
  }
  
  public ko(Set<Integer> paramSet, ko paramko1, List<String> paramList, ko paramko2, String paramString1, String paramString2, String paramString3, List<ko> paramList1, int paramInt, List<ko> paramList2, ko paramko3, List<ko> paramList3, String paramString4, String paramString5, ko paramko4, String paramString6, String paramString7, String paramString8, List<ko> paramList4, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, ko paramko5, String paramString18, String paramString19, String paramString20, String paramString21, ko paramko6, double paramDouble1, ko paramko7, double paramDouble2, String paramString22, ko paramko8, List<ko> paramList5, String paramString23, String paramString24, String paramString25, String paramString26, ko paramko9, String paramString27, String paramString28, String paramString29, ko paramko10, String paramString30, String paramString31, String paramString32, String paramString33, String paramString34, String paramString35)
  {
    acp = paramSet;
    xJ = 1;
    acq = paramko1;
    acr = paramList;
    acs = paramko2;
    act = paramString1;
    acu = paramString2;
    acv = paramString3;
    acw = paramList1;
    acx = paramInt;
    acy = paramList2;
    acz = paramko3;
    acA = paramList3;
    acB = paramString4;
    acC = paramString5;
    acD = paramko4;
    acE = paramString6;
    acF = paramString7;
    mi = paramString8;
    acG = paramList4;
    acH = paramString9;
    acI = paramString10;
    acJ = paramString11;
    Mm = paramString12;
    acK = paramString13;
    acL = paramString14;
    acM = paramString15;
    acN = paramString16;
    acO = paramString17;
    acP = paramko5;
    acQ = paramString18;
    acR = paramString19;
    xD = paramString20;
    acS = paramString21;
    acT = paramko6;
    Va = paramDouble1;
    acU = paramko7;
    Vb = paramDouble2;
    mName = paramString22;
    acV = paramko8;
    acW = paramList5;
    acX = paramString23;
    acY = paramString24;
    acZ = paramString25;
    ada = paramString26;
    adb = paramko9;
    adc = paramString27;
    add = paramString28;
    ade = paramString29;
    adf = paramko10;
    adg = paramString30;
    adh = paramString31;
    qU = paramString32;
    qV = paramString33;
    adi = paramString34;
    adj = paramString35;
  }
  
  protected final boolean a(hz.a parama)
  {
    return acp.contains(Integer.valueOf(parama.fI()));
  }
  
  protected final Object aF(String paramString)
  {
    return null;
  }
  
  protected final boolean aG(String paramString)
  {
    return false;
  }
  
  protected final Object b(hz.a parama)
  {
    switch (parama.fI())
    {
    case 35: 
    default: 
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.fI());
    case 2: 
      return acq;
    case 3: 
      return acr;
    case 4: 
      return acs;
    case 5: 
      return act;
    case 6: 
      return acu;
    case 7: 
      return acv;
    case 8: 
      return acw;
    case 9: 
      return Integer.valueOf(acx);
    case 10: 
      return acy;
    case 11: 
      return acz;
    case 12: 
      return acA;
    case 13: 
      return acB;
    case 14: 
      return acC;
    case 15: 
      return acD;
    case 16: 
      return acE;
    case 17: 
      return acF;
    case 18: 
      return mi;
    case 19: 
      return acG;
    case 20: 
      return acH;
    case 21: 
      return acI;
    case 22: 
      return acJ;
    case 23: 
      return Mm;
    case 24: 
      return acK;
    case 25: 
      return acL;
    case 26: 
      return acM;
    case 27: 
      return acN;
    case 28: 
      return acO;
    case 29: 
      return acP;
    case 30: 
      return acQ;
    case 31: 
      return acR;
    case 32: 
      return xD;
    case 33: 
      return acS;
    case 34: 
      return acT;
    case 36: 
      return Double.valueOf(Va);
    case 37: 
      return acU;
    case 38: 
      return Double.valueOf(Vb);
    case 39: 
      return mName;
    case 40: 
      return acV;
    case 41: 
      return acW;
    case 42: 
      return acX;
    case 43: 
      return acY;
    case 44: 
      return acZ;
    case 45: 
      return ada;
    case 46: 
      return adb;
    case 47: 
      return adc;
    case 48: 
      return add;
    case 49: 
      return ade;
    case 50: 
      return adf;
    case 51: 
      return adg;
    case 52: 
      return adh;
    case 53: 
      return qU;
    case 54: 
      return qV;
    case 55: 
      return adi;
    }
    return adj;
  }
  
  public final int describeContents()
  {
    kp localkp = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ko)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (ko)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((ko)paramObject).a(locala))
        {
          if (!b(locala).equals(((ko)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((ko)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final ItemScope getAbout()
  {
    return acq;
  }
  
  public final List<String> getAdditionalName()
  {
    return acr;
  }
  
  public final ItemScope getAddress()
  {
    return acs;
  }
  
  public final String getAddressCountry()
  {
    return act;
  }
  
  public final String getAddressLocality()
  {
    return acu;
  }
  
  public final String getAddressRegion()
  {
    return acv;
  }
  
  public final List<ItemScope> getAssociated_media()
  {
    return (ArrayList)acw;
  }
  
  public final int getAttendeeCount()
  {
    return acx;
  }
  
  public final List<ItemScope> getAttendees()
  {
    return (ArrayList)acy;
  }
  
  public final ItemScope getAudio()
  {
    return acz;
  }
  
  public final List<ItemScope> getAuthor()
  {
    return (ArrayList)acA;
  }
  
  public final String getBestRating()
  {
    return acB;
  }
  
  public final String getBirthDate()
  {
    return acC;
  }
  
  public final ItemScope getByArtist()
  {
    return acD;
  }
  
  public final String getCaption()
  {
    return acE;
  }
  
  public final String getContentSize()
  {
    return acF;
  }
  
  public final String getContentUrl()
  {
    return mi;
  }
  
  public final List<ItemScope> getContributor()
  {
    return (ArrayList)acG;
  }
  
  public final String getDateCreated()
  {
    return acH;
  }
  
  public final String getDateModified()
  {
    return acI;
  }
  
  public final String getDatePublished()
  {
    return acJ;
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final String getDuration()
  {
    return acK;
  }
  
  public final String getEmbedUrl()
  {
    return acL;
  }
  
  public final String getEndDate()
  {
    return acM;
  }
  
  public final String getFamilyName()
  {
    return acN;
  }
  
  public final String getGender()
  {
    return acO;
  }
  
  public final ItemScope getGeo()
  {
    return acP;
  }
  
  public final String getGivenName()
  {
    return acQ;
  }
  
  public final String getHeight()
  {
    return acR;
  }
  
  public final String getId()
  {
    return xD;
  }
  
  public final String getImage()
  {
    return acS;
  }
  
  public final ItemScope getInAlbum()
  {
    return acT;
  }
  
  public final double getLatitude()
  {
    return Va;
  }
  
  public final ItemScope getLocation()
  {
    return acU;
  }
  
  public final double getLongitude()
  {
    return Vb;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final ItemScope getPartOfTVSeries()
  {
    return acV;
  }
  
  public final List<ItemScope> getPerformers()
  {
    return (ArrayList)acW;
  }
  
  public final String getPlayerType()
  {
    return acX;
  }
  
  public final String getPostOfficeBoxNumber()
  {
    return acY;
  }
  
  public final String getPostalCode()
  {
    return acZ;
  }
  
  public final String getRatingValue()
  {
    return ada;
  }
  
  public final ItemScope getReviewRating()
  {
    return adb;
  }
  
  public final String getStartDate()
  {
    return adc;
  }
  
  public final String getStreetAddress()
  {
    return add;
  }
  
  public final String getText()
  {
    return ade;
  }
  
  public final ItemScope getThumbnail()
  {
    return adf;
  }
  
  public final String getThumbnailUrl()
  {
    return adg;
  }
  
  public final String getTickerSymbol()
  {
    return adh;
  }
  
  public final String getType()
  {
    return qU;
  }
  
  public final String getUrl()
  {
    return qV;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final String getWidth()
  {
    return adi;
  }
  
  public final String getWorstRating()
  {
    return adj;
  }
  
  public final boolean hasAbout()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasAdditionalName()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasAddress()
  {
    return acp.contains(Integer.valueOf(4));
  }
  
  public final boolean hasAddressCountry()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasAddressLocality()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasAddressRegion()
  {
    return acp.contains(Integer.valueOf(7));
  }
  
  public final boolean hasAssociated_media()
  {
    return acp.contains(Integer.valueOf(8));
  }
  
  public final boolean hasAttendeeCount()
  {
    return acp.contains(Integer.valueOf(9));
  }
  
  public final boolean hasAttendees()
  {
    return acp.contains(Integer.valueOf(10));
  }
  
  public final boolean hasAudio()
  {
    return acp.contains(Integer.valueOf(11));
  }
  
  public final boolean hasAuthor()
  {
    return acp.contains(Integer.valueOf(12));
  }
  
  public final boolean hasBestRating()
  {
    return acp.contains(Integer.valueOf(13));
  }
  
  public final boolean hasBirthDate()
  {
    return acp.contains(Integer.valueOf(14));
  }
  
  public final boolean hasByArtist()
  {
    return acp.contains(Integer.valueOf(15));
  }
  
  public final boolean hasCaption()
  {
    return acp.contains(Integer.valueOf(16));
  }
  
  public final boolean hasContentSize()
  {
    return acp.contains(Integer.valueOf(17));
  }
  
  public final boolean hasContentUrl()
  {
    return acp.contains(Integer.valueOf(18));
  }
  
  public final boolean hasContributor()
  {
    return acp.contains(Integer.valueOf(19));
  }
  
  public final boolean hasDateCreated()
  {
    return acp.contains(Integer.valueOf(20));
  }
  
  public final boolean hasDateModified()
  {
    return acp.contains(Integer.valueOf(21));
  }
  
  public final boolean hasDatePublished()
  {
    return acp.contains(Integer.valueOf(22));
  }
  
  public final boolean hasDescription()
  {
    return acp.contains(Integer.valueOf(23));
  }
  
  public final boolean hasDuration()
  {
    return acp.contains(Integer.valueOf(24));
  }
  
  public final boolean hasEmbedUrl()
  {
    return acp.contains(Integer.valueOf(25));
  }
  
  public final boolean hasEndDate()
  {
    return acp.contains(Integer.valueOf(26));
  }
  
  public final boolean hasFamilyName()
  {
    return acp.contains(Integer.valueOf(27));
  }
  
  public final boolean hasGender()
  {
    return acp.contains(Integer.valueOf(28));
  }
  
  public final boolean hasGeo()
  {
    return acp.contains(Integer.valueOf(29));
  }
  
  public final boolean hasGivenName()
  {
    return acp.contains(Integer.valueOf(30));
  }
  
  public final boolean hasHeight()
  {
    return acp.contains(Integer.valueOf(31));
  }
  
  public final boolean hasId()
  {
    return acp.contains(Integer.valueOf(32));
  }
  
  public final boolean hasImage()
  {
    return acp.contains(Integer.valueOf(33));
  }
  
  public final boolean hasInAlbum()
  {
    return acp.contains(Integer.valueOf(34));
  }
  
  public final boolean hasLatitude()
  {
    return acp.contains(Integer.valueOf(36));
  }
  
  public final boolean hasLocation()
  {
    return acp.contains(Integer.valueOf(37));
  }
  
  public final boolean hasLongitude()
  {
    return acp.contains(Integer.valueOf(38));
  }
  
  public final boolean hasName()
  {
    return acp.contains(Integer.valueOf(39));
  }
  
  public final boolean hasPartOfTVSeries()
  {
    return acp.contains(Integer.valueOf(40));
  }
  
  public final boolean hasPerformers()
  {
    return acp.contains(Integer.valueOf(41));
  }
  
  public final boolean hasPlayerType()
  {
    return acp.contains(Integer.valueOf(42));
  }
  
  public final boolean hasPostOfficeBoxNumber()
  {
    return acp.contains(Integer.valueOf(43));
  }
  
  public final boolean hasPostalCode()
  {
    return acp.contains(Integer.valueOf(44));
  }
  
  public final boolean hasRatingValue()
  {
    return acp.contains(Integer.valueOf(45));
  }
  
  public final boolean hasReviewRating()
  {
    return acp.contains(Integer.valueOf(46));
  }
  
  public final boolean hasStartDate()
  {
    return acp.contains(Integer.valueOf(47));
  }
  
  public final boolean hasStreetAddress()
  {
    return acp.contains(Integer.valueOf(48));
  }
  
  public final boolean hasText()
  {
    return acp.contains(Integer.valueOf(49));
  }
  
  public final boolean hasThumbnail()
  {
    return acp.contains(Integer.valueOf(50));
  }
  
  public final boolean hasThumbnailUrl()
  {
    return acp.contains(Integer.valueOf(51));
  }
  
  public final boolean hasTickerSymbol()
  {
    return acp.contains(Integer.valueOf(52));
  }
  
  public final boolean hasType()
  {
    return acp.contains(Integer.valueOf(53));
  }
  
  public final boolean hasUrl()
  {
    return acp.contains(Integer.valueOf(54));
  }
  
  public final boolean hasWidth()
  {
    return acp.contains(Integer.valueOf(55));
  }
  
  public final boolean hasWorstRating()
  {
    return acp.contains(Integer.valueOf(56));
  }
  
  public final int hashCode()
  {
    Iterator localIterator = aco.values().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (!a(locala)) {
        break label66;
      }
      int j = locala.fI();
      i = b(locala).hashCode() + (i + j);
    }
    label66:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  final ko kg()
  {
    return acq;
  }
  
  final ko kh()
  {
    return acs;
  }
  
  final List<ko> ki()
  {
    return acw;
  }
  
  final List<ko> kj()
  {
    return acy;
  }
  
  final ko kk()
  {
    return acz;
  }
  
  final List<ko> kl()
  {
    return acA;
  }
  
  final ko km()
  {
    return acD;
  }
  
  final List<ko> kn()
  {
    return acG;
  }
  
  final ko ko()
  {
    return acP;
  }
  
  final ko kp()
  {
    return acT;
  }
  
  final ko kq()
  {
    return acU;
  }
  
  final ko kr()
  {
    return acV;
  }
  
  final List<ko> ks()
  {
    return acW;
  }
  
  final ko kt()
  {
    return adb;
  }
  
  final ko ku()
  {
    return adf;
  }
  
  public final ko kv()
  {
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kp localkp = CREATOR;
    kp.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */