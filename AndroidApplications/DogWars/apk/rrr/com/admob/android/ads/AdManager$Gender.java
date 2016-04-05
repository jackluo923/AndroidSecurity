package com.admob.android.ads;

public enum AdManager$Gender
{
  private static final Gender[] $VALUES;
  
  static
  {
    int k = 1;
    int j = 0;
    Gender localGender = new com/admob/android/ads/AdManager$Gender;
    Object localObject = "MALE";
    localGender.<init>((String)localObject, j);
    MALE = localGender;
    localGender = new com/admob/android/ads/AdManager$Gender;
    localObject = "FEMALE";
    localGender.<init>((String)localObject, k);
    FEMALE = localGender;
    int i = 2;
    Gender[] arrayOfGender = new Gender[i];
    localObject = MALE;
    arrayOfGender[j] = localObject;
    localObject = FEMALE;
    arrayOfGender[k] = localObject;
    $VALUES = arrayOfGender;
  }
  
  private AdManager$Gender() {}
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdManager.Gender
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */