package com.google.kagegamesgson;

public enum ModifyFirstLetterNamingPolicy$LetterModifier
{
  private static final LetterModifier[] $VALUES;
  
  static
  {
    int k = 1;
    int j = 0;
    LetterModifier localLetterModifier = new com/google/kagegamesgson/ModifyFirstLetterNamingPolicy$LetterModifier;
    Object localObject = "UPPER";
    localLetterModifier.<init>((String)localObject, j);
    UPPER = localLetterModifier;
    localLetterModifier = new com/google/kagegamesgson/ModifyFirstLetterNamingPolicy$LetterModifier;
    localObject = "LOWER";
    localLetterModifier.<init>((String)localObject, k);
    LOWER = localLetterModifier;
    int i = 2;
    LetterModifier[] arrayOfLetterModifier = new LetterModifier[i];
    localObject = UPPER;
    arrayOfLetterModifier[j] = localObject;
    localObject = LOWER;
    arrayOfLetterModifier[k] = localObject;
    $VALUES = arrayOfLetterModifier;
  }
  
  private ModifyFirstLetterNamingPolicy$LetterModifier() {}
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ModifyFirstLetterNamingPolicy.LetterModifier
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */