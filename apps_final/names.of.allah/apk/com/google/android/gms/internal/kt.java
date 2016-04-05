package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.Person.AgeRange;
import com.google.android.gms.plus.model.people.Person.Cover;
import com.google.android.gms.plus.model.people.Person.Image;
import com.google.android.gms.plus.model.people.Person.Name;
import com.google.android.gms.plus.model.people.Person.Organizations;
import com.google.android.gms.plus.model.people.Person.PlacesLived;
import com.google.android.gms.plus.model.people.Person.Urls;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class kt
  extends hz
  implements SafeParcelable, Person
{
  public static final ku CREATOR = new ku();
  private static final HashMap<String, hz.a<?, ?>> aco;
  private String Ao;
  private String Lk;
  private final Set<Integer> acp;
  private List<kt.g> adA;
  private int adB;
  private int adC;
  private String adD;
  private List<kt.h> adE;
  private boolean adF;
  private String adn;
  private kt.a ado;
  private String adp;
  private String adq;
  private int adr;
  private kt.b ads;
  private String adt;
  private kt.c adu;
  private boolean adv;
  private kt.d adw;
  private String adx;
  private int ady;
  private List<kt.f> adz;
  private int mj;
  private String qV;
  private String xD;
  private final int xJ;
  
  static
  {
    HashMap localHashMap = new HashMap();
    aco = localHashMap;
    localHashMap.put("aboutMe", hz.a.j("aboutMe", 2));
    aco.put("ageRange", hz.a.a("ageRange", 3, kt.a.class));
    aco.put("birthday", hz.a.j("birthday", 4));
    aco.put("braggingRights", hz.a.j("braggingRights", 5));
    aco.put("circledByCount", hz.a.g("circledByCount", 6));
    aco.put("cover", hz.a.a("cover", 7, kt.b.class));
    aco.put("currentLocation", hz.a.j("currentLocation", 8));
    aco.put("displayName", hz.a.j("displayName", 9));
    aco.put("gender", hz.a.a("gender", 12, new hw().f("male", 0).f("female", 1).f("other", 2), false));
    aco.put("id", hz.a.j("id", 14));
    aco.put("image", hz.a.a("image", 15, kt.c.class));
    aco.put("isPlusUser", hz.a.i("isPlusUser", 16));
    aco.put("language", hz.a.j("language", 18));
    aco.put("name", hz.a.a("name", 19, kt.d.class));
    aco.put("nickname", hz.a.j("nickname", 20));
    aco.put("objectType", hz.a.a("objectType", 21, new hw().f("person", 0).f("page", 1), false));
    aco.put("organizations", hz.a.b("organizations", 22, kt.f.class));
    aco.put("placesLived", hz.a.b("placesLived", 23, kt.g.class));
    aco.put("plusOneCount", hz.a.g("plusOneCount", 24));
    aco.put("relationshipStatus", hz.a.a("relationshipStatus", 25, new hw().f("single", 0).f("in_a_relationship", 1).f("engaged", 2).f("married", 3).f("its_complicated", 4).f("open_relationship", 5).f("widowed", 6).f("in_domestic_partnership", 7).f("in_civil_union", 8), false));
    aco.put("tagline", hz.a.j("tagline", 26));
    aco.put("url", hz.a.j("url", 27));
    aco.put("urls", hz.a.b("urls", 28, kt.h.class));
    aco.put("verified", hz.a.i("verified", 29));
  }
  
  public kt()
  {
    xJ = 2;
    acp = new HashSet();
  }
  
  public kt(String paramString1, String paramString2, kt.c paramc, int paramInt, String paramString3)
  {
    xJ = 2;
    acp = new HashSet();
    Lk = paramString1;
    acp.add(Integer.valueOf(9));
    xD = paramString2;
    acp.add(Integer.valueOf(14));
    adu = paramc;
    acp.add(Integer.valueOf(15));
    ady = paramInt;
    acp.add(Integer.valueOf(21));
    qV = paramString3;
    acp.add(Integer.valueOf(27));
  }
  
  kt(Set<Integer> paramSet, int paramInt1, String paramString1, kt.a parama, String paramString2, String paramString3, int paramInt2, kt.b paramb, String paramString4, String paramString5, int paramInt3, String paramString6, kt.c paramc, boolean paramBoolean1, String paramString7, kt.d paramd, String paramString8, int paramInt4, List<kt.f> paramList, List<kt.g> paramList1, int paramInt5, int paramInt6, String paramString9, String paramString10, List<kt.h> paramList2, boolean paramBoolean2)
  {
    acp = paramSet;
    xJ = paramInt1;
    adn = paramString1;
    ado = parama;
    adp = paramString2;
    adq = paramString3;
    adr = paramInt2;
    ads = paramb;
    adt = paramString4;
    Lk = paramString5;
    mj = paramInt3;
    xD = paramString6;
    adu = paramc;
    adv = paramBoolean1;
    Ao = paramString7;
    adw = paramd;
    adx = paramString8;
    ady = paramInt4;
    adz = paramList;
    adA = paramList1;
    adB = paramInt5;
    adC = paramInt6;
    adD = paramString9;
    qV = paramString10;
    adE = paramList2;
    adF = paramBoolean2;
  }
  
  public static kt i(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    paramArrayOfByte = CREATOR.bG(localParcel);
    localParcel.recycle();
    return paramArrayOfByte;
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
    case 10: 
    case 11: 
    case 13: 
    case 17: 
    default: 
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.fI());
    case 2: 
      return adn;
    case 3: 
      return ado;
    case 4: 
      return adp;
    case 5: 
      return adq;
    case 6: 
      return Integer.valueOf(adr);
    case 7: 
      return ads;
    case 8: 
      return adt;
    case 9: 
      return Lk;
    case 12: 
      return Integer.valueOf(mj);
    case 14: 
      return xD;
    case 15: 
      return adu;
    case 16: 
      return Boolean.valueOf(adv);
    case 18: 
      return Ao;
    case 19: 
      return adw;
    case 20: 
      return adx;
    case 21: 
      return Integer.valueOf(ady);
    case 22: 
      return adz;
    case 23: 
      return adA;
    case 24: 
      return Integer.valueOf(adB);
    case 25: 
      return Integer.valueOf(adC);
    case 26: 
      return adD;
    case 27: 
      return qV;
    case 28: 
      return adE;
    }
    return Boolean.valueOf(adF);
  }
  
  public final int describeContents()
  {
    ku localku = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof kt)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (kt)paramObject;
    Iterator localIterator = aco.values().iterator();
    while (localIterator.hasNext())
    {
      hz.a locala = (hz.a)localIterator.next();
      if (a(locala))
      {
        if (((kt)paramObject).a(locala))
        {
          if (!b(locala).equals(((kt)paramObject).b(locala))) {
            return false;
          }
        }
        else {
          return false;
        }
      }
      else if (((kt)paramObject).a(locala)) {
        return false;
      }
    }
    return true;
  }
  
  public final HashMap<String, hz.a<?, ?>> fB()
  {
    return aco;
  }
  
  public final String getAboutMe()
  {
    return adn;
  }
  
  public final Person.AgeRange getAgeRange()
  {
    return ado;
  }
  
  public final String getBirthday()
  {
    return adp;
  }
  
  public final String getBraggingRights()
  {
    return adq;
  }
  
  public final int getCircledByCount()
  {
    return adr;
  }
  
  public final Person.Cover getCover()
  {
    return ads;
  }
  
  public final String getCurrentLocation()
  {
    return adt;
  }
  
  public final String getDisplayName()
  {
    return Lk;
  }
  
  public final int getGender()
  {
    return mj;
  }
  
  public final String getId()
  {
    return xD;
  }
  
  public final Person.Image getImage()
  {
    return adu;
  }
  
  public final String getLanguage()
  {
    return Ao;
  }
  
  public final Person.Name getName()
  {
    return adw;
  }
  
  public final String getNickname()
  {
    return adx;
  }
  
  public final int getObjectType()
  {
    return ady;
  }
  
  public final List<Person.Organizations> getOrganizations()
  {
    return (ArrayList)adz;
  }
  
  public final List<Person.PlacesLived> getPlacesLived()
  {
    return (ArrayList)adA;
  }
  
  public final int getPlusOneCount()
  {
    return adB;
  }
  
  public final int getRelationshipStatus()
  {
    return adC;
  }
  
  public final String getTagline()
  {
    return adD;
  }
  
  public final String getUrl()
  {
    return qV;
  }
  
  public final List<Person.Urls> getUrls()
  {
    return (ArrayList)adE;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasAboutMe()
  {
    return acp.contains(Integer.valueOf(2));
  }
  
  public final boolean hasAgeRange()
  {
    return acp.contains(Integer.valueOf(3));
  }
  
  public final boolean hasBirthday()
  {
    return acp.contains(Integer.valueOf(4));
  }
  
  public final boolean hasBraggingRights()
  {
    return acp.contains(Integer.valueOf(5));
  }
  
  public final boolean hasCircledByCount()
  {
    return acp.contains(Integer.valueOf(6));
  }
  
  public final boolean hasCover()
  {
    return acp.contains(Integer.valueOf(7));
  }
  
  public final boolean hasCurrentLocation()
  {
    return acp.contains(Integer.valueOf(8));
  }
  
  public final boolean hasDisplayName()
  {
    return acp.contains(Integer.valueOf(9));
  }
  
  public final boolean hasGender()
  {
    return acp.contains(Integer.valueOf(12));
  }
  
  public final boolean hasId()
  {
    return acp.contains(Integer.valueOf(14));
  }
  
  public final boolean hasImage()
  {
    return acp.contains(Integer.valueOf(15));
  }
  
  public final boolean hasIsPlusUser()
  {
    return acp.contains(Integer.valueOf(16));
  }
  
  public final boolean hasLanguage()
  {
    return acp.contains(Integer.valueOf(18));
  }
  
  public final boolean hasName()
  {
    return acp.contains(Integer.valueOf(19));
  }
  
  public final boolean hasNickname()
  {
    return acp.contains(Integer.valueOf(20));
  }
  
  public final boolean hasObjectType()
  {
    return acp.contains(Integer.valueOf(21));
  }
  
  public final boolean hasOrganizations()
  {
    return acp.contains(Integer.valueOf(22));
  }
  
  public final boolean hasPlacesLived()
  {
    return acp.contains(Integer.valueOf(23));
  }
  
  public final boolean hasPlusOneCount()
  {
    return acp.contains(Integer.valueOf(24));
  }
  
  public final boolean hasRelationshipStatus()
  {
    return acp.contains(Integer.valueOf(25));
  }
  
  public final boolean hasTagline()
  {
    return acp.contains(Integer.valueOf(26));
  }
  
  public final boolean hasUrl()
  {
    return acp.contains(Integer.valueOf(27));
  }
  
  public final boolean hasUrls()
  {
    return acp.contains(Integer.valueOf(28));
  }
  
  public final boolean hasVerified()
  {
    return acp.contains(Integer.valueOf(29));
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
  
  public final boolean isPlusUser()
  {
    return adv;
  }
  
  public final boolean isVerified()
  {
    return adF;
  }
  
  final kt.a kA()
  {
    return ado;
  }
  
  final kt.b kB()
  {
    return ads;
  }
  
  final kt.c kC()
  {
    return adu;
  }
  
  final kt.d kD()
  {
    return adw;
  }
  
  final List<kt.f> kE()
  {
    return adz;
  }
  
  final List<kt.g> kF()
  {
    return adA;
  }
  
  final List<kt.h> kG()
  {
    return adE;
  }
  
  public final kt kH()
  {
    return this;
  }
  
  final Set<Integer> kf()
  {
    return acp;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ku localku = CREATOR;
    ku.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */