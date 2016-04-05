package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

final class FieldParser
{
  private static final Object[][] FOUR_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
  private static final Object[][] TWO_DIGIT_DATA_LENGTH;
  private static final Object VARIABLE_LENGTH = new Object();
  
  static
  {
    Object localObject5 = { "00", Integer.valueOf(18) };
    Object localObject6 = { "01", Integer.valueOf(14) };
    Object localObject7 = { "02", Integer.valueOf(14) };
    Object localObject8 = { "10", VARIABLE_LENGTH, Integer.valueOf(20) };
    Object localObject9 = { "12", Integer.valueOf(6) };
    Object localObject10 = { "13", Integer.valueOf(6) };
    Object localObject11 = { "17", Integer.valueOf(6) };
    Object localObject1 = VARIABLE_LENGTH;
    Object[] arrayOfObject1 = { "22", VARIABLE_LENGTH, Integer.valueOf(29) };
    Object localObject2 = VARIABLE_LENGTH;
    Object[] arrayOfObject2 = { "37", VARIABLE_LENGTH, Integer.valueOf(8) };
    Object[] arrayOfObject3 = { "90", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject4 = { "91", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject5 = { "92", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject6 = { "93", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject7 = { "94", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject8 = { "95", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object localObject3 = VARIABLE_LENGTH;
    Object localObject4 = VARIABLE_LENGTH;
    Object[] arrayOfObject9 = { "98", VARIABLE_LENGTH, Integer.valueOf(30) };
    Object[] arrayOfObject10 = { "99", VARIABLE_LENGTH, Integer.valueOf(30) };
    TWO_DIGIT_DATA_LENGTH = new Object[][] { localObject5, localObject6, localObject7, localObject8, { "11", Integer.valueOf(6) }, localObject9, localObject10, { "15", Integer.valueOf(6) }, localObject11, { "20", Integer.valueOf(2) }, { "21", localObject1, Integer.valueOf(20) }, arrayOfObject1, { "30", localObject2, Integer.valueOf(8) }, arrayOfObject2, arrayOfObject3, arrayOfObject4, arrayOfObject5, arrayOfObject6, arrayOfObject7, arrayOfObject8, { "96", localObject3, Integer.valueOf(30) }, { "97", localObject4, Integer.valueOf(30) }, arrayOfObject9, arrayOfObject10 };
    localObject1 = VARIABLE_LENGTH;
    localObject2 = VARIABLE_LENGTH;
    localObject3 = VARIABLE_LENGTH;
    localObject4 = VARIABLE_LENGTH;
    arrayOfObject1 = new Object[] { "251", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject5 = VARIABLE_LENGTH;
    localObject6 = VARIABLE_LENGTH;
    localObject7 = VARIABLE_LENGTH;
    localObject8 = VARIABLE_LENGTH;
    localObject9 = VARIABLE_LENGTH;
    arrayOfObject2 = new Object[] { "420", VARIABLE_LENGTH, Integer.valueOf(20) };
    localObject10 = VARIABLE_LENGTH;
    localObject11 = VARIABLE_LENGTH;
    arrayOfObject3 = new Object[] { "426", Integer.valueOf(3) };
    THREE_DIGIT_DATA_LENGTH = new Object[][] { { "240", localObject1, Integer.valueOf(30) }, { "241", localObject2, Integer.valueOf(30) }, { "242", localObject3, Integer.valueOf(6) }, { "250", localObject4, Integer.valueOf(30) }, arrayOfObject1, { "253", localObject5, Integer.valueOf(17) }, { "254", localObject6, Integer.valueOf(20) }, { "400", localObject7, Integer.valueOf(30) }, { "401", localObject8, Integer.valueOf(30) }, { "402", Integer.valueOf(17) }, { "403", localObject9, Integer.valueOf(30) }, { "410", Integer.valueOf(13) }, { "411", Integer.valueOf(13) }, { "412", Integer.valueOf(13) }, { "413", Integer.valueOf(13) }, { "414", Integer.valueOf(13) }, arrayOfObject2, { "421", localObject10, Integer.valueOf(15) }, { "422", Integer.valueOf(3) }, { "423", localObject11, Integer.valueOf(15) }, { "424", Integer.valueOf(3) }, { "425", Integer.valueOf(3) }, arrayOfObject3 };
    localObject4 = new Object[] { "310", Integer.valueOf(6) };
    localObject5 = new Object[] { "312", Integer.valueOf(6) };
    localObject6 = new Object[] { "316", Integer.valueOf(6) };
    localObject7 = new Object[] { "321", Integer.valueOf(6) };
    localObject8 = new Object[] { "322", Integer.valueOf(6) };
    localObject9 = new Object[] { "326", Integer.valueOf(6) };
    localObject10 = new Object[] { "328", Integer.valueOf(6) };
    localObject11 = new Object[] { "329", Integer.valueOf(6) };
    arrayOfObject1 = new Object[] { "332", Integer.valueOf(6) };
    arrayOfObject2 = new Object[] { "333", Integer.valueOf(6) };
    arrayOfObject3 = new Object[] { "334", Integer.valueOf(6) };
    arrayOfObject4 = new Object[] { "336", Integer.valueOf(6) };
    arrayOfObject5 = new Object[] { "345", Integer.valueOf(6) };
    arrayOfObject6 = new Object[] { "346", Integer.valueOf(6) };
    arrayOfObject7 = new Object[] { "347", Integer.valueOf(6) };
    arrayOfObject8 = new Object[] { "349", Integer.valueOf(6) };
    arrayOfObject9 = new Object[] { "350", Integer.valueOf(6) };
    arrayOfObject10 = new Object[] { "352", Integer.valueOf(6) };
    Object[] arrayOfObject11 = { "360", Integer.valueOf(6) };
    Object[] arrayOfObject12 = { "365", Integer.valueOf(6) };
    Object[] arrayOfObject13 = { "367", Integer.valueOf(6) };
    Object[] arrayOfObject14 = { "368", Integer.valueOf(6) };
    Object[] arrayOfObject15 = { "369", Integer.valueOf(6) };
    Object[] arrayOfObject16 = { "390", VARIABLE_LENGTH, Integer.valueOf(15) };
    localObject1 = VARIABLE_LENGTH;
    Object[] arrayOfObject17 = { "392", VARIABLE_LENGTH, Integer.valueOf(15) };
    localObject2 = VARIABLE_LENGTH;
    localObject3 = VARIABLE_LENGTH;
    THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = new Object[][] { localObject4, { "311", Integer.valueOf(6) }, localObject5, { "313", Integer.valueOf(6) }, { "314", Integer.valueOf(6) }, { "315", Integer.valueOf(6) }, localObject6, { "320", Integer.valueOf(6) }, localObject7, localObject8, { "323", Integer.valueOf(6) }, { "324", Integer.valueOf(6) }, { "325", Integer.valueOf(6) }, localObject9, { "327", Integer.valueOf(6) }, localObject10, localObject11, { "330", Integer.valueOf(6) }, { "331", Integer.valueOf(6) }, arrayOfObject1, arrayOfObject2, arrayOfObject3, { "335", Integer.valueOf(6) }, arrayOfObject4, { "340", Integer.valueOf(6) }, { "341", Integer.valueOf(6) }, { "342", Integer.valueOf(6) }, { "343", Integer.valueOf(6) }, { "344", Integer.valueOf(6) }, arrayOfObject5, arrayOfObject6, arrayOfObject7, { "348", Integer.valueOf(6) }, arrayOfObject8, arrayOfObject9, { "351", Integer.valueOf(6) }, arrayOfObject10, { "353", Integer.valueOf(6) }, { "354", Integer.valueOf(6) }, { "355", Integer.valueOf(6) }, { "356", Integer.valueOf(6) }, { "357", Integer.valueOf(6) }, arrayOfObject11, { "361", Integer.valueOf(6) }, { "362", Integer.valueOf(6) }, { "363", Integer.valueOf(6) }, { "364", Integer.valueOf(6) }, arrayOfObject12, { "366", Integer.valueOf(6) }, arrayOfObject13, arrayOfObject14, arrayOfObject15, arrayOfObject16, { "391", localObject1, Integer.valueOf(18) }, arrayOfObject17, { "393", localObject2, Integer.valueOf(18) }, { "703", localObject3, Integer.valueOf(30) } };
    localObject3 = new Object[] { "7001", Integer.valueOf(13) };
    localObject1 = VARIABLE_LENGTH;
    localObject4 = new Object[] { "7003", Integer.valueOf(10) };
    localObject5 = new Object[] { "8001", Integer.valueOf(14) };
    localObject6 = new Object[] { "8002", VARIABLE_LENGTH, Integer.valueOf(20) };
    localObject7 = new Object[] { "8003", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject2 = VARIABLE_LENGTH;
    localObject8 = new Object[] { "8005", Integer.valueOf(6) };
    localObject9 = new Object[] { "8007", VARIABLE_LENGTH, Integer.valueOf(30) };
    localObject10 = new Object[] { "8008", VARIABLE_LENGTH, Integer.valueOf(12) };
    localObject11 = new Object[] { "8018", Integer.valueOf(18) };
    arrayOfObject1 = new Object[] { "8020", VARIABLE_LENGTH, Integer.valueOf(25) };
    arrayOfObject2 = new Object[] { "8100", Integer.valueOf(6) };
    arrayOfObject3 = new Object[] { "8101", Integer.valueOf(10) };
    arrayOfObject4 = new Object[] { "8102", Integer.valueOf(2) };
    arrayOfObject5 = new Object[] { "8110", VARIABLE_LENGTH, Integer.valueOf(30) };
    FOUR_DIGIT_DATA_LENGTH = new Object[][] { localObject3, { "7002", localObject1, Integer.valueOf(30) }, localObject4, localObject5, localObject6, localObject7, { "8004", localObject2, Integer.valueOf(30) }, localObject8, { "8006", Integer.valueOf(18) }, localObject9, localObject10, localObject11, arrayOfObject1, arrayOfObject2, arrayOfObject3, arrayOfObject4, arrayOfObject5 };
  }
  
  static String parseFieldsInGeneralPurpose(String paramString)
    throws NotFoundException
  {
    if (paramString.length() == 0) {
      return null;
    }
    if (paramString.length() < 2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str = paramString.substring(0, 2);
    Object[][] arrayOfObject = TWO_DIGIT_DATA_LENGTH;
    int j = arrayOfObject.length;
    int i = 0;
    Object[] arrayOfObject1;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(2, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(2, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    if (paramString.length() < 3) {
      throw NotFoundException.getNotFoundInstance();
    }
    str = paramString.substring(0, 3);
    arrayOfObject = THREE_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(3, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(3, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    arrayOfObject = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    if (paramString.length() < 4) {
      throw NotFoundException.getNotFoundInstance();
    }
    str = paramString.substring(0, 4);
    arrayOfObject = FOUR_DIGIT_DATA_LENGTH;
    j = arrayOfObject.length;
    i = 0;
    while (i < j)
    {
      arrayOfObject1 = arrayOfObject[i];
      if (arrayOfObject1[0].equals(str))
      {
        if (arrayOfObject1[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject1[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject1[1]).intValue(), paramString);
      }
      i += 1;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static String processFixedAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    if (paramString.length() < paramInt1) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str2 = paramString.substring(paramInt1, paramInt1 + paramInt2);
    paramString = paramString.substring(paramInt1 + paramInt2);
    str1 = '(' + str1 + ')' + str2;
    paramString = parseFieldsInGeneralPurpose(paramString);
    if (paramString == null) {
      return str1;
    }
    return str1 + paramString;
  }
  
  private static String processVariableAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {}
    for (paramInt2 = paramString.length();; paramInt2 = paramInt1 + paramInt2)
    {
      String str2 = paramString.substring(paramInt1, paramInt2);
      paramString = paramString.substring(paramInt2);
      str1 = '(' + str1 + ')' + str2;
      paramString = parseFieldsInGeneralPurpose(paramString);
      if (paramString != null) {
        break;
      }
      return str1;
    }
    return str1 + paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.FieldParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */