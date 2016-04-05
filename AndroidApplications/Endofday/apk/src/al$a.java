import java.io.IOException;

final class al$a
  implements ap
{
  private final Appendable a;
  private final ad b;
  private final boolean c;
  
  al$a(Appendable paramAppendable, ad paramad, boolean paramBoolean)
  {
    a = paramAppendable;
    b = paramad;
    c = paramBoolean;
  }
  
  public final void a()
    throws IOException
  {
    Appendable localAppendable = a;
    String str = "null";
    localAppendable.append(str);
  }
  
  public final void a(au paramau)
    throws IOException
  {
    Appendable localAppendable = a;
    ad localad = b;
    paramau.a(localAppendable, localad);
  }
  
  public final void a(au paramau, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      localAppendable = a;
      char c1 = ',';
      localAppendable.append(c1);
    }
    Appendable localAppendable = a;
    ad localad = b;
    paramau.a(localAppendable, localad);
  }
  
  public final void a(String paramString, au paramau, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      localAppendable = a;
      c1 = ',';
      localAppendable.append(c1);
    }
    Appendable localAppendable = a;
    char c1 = '"';
    localAppendable.append(c1);
    localAppendable = a;
    localAppendable.append(paramString);
    localAppendable = a;
    Object localObject = "\":";
    localAppendable.append((CharSequence)localObject);
    localAppendable = a;
    localObject = b;
    paramau.a(localAppendable, (ad)localObject);
  }
  
  public final void a(String paramString, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      localAppendable = a;
      c1 = ',';
      localAppendable.append(c1);
    }
    Appendable localAppendable = a;
    char c1 = '"';
    localAppendable.append(c1);
    localAppendable = a;
    localAppendable.append(paramString);
    localAppendable = a;
    String str = "\":";
    localAppendable.append(str);
  }
  
  public final void a(boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      Appendable localAppendable = a;
      char c1 = ',';
      localAppendable.append(c1);
    }
  }
  
  public final void b()
    throws IOException
  {
    Appendable localAppendable = a;
    char c1 = '[';
    localAppendable.append(c1);
  }
  
  public final void b(String paramString, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      localAppendable = a;
      c1 = ',';
      localAppendable.append(c1);
    }
    Appendable localAppendable = a;
    char c1 = '"';
    localAppendable.append(c1);
    localAppendable = a;
    localAppendable.append(paramString);
    localAppendable = a;
    String str = "\":";
    localAppendable.append(str);
  }
  
  public final void b(boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      Appendable localAppendable = a;
      char c1 = ',';
      localAppendable.append(c1);
    }
  }
  
  public final void c()
    throws IOException
  {
    Appendable localAppendable = a;
    char c1 = ']';
    localAppendable.append(c1);
  }
  
  public final void c(String paramString, boolean paramBoolean)
    throws IOException
  {
    boolean bool = c;
    if (bool) {
      b(paramString, paramBoolean);
    }
  }
  
  public final void c(boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean)
    {
      Appendable localAppendable = a;
      char c1 = ',';
      localAppendable.append(c1);
    }
  }
  
  public final void d()
    throws IOException
  {
    Appendable localAppendable = a;
    char c1 = '{';
    localAppendable.append(c1);
  }
  
  public final void e()
    throws IOException
  {
    Appendable localAppendable = a;
    char c1 = '}';
    localAppendable.append(c1);
  }
}

/* Location:
 * Qualified Name:     al.a
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */