package com.google.kagegamesgson;

public enum FieldNamingPolicy
{
  private static final FieldNamingPolicy[] $VALUES;
  private final FieldNamingStrategy2 namingPolicy;
  
  static
  {
    int n = 3;
    int m = 2;
    int k = 1;
    int j = 0;
    FieldNamingPolicy localFieldNamingPolicy = new com/google/kagegamesgson/FieldNamingPolicy;
    Object localObject1 = "UPPER_CAMEL_CASE";
    Object localObject2 = new com/google/kagegamesgson/ModifyFirstLetterNamingPolicy;
    Object localObject3 = ModifyFirstLetterNamingPolicy.LetterModifier.UPPER;
    ((ModifyFirstLetterNamingPolicy)localObject2).<init>((ModifyFirstLetterNamingPolicy.LetterModifier)localObject3);
    localFieldNamingPolicy.<init>((String)localObject1, j, (FieldNamingStrategy2)localObject2);
    UPPER_CAMEL_CASE = localFieldNamingPolicy;
    localFieldNamingPolicy = new com/google/kagegamesgson/FieldNamingPolicy;
    localObject1 = "UPPER_CAMEL_CASE_WITH_SPACES";
    localObject2 = new com/google/kagegamesgson/UpperCamelCaseSeparatorNamingPolicy;
    localObject3 = " ";
    ((UpperCamelCaseSeparatorNamingPolicy)localObject2).<init>((String)localObject3);
    localFieldNamingPolicy.<init>((String)localObject1, k, (FieldNamingStrategy2)localObject2);
    UPPER_CAMEL_CASE_WITH_SPACES = localFieldNamingPolicy;
    localFieldNamingPolicy = new com/google/kagegamesgson/FieldNamingPolicy;
    localObject1 = "LOWER_CASE_WITH_UNDERSCORES";
    localObject2 = new com/google/kagegamesgson/LowerCamelCaseSeparatorNamingPolicy;
    localObject3 = "_";
    ((LowerCamelCaseSeparatorNamingPolicy)localObject2).<init>((String)localObject3);
    localFieldNamingPolicy.<init>((String)localObject1, m, (FieldNamingStrategy2)localObject2);
    LOWER_CASE_WITH_UNDERSCORES = localFieldNamingPolicy;
    localFieldNamingPolicy = new com/google/kagegamesgson/FieldNamingPolicy;
    localObject1 = "LOWER_CASE_WITH_DASHES";
    localObject2 = new com/google/kagegamesgson/LowerCamelCaseSeparatorNamingPolicy;
    localObject3 = "-";
    ((LowerCamelCaseSeparatorNamingPolicy)localObject2).<init>((String)localObject3);
    localFieldNamingPolicy.<init>((String)localObject1, n, (FieldNamingStrategy2)localObject2);
    LOWER_CASE_WITH_DASHES = localFieldNamingPolicy;
    int i = 4;
    FieldNamingPolicy[] arrayOfFieldNamingPolicy = new FieldNamingPolicy[i];
    localObject1 = UPPER_CAMEL_CASE;
    arrayOfFieldNamingPolicy[j] = localObject1;
    localObject1 = UPPER_CAMEL_CASE_WITH_SPACES;
    arrayOfFieldNamingPolicy[k] = localObject1;
    localObject1 = LOWER_CASE_WITH_UNDERSCORES;
    arrayOfFieldNamingPolicy[m] = localObject1;
    localObject1 = LOWER_CASE_WITH_DASHES;
    arrayOfFieldNamingPolicy[n] = localObject1;
    $VALUES = arrayOfFieldNamingPolicy;
  }
  
  private FieldNamingPolicy(FieldNamingStrategy2 paramFieldNamingStrategy2)
  {
    namingPolicy = paramFieldNamingStrategy2;
  }
  
  FieldNamingStrategy2 getFieldNamingPolicy()
  {
    FieldNamingStrategy2 localFieldNamingStrategy2 = namingPolicy;
    return localFieldNamingStrategy2;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.FieldNamingPolicy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */