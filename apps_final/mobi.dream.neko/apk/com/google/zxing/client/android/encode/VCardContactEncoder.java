package com.google.zxing.client.android.encode;

import android.telephony.PhoneNumberUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class VCardContactEncoder
  extends ContactEncoder
{
  private static final Pattern NEWLINE = Pattern.compile("\\n");
  private static final Pattern RESERVED_VCARD_CHARS = Pattern.compile("([\\\\,;])");
  private static final char TERMINATOR = '\n';
  private static final Formatter VCARD_FIELD_FORMATTER = new Formatter()
  {
    public String format(String paramAnonymousString)
    {
      return VCardContactEncoder.NEWLINE.matcher(VCardContactEncoder.RESERVED_VCARD_CHARS.matcher(paramAnonymousString).replaceAll("\\\\$1")).replaceAll("");
    }
  };
  
  private static void append(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString1, String paramString2)
  {
    doAppend(paramStringBuilder1, paramStringBuilder2, paramString1, paramString2, VCARD_FIELD_FORMATTER, '\n');
  }
  
  private static void appendUpToUnique(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString, Iterable<String> paramIterable, int paramInt, Formatter paramFormatter)
  {
    doAppendUpToUnique(paramStringBuilder1, paramStringBuilder2, paramString, paramIterable, paramInt, paramFormatter, VCARD_FIELD_FORMATTER, '\n');
  }
  
  public String[] encode(Iterable<String> paramIterable1, String paramString1, Iterable<String> paramIterable2, Iterable<String> paramIterable3, Iterable<String> paramIterable4, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(100);
    StringBuilder localStringBuilder2 = new StringBuilder(100);
    localStringBuilder1.append("BEGIN:VCARD").append('\n');
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "N", paramIterable1, 1, null);
    append(localStringBuilder1, localStringBuilder2, "ORG", paramString1);
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "ADR", paramIterable2, 1, null);
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "TEL", paramIterable3, Integer.MAX_VALUE, new Formatter()
    {
      public String format(String paramAnonymousString)
      {
        return PhoneNumberUtils.formatNumber(paramAnonymousString);
      }
    });
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "EMAIL", paramIterable4, Integer.MAX_VALUE, null);
    append(localStringBuilder1, localStringBuilder2, "URL", paramString2);
    append(localStringBuilder1, localStringBuilder2, "NOTE", paramString3);
    localStringBuilder1.append("END:VCARD").append('\n');
    return new String[] { localStringBuilder1.toString(), localStringBuilder2.toString() };
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.VCardContactEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */