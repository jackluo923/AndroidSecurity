package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.Person.AgeRange;
import com.google.android.gms.plus.model.people.Person.Cover;
import com.google.android.gms.plus.model.people.Person.Image;
import com.google.android.gms.plus.model.people.Person.Name;
import com.google.android.gms.plus.model.people.Person.Organizations;
import com.google.android.gms.plus.model.people.Person.PlacesLived;
import com.google.android.gms.plus.model.people.Person.Urls;
import java.util.ArrayList;

public final class le
  extends d
  implements Person
{
  public le(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final String getAboutMe()
  {
    return null;
  }
  
  public final Person.AgeRange getAgeRange()
  {
    return null;
  }
  
  public final String getBirthday()
  {
    return null;
  }
  
  public final String getBraggingRights()
  {
    return null;
  }
  
  public final int getCircledByCount()
  {
    return 0;
  }
  
  public final Person.Cover getCover()
  {
    return null;
  }
  
  public final String getCurrentLocation()
  {
    return null;
  }
  
  public final String getDisplayName()
  {
    return getString("displayName");
  }
  
  public final int getGender()
  {
    return 0;
  }
  
  public final String getId()
  {
    return getString("personId");
  }
  
  public final Person.Image getImage()
  {
    return new kt.c(getString("image"));
  }
  
  public final String getLanguage()
  {
    return null;
  }
  
  public final Person.Name getName()
  {
    return null;
  }
  
  public final String getNickname()
  {
    return null;
  }
  
  public final int getObjectType()
  {
    return kt.e.bA(getString("objectType"));
  }
  
  public final int getPlusOneCount()
  {
    return 0;
  }
  
  public final int getRelationshipStatus()
  {
    return 0;
  }
  
  public final String getTagline()
  {
    return null;
  }
  
  public final String getUrl()
  {
    return getString("url");
  }
  
  public final boolean hasAboutMe()
  {
    return false;
  }
  
  public final boolean hasAgeRange()
  {
    return false;
  }
  
  public final boolean hasBirthday()
  {
    return false;
  }
  
  public final boolean hasBraggingRights()
  {
    return false;
  }
  
  public final boolean hasCircledByCount()
  {
    return false;
  }
  
  public final boolean hasCover()
  {
    return false;
  }
  
  public final boolean hasCurrentLocation()
  {
    return false;
  }
  
  public final boolean hasDisplayName()
  {
    return true;
  }
  
  public final boolean hasGender()
  {
    return false;
  }
  
  public final boolean hasId()
  {
    return true;
  }
  
  public final boolean hasImage()
  {
    return true;
  }
  
  public final boolean hasIsPlusUser()
  {
    return false;
  }
  
  public final boolean hasLanguage()
  {
    return false;
  }
  
  public final boolean hasName()
  {
    return false;
  }
  
  public final boolean hasNickname()
  {
    return false;
  }
  
  public final boolean hasObjectType()
  {
    return true;
  }
  
  public final boolean hasOrganizations()
  {
    return false;
  }
  
  public final boolean hasPlacesLived()
  {
    return false;
  }
  
  public final boolean hasPlusOneCount()
  {
    return false;
  }
  
  public final boolean hasRelationshipStatus()
  {
    return false;
  }
  
  public final boolean hasTagline()
  {
    return false;
  }
  
  public final boolean hasUrl()
  {
    return true;
  }
  
  public final boolean hasUrls()
  {
    return false;
  }
  
  public final boolean hasVerified()
  {
    return false;
  }
  
  public final boolean isPlusUser()
  {
    return false;
  }
  
  public final boolean isVerified()
  {
    return false;
  }
  
  public final ArrayList<Person.Organizations> kU()
  {
    return null;
  }
  
  public final ArrayList<Person.PlacesLived> kV()
  {
    return null;
  }
  
  public final ArrayList<Person.Urls> kW()
  {
    return null;
  }
  
  public final Person kX()
  {
    return new kt(getDisplayName(), getId(), (kt.c)getImage(), getObjectType(), getUrl());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.le
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */