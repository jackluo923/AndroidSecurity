package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.d.d;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class t
  extends ak<Date>
{
  public static final al a = new u();
  private final DateFormat b = new SimpleDateFormat("MMM d, yyyy");
  
  private void a(d paramd, Date paramDate)
  {
    if (paramDate == null) {}
    for (paramDate = null;; paramDate = b.format(paramDate)) {
      try
      {
        paramd.b(paramDate);
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  private Date b(com.google.a.d.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 50	com/google/a/d/a:f	()Lcom/google/a/d/c;
    //   6: getstatic 56	com/google/a/d/c:i	Lcom/google/a/d/c;
    //   9: if_acmpne +13 -> 22
    //   12: aload_1
    //   13: invokevirtual 59	com/google/a/d/a:j	()V
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 61	java/sql/Date
    //   25: dup
    //   26: aload_0
    //   27: getfield 29	com/google/a/b/a/t:b	Ljava/text/DateFormat;
    //   30: aload_1
    //   31: invokevirtual 65	com/google/a/d/a:h	()Ljava/lang/String;
    //   34: invokevirtual 69	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   37: invokevirtual 75	java/util/Date:getTime	()J
    //   40: invokespecial 78	java/sql/Date:<init>	(J)V
    //   43: astore_1
    //   44: goto -26 -> 18
    //   47: astore_1
    //   48: new 80	com/google/a/ae
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 83	com/google/a/ae:<init>	(Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	t
    //   0	62	1	parama	com.google.a.d.a
    // Exception table:
    //   from	to	target	type
    //   22	44	47	java/text/ParseException
    //   2	16	57	finally
    //   22	44	57	finally
    //   48	57	57	finally
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */