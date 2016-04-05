package com.google.ads;

public enum AdRequest$Gender
{
  private static final Gender[] b;
  private String a;
  
  static
  {
    int k = 1;
    int j = 0;
    Gender localGender = new com/google/ads/AdRequest$Gender;
    Object localObject = "MALE";
    String str = "m";
    localGender.<init>((String)localObject, j, str);
    MALE = localGender;
    localGender = new com/google/ads/AdRequest$Gender;
    localObject = "FEMALE";
    str = "f";
    localGender.<init>((String)localObject, k, str);
    FEMALE = localGender;
    int i = 2;
    Gender[] arrayOfGender = new Gender[i];
    localObject = MALE;
    arrayOfGender[j] = localObject;
    localObject = FEMALE;
    arrayOfGender[k] = localObject;
    b = arrayOfGender;
  }
  
  private AdRequest$Gender(String paramString)
  {
    a = paramString;
  }
  
  public final String toString()
  {
    String str = a;
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdRequest.Gender
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */