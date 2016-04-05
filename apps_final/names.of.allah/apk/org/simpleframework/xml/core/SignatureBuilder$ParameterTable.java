package org.simpleframework.xml.core;

import java.util.ArrayList;

class SignatureBuilder$ParameterTable
  extends ArrayList<SignatureBuilder.ParameterList>
{
  private int height()
  {
    int i = 0;
    if (width() > 0) {
      i = get(0).size();
    }
    return i;
  }
  
  private int width()
  {
    return size();
  }
  
  public Parameter get(int paramInt1, int paramInt2)
  {
    return (Parameter)get(paramInt1).get(paramInt2);
  }
  
  public SignatureBuilder.ParameterList get(int paramInt)
  {
    int i = size();
    while (i <= paramInt)
    {
      add(new SignatureBuilder.ParameterList());
      i += 1;
    }
    return (SignatureBuilder.ParameterList)super.get(paramInt);
  }
  
  public void insert(Parameter paramParameter, int paramInt)
  {
    SignatureBuilder.ParameterList localParameterList = get(paramInt);
    if (localParameterList != null) {
      localParameterList.add(paramParameter);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SignatureBuilder.ParameterTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */