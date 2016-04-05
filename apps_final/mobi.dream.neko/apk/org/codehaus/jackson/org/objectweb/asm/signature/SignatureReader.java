package org.codehaus.jackson.org.objectweb.asm.signature;

public class SignatureReader
{
  private final String a;
  
  public SignatureReader(String paramString)
  {
    a = paramString;
  }
  
  private static int a(String paramString, int paramInt, SignatureVisitor paramSignatureVisitor)
  {
    int i = paramInt + 1;
    char c = paramString.charAt(paramInt);
    int j;
    int m;
    int k;
    switch (c)
    {
    case 'E': 
    case 'G': 
    case 'H': 
    case 'K': 
    case 'L': 
    case 'M': 
    case 'N': 
    case 'O': 
    case 'P': 
    case 'Q': 
    case 'R': 
    case 'U': 
    case 'W': 
    case 'X': 
    case 'Y': 
    default: 
      j = 0;
      m = i;
      k = 0;
    }
    for (;;)
    {
      paramInt = i + 1;
      i = paramString.charAt(i);
      switch (i)
      {
      default: 
        i = paramInt;
        continue;
        paramSignatureVisitor.visitBaseType(c);
        return i;
        return a(paramString, i, paramSignatureVisitor.visitArrayType());
        paramInt = paramString.indexOf(';', i);
        paramSignatureVisitor.visitTypeVariable(paramString.substring(i, paramInt));
        return paramInt + 1;
      case 46: 
      case 59: 
        if (j == 0)
        {
          str = paramString.substring(m, paramInt - 1);
          if (k == 0) {
            break label291;
          }
          paramSignatureVisitor.visitInnerClassType(str);
        }
        while (i == 59)
        {
          paramSignatureVisitor.visitEnd();
          return paramInt;
          label291:
          paramSignatureVisitor.visitClassType(str);
        }
        k = 1;
        j = 0;
        m = paramInt;
        i = paramInt;
      }
    }
    String str = paramString.substring(m, paramInt - 1);
    if (k != 0) {
      paramSignatureVisitor.visitInnerClassType(str);
    }
    for (;;)
    {
      c = paramString.charAt(paramInt);
      switch (c)
      {
      default: 
        paramInt = a(paramString, paramInt, paramSignatureVisitor.visitTypeArgument('='));
        continue;
        paramSignatureVisitor.visitClassType(str);
        break;
      case '>': 
        j = 1;
        i = paramInt;
        break;
      case '*': 
        paramInt += 1;
        paramSignatureVisitor.visitTypeArgument();
        break;
      case '+': 
      case '-': 
        paramInt = a(paramString, paramInt + 1, paramSignatureVisitor.visitTypeArgument(c));
      }
    }
  }
  
  public void accept(SignatureVisitor paramSignatureVisitor)
  {
    int j = 0;
    String str = a;
    int k = str.length();
    int i;
    if (str.charAt(0) == '<')
    {
      i = 2;
      j = str.indexOf(':', i);
      paramSignatureVisitor.visitFormalTypeParameter(str.substring(i - 1, j));
      i = j + 1;
      j = str.charAt(i);
      if ((j != 76) && (j != 91) && (j != 84)) {
        break label253;
      }
      i = a(str, i, paramSignatureVisitor.visitClassBound());
    }
    label253:
    for (;;)
    {
      j = i + 1;
      int m = str.charAt(i);
      if (m == 58)
      {
        i = a(str, j, paramSignatureVisitor.visitInterfaceBound());
      }
      else
      {
        i = j;
        if (m != 62) {
          break;
        }
        if (str.charAt(j) == '(')
        {
          for (i = j + 1; str.charAt(i) != ')'; i = a(str, i, paramSignatureVisitor.visitParameterType())) {}
          for (i = a(str, i + 1, paramSignatureVisitor.visitReturnType()); i < k; i = a(str, i + 1, paramSignatureVisitor.visitExceptionType())) {}
        }
        for (i = a(str, j, paramSignatureVisitor.visitSuperclass()); i < k; i = a(str, i, paramSignatureVisitor.visitInterface())) {}
        return;
      }
    }
  }
  
  public void acceptType(SignatureVisitor paramSignatureVisitor)
  {
    a(a, 0, paramSignatureVisitor);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.signature.SignatureReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */